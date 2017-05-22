package pl.fulara.servlet;

import freemarker.template.TemplateException;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet(name = "contact", urlPatterns = {"/contact.html"})
public class ContactServlet extends HttpServlet {

    private String ftlTemplateDir;
    private String templateName = "contact.ftl";


    @Override
    public void init() {
        ServletContext context = getServletContext();
        DataSourceManager.init(getServletContext());
        ftlTemplateDir = context.getInitParameter("ftlTemplateDir");
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        try {
            String page = getPage();
            response.setCharacterEncoding("utf-8");
            response.getWriter().append(page).close();
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }

    private String getPage() throws IOException, TemplateException {
        return ServletUtils.runFreemaker(ftlTemplateDir, templateName, new HashMap<>());
    }
}