package pl.fulara.servlet;

import freemarker.template.TemplateException;
import org.springframework.jdbc.core.JdbcTemplate;
import pl.fulara.model.*;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "gifts", urlPatterns = {"/gifts.html"})
public class GiftServlet extends HttpServlet {

    private JdbcTemplate jdbcTemplate;
    private String ftlTemplateDir;
    private String templateName = "gifts.ftl";

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
            Gifts gifts = new Gifts(getGifts());
            String page = getPage(gifts);
            response.setCharacterEncoding("utf-8");
            response.getWriter().append(page).close();
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }


    private List<Gift> getGifts() {
        return jdbcTemplate.query(Gift.LIST_QUERY, new GiftRowMapper());
    }

    private String getPage(Ftlable data) throws IOException, TemplateException {
        return ServletUtils.runFreemaker(ftlTemplateDir, templateName, data.toFtl());
    }


    class Gifts extends Ftlable {
        private List<Gift> gifts;

        Gifts(List<Gift> gifts) {
            this.gifts = gifts;
        }

        public List<Gift> getGifts() {
            return gifts;
        }
    }
}