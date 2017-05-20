package pl.fulara.servlet;

import freemarker.template.TemplateException;
import org.springframework.jdbc.core.JdbcTemplate;
import pl.fulara.model.Ftlable;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

@WebServlet(name = "gifts", urlPatterns = {"/gifts.html"})
public class GiftServlet extends HttpServlet {

    private JdbcTemplate jdbcTemplate;
    private String ftlTemplateDir;
    private String mainPageTemplateName = "gifts.ftl";


    private String defaultPhoto = "";

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

    private ArrayList<Gift> getGifts() {
        return new ArrayList<>();
    }

    private String getPage(Ftlable data) throws IOException, TemplateException {
        return ServletUtils.runFreemaker(ftlTemplateDir, mainPageTemplateName, data.toFtl());
    }


    class Gift extends Ftlable {
        String name;
        String description;
        String link;
        String photo;
        boolean reserved;


        public Gift(String name, String description, String link, String photo, int reserved) {
            this.name = name;
            this.description = description;
            this.link = link;
            if (photo.isEmpty()) {
                this.photo = defaultPhoto;
            } else {
                this.photo = photo;
            }
            this.reserved = reserved != 0;
        }

        public String getName() {
            return name;
        }

        public String getDescription() {
            return description;
        }

        public String getLink() {
            return link;
        }

        public String getPhoto() {
            return photo;
        }

        public boolean isReserved() {
            return reserved;
        }
    }

    class Gifts extends Ftlable {
        private ArrayList<Gift> gifts;

        Gifts(ArrayList<Gift> gifts) {
            this.gifts = gifts;
        }

        public ArrayList<Gift> getGifts() {
            return gifts;
        }
    }
}