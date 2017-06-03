package pl.fulara.servlet.admin;

import freemarker.template.TemplateException;
import org.springframework.jdbc.core.JdbcTemplate;
import pl.fulara.model.*;
import pl.fulara.servlet.LoginServlet;
import pl.fulara.servlet.utils.DataSourceManager;
import pl.fulara.servlet.utils.ServletUtils;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "manageInvitations", urlPatterns = {"/manage-invitations.html"})
public class InvitationsServlet extends HttpServlet {

    private JdbcTemplate jdbcTemplate;
    private String ftlTemplateDir;
    private String templateName = "fragment\\invitations.ftl";

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
            if (LoginServlet.requireLogged(request, response)) {
                return;
            }
            makeAction(request.getParameterMap());
            String page = getPage(new Invitations(getInvitations()));
            response.setCharacterEncoding("utf-8");
            response.getWriter().append(page).close();
        } catch (TemplateException | IOException e) {
            e.printStackTrace();
        }
    }

    private void makeAction(Map<String, String[]> map) {
        try {
            String action = ServletUtils.getAction(map);
            if (action.equals("add")) {
                String
                jdbcTemplate.update(Gift.CHANGE_RESERVARION, id);
            } else if (action.equals("delete")) {
                int id = ServletUtils.getId(map);
                jdbcTemplate.update(Gift.DELETE_QUERY, id);
            }
        } catch (NullPointerException ignored) {
        }
    }

    private List<Invitation> getInvitations() {
        return jdbcTemplate.query(Invitation.LIST_QUERY, new InvitationRowMapper());
    }

    private String getPage(Ftlable data) throws IOException, TemplateException {
        return ServletUtils.runFreemaker(ftlTemplateDir, templateName, data.toFtl());
    }


}