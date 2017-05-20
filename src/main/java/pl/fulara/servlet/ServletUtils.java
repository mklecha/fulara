package pl.fulara.servlet;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

class ServletUtils {
    final static String LOGIN_PARAM = "login";
    final static String PASSWORD_PARAM = "password";

	static boolean checkFields(Map<String, String[]> paramMap) {
        return paramMap.containsKey(LOGIN_PARAM) && paramMap.containsKey(PASSWORD_PARAM);
    }

    static String runFreemaker(String templatesDir, String filePath, Map<String, Object> ftl) throws IOException, TemplateException {
		Configuration cfg = new Configuration(Configuration.VERSION_2_3_22);
		cfg.setDirectoryForTemplateLoading(new File(templatesDir));
		cfg.setDefaultEncoding("UTF-8");
		cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
		Template template = cfg.getTemplate(filePath);
		Map<String, Object> root = new HashMap<>();
		root.put("content", ftl);

		StringWriter writer = new StringWriter();
 		template.process(root, writer);
		return writer.toString();
	}

	public static class MapResultExtractor implements ResultSetExtractor<Map<String, Object>> {

		@Override
		public Map<String, Object> extractData(ResultSet resultSet) throws SQLException, DataAccessException {
			HashMap<String, Object> mapRet = new HashMap<>();
			while (resultSet.next()) {
				mapRet.put(resultSet.getString("key"), resultSet.getString("value"));
			}
			return mapRet;
		}
	}
}