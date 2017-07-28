package pl.fulara.servlet;

import freemarker.template.TemplateException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import pl.fulara.model.User;
import pl.fulara.model.UserRowMapper;
import pl.fulara.servlet.utils.DataSourceManager;
import pl.fulara.servlet.utils.ServletUtils;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "login", urlPatterns = {"/login.html", "/logOut.html"})
public class LoginServlet extends HttpServlet {

    private JdbcTemplate jdbcTemplate;
    private String ftlTemplateDir;
    @SuppressWarnings("FieldCanBeLocal")
    private final String templateName = "login.ftl";


    @Override
    public void init() {
        ServletContext context = getServletContext();
        DataSourceManager.init(getServletContext());
        jdbcTemplate = new JdbcTemplate(DataSourceManager.getDataSource());
        ftlTemplateDir = context.getInitParameter("ftlTemplateDir") + "admin"+ File.separator;
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        if (request.getRequestURL().toString().contains("logOut") && session != null) {
            session.invalidate();
            Cookie c = new Cookie("JSESSIONID", "");
            c.setMaxAge(-1);
            try {
                response.addCookie(c);
                response.sendRedirect("./");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return;
        }

        try {
            if (session != null) {
                response.sendRedirect("admin.html");
                return;
            }
            String page = getLoginPage();
            response.setCharacterEncoding("utf-8");
            response.getWriter().append(page).close();
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Map<String, String[]> paramMap = request.getParameterMap();
        if (!ServletUtils.checkFields(paramMap)) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }

        try {
            User user = getUser(paramMap);
            HttpSession session = request.getSession(true);
            session.setAttribute(ServletUtils.LOGIN_PARAM, user.getLogin());
            response.addCookie(new Cookie("JSESSIONID", session.getId()));
            response.sendRedirect("admin.html");
        } catch (EmptyResultDataAccessException e) {
            try {
                String page = getLoginPage("Niepoprawne dane logowania");
                response.setCharacterEncoding("utf-8");
                response.getWriter().append(page).close();
            } catch (TemplateException e1) {
                e1.printStackTrace();
            }

        }
    }

    public static boolean requireLogged(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("login.html");
            return true;
        }
        return false;
    }

    public static boolean isLoggedIn(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false);
        return session != null;
    }

    private User getUser(Map<String, String[]> paramMap) {
        String login = paramMap.get(ServletUtils.LOGIN_PARAM)[0];
        String password = paramMap.get(ServletUtils.PASSWORD_PARAM)[0];
        return jdbcTemplate.queryForObject(User.LIST_USER_QUERY, new Object[]{login, password}, new UserRowMapper());
    }

    private String getLoginPage() throws IOException, TemplateException {
        return getLoginPage(null);
    }

    private String getLoginPage(String message) throws IOException, TemplateException {
        Map<String, Object> data = new HashMap<>();
        if (message != null && !message.isEmpty())
            data.put("message", message);
        return ServletUtils.runFreemaker(ftlTemplateDir, templateName, data);
    }
}
