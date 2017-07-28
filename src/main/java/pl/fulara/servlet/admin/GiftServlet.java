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
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "manageGifts", urlPatterns = {"/manage-gifts.html"})
public class GiftServlet extends HttpServlet {

    private JdbcTemplate jdbcTemplate;
    private String ftlTemplateDir;
    private String templateName = "fragment" + File.separator + "gifts.ftl";

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
            String page = getPage(new Gifts(getGifts()));
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
                Gift gift = ServletUtils.getGift(map);
                jdbcTemplate.update(Gift.INSERT_QUERY, gift.getName(), gift.getDescription(), gift.getLink());
            } else {
                int id = ServletUtils.getId(map);
                if (action.equals("changeReservation")) {
                    jdbcTemplate.update(Gift.CHANGE_RESERVARION, id);
                } else if (action.equals("delete")) {
                    jdbcTemplate.update(Gift.DELETE_QUERY, id);
                }
            }
        } catch (NullPointerException ignored) {
        }
    }

    private List<Gift> getGifts() {
        return jdbcTemplate.query(Gift.LIST_QUERY, new GiftRowMapper());
    }

    private String getPage(Ftlable data) throws IOException, TemplateException {
        return ServletUtils.runFreemaker(ftlTemplateDir, templateName, data.toFtl());
    }


}