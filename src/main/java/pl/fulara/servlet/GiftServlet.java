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
import java.util.Map;

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
            GiftPage giftPage = new GiftPage(gifts, LoginServlet.isLoggedIn(request, response));
            String page = getPage(giftPage);
            response.setCharacterEncoding("utf-8");
            response.getWriter().append(page).close();
        } catch (IOException | TemplateException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
            if (LoginServlet.requireLogged(request, response)) {
                return;
            }
            int id = getId(request.getParameterMap());
            int result = changeGiftReservation(id);
            if (result > 0) {
                response.setStatus(HttpServletResponse.SC_OK);
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private int getId(Map<String, String[]> map) {
        return Integer.parseInt(map.get("id")[0]);
    }

    private int changeGiftReservation(int id) {
        return jdbcTemplate.update(Gift.UPDATE_RESERVARION, id);
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

        public GiftPage(Gifts gifts, boolean logged) {
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