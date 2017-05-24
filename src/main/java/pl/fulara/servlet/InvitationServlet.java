package pl.fulara.servlet;

import freemarker.template.TemplateException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import pl.fulara.model.*;
import pl.fulara.servlet.utils.DataSourceManager;
import pl.fulara.servlet.utils.ServletUtils;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "invitation", urlPatterns = {"*.inv"})
public class InvitationServlet extends HttpServlet {

    private JdbcTemplate jdbcTemplate;
    private String ftlTemplateDir;
    private String templateName = "invitation.ftl";


    @Override
    public void init() {
        ServletContext context = getServletContext();
        DataSourceManager.init(getServletContext());
        jdbcTemplate = new JdbcTemplate(DataSourceManager.getDataSource());
        ftlTemplateDir = context.getInitParameter("ftlTemplateDir");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            Invitation invitation = getInvitation(getKey(request));
            String page = getPage(invitation);
            response.setCharacterEncoding("utf-8");
            response.getWriter().append(page).close();
        } catch (EmptyResultDataAccessException e) {
            try {
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }

    private String getKey(HttpServletRequest request) {
        String url = request.getRequestURL().toString();
        int i = url.lastIndexOf('/');
        url = url.substring(i+1, url.length() - 4);
        return url;
    }

    private Invitation getInvitation(String key){
        return jdbcTemplate.queryForObject(Invitation.SINGLE_QUERY, new Object[]{key}, new InvitationRowMapper());
    }

    private String getPage(Ftlable data) throws IOException, TemplateException {
        return ServletUtils.runFreemaker(ftlTemplateDir, templateName, data.toFtl());
    }

}