package pl.fulara.servlet.utils;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import pl.fulara.model.Invitation;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class ServletUtils {
    public final static String LOGIN_PARAM = "login";
    public final static String PASSWORD_PARAM = "password";

    public static boolean checkFields(Map<String, String[]> paramMap) {
        return paramMap.containsKey(LOGIN_PARAM) && paramMap.containsKey(PASSWORD_PARAM);
    }

    public static String runFreemaker(String templatesDir, String filePath, Map<String, Object> ftl) throws IOException, TemplateException {
        Configuration cfg = new Configuration(Configuration.VERSION_2_3_22);
        cfg.setDirectoryForTemplateLoading(new File(templatesDir));
        cfg.setDefaultEncoding("UTF-8");
        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
        Template template = cfg.getTemplate(filePath);
        Map<String, Object> root = new HashMap<>();
        root.put("content", ftl);

//        System.out.println(root);

        StringWriter writer = new StringWriter();
        template.process(root, writer);
        return writer.toString();
    }

    public static int getId(Map<String, String[]> map) {
        return Integer.parseInt(map.get("id")[0]);
    }

    public static String getAction(Map<String, String[]> map) {
        return map.get("action")[0];
    }

    public static String getKey(Map<String, String[]> map) {
        return map.get("key")[0];
    }

    public static Invitation getInvitation(Map<String, String[]> map) {
        return null;
    }
}