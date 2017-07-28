package pl.fulara.servlet;

import freemarker.template.TemplateException;
import org.springframework.jdbc.core.JdbcTemplate;
import pl.fulara.model.Ftlable;
import pl.fulara.model.Gift;
import pl.fulara.model.GiftRowMapper;
import pl.fulara.model.Gifts;
import pl.fulara.servlet.utils.DataSourceManager;
import pl.fulara.servlet.utils.ServletUtils;

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
    @SuppressWarnings("FieldCanBeLocal")
    private final String templateName = "gifts.ftl";

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
            GiftPage giftPage = new GiftPage(gifts, LoginServlet.isLoggedIn(request, response));
            String page = getPage(giftPage);
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

    class GiftPage extends Ftlable {
        Gifts gifts;
        boolean logged;

        GiftPage(Gifts gifts, boolean logged) {
            this.gifts = gifts;
            this.logged = logged;
        }

        public Gifts getGifts() {
            return gifts;
        }

        public boolean isLogged() {
            return logged;
        }
    }
}