package pl.fulara.servlet;

import freemarker.template.TemplateException;
import pl.fulara.model.Ftlable;
import pl.fulara.servlet.utils.DataSourceManager;
import pl.fulara.servlet.utils.ServletUtils;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "wedding", urlPatterns = {"/wedding.html"})
public class WeddingServer extends HttpServlet {

    private String ftlTemplateDir;
    @SuppressWarnings("FieldCanBeLocal")
    private final String templateName = "wedding.ftl";


    @Override
    public void init() {
        ServletContext context = getServletContext();
        DataSourceManager.init(getServletContext());
        ftlTemplateDir = context.getInitParameter("ftlTemplateDir");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            WeddingPage weddingPage = new WeddingPage(LoginServlet.isLoggedIn(request, response));
            String page = getPage(weddingPage);
            response.setCharacterEncoding("utf-8");
            response.getWriter().append(page).close();
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }

    private String getPage(Ftlable data) throws IOException, TemplateException {
        return ServletUtils.runFreemaker(ftlTemplateDir, templateName, data.toFtl());
    }


    class WeddingPage extends Ftlable {
        boolean logged;

        WeddingPage(boolean logged) {
            this.logged = logged;
        }

        public boolean isLogged() {
            return logged;
        }
    }
}