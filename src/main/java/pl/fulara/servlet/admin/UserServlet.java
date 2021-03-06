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
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "admin", urlPatterns = {"/admin.html"})
public class UserServlet extends HttpServlet {

    @SuppressWarnings("FieldCanBeLocal")
    private JdbcTemplate jdbcTemplate;
    private String ftlTemplateDir;
    @SuppressWarnings("FieldCanBeLocal")
    private final String templateName = "admin.ftl";


    @Override
    public void init() {
        ServletContext context = getServletContext();
        DataSourceManager.init(getServletContext());
        jdbcTemplate = new JdbcTemplate(DataSourceManager.getDataSource());
        ftlTemplateDir = context.getInitParameter("ftlTemplateDir") + "admin" + File.separator;
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        try {
            if (LoginServlet.requireLogged(request, response)) {
                return;
            }

            String login = (String) session.getAttribute(ServletUtils.LOGIN_PARAM);
            Gifts gifts = new Gifts(getGifts());
            Invitations invitations = new Invitations(getInvitations());
            String page = getPage(new AdminPage(login, gifts, invitations));

            response.setCharacterEncoding("utf-8");
            response.getWriter().append(page).close();
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }

    private List<Gift> getGifts() {
        return jdbcTemplate.query(Gift.LIST_QUERY, new GiftRowMapper());
    }

    private List<Invitation> getInvitations() {
        return jdbcTemplate.query(Invitation.LIST_QUERY, new InvitationRowMapper());
    }

    private String getPage(Ftlable data) throws IOException, TemplateException {
        return ServletUtils.runFreemaker(ftlTemplateDir, templateName, data.toFtl());
    }

    class AdminPage extends Ftlable {
        String login;
        Gifts gifts;
        Invitations invitations;

        AdminPage(String login, Gifts gifts, Invitations invitations) {
            this.login = login;
            this.gifts = gifts;
            this.invitations = invitations;
        }

        public String getLogin() {
            return login;
        }

        public Gifts getGifts() {
            return gifts;
        }

        public Invitations getInvitations() {
            return invitations;
        }
    }
}