package pl.fulara.servlet;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.servlet.ServletContext;

public class DataSourceManager {

	private static DriverManagerDataSource ds;

	public static void init(ServletContext context) {
		ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl(context.getInitParameter("jdbcString"));
		ds.setUsername(context.getInitParameter("jdbcUser"));
		ds.setPassword(context.getInitParameter("jdbcPassword"));
	}

	public static DriverManagerDataSource getConn() {
		return DataSourceManager.ds;
	}

	public static DriverManagerDataSource getDataSource() {
		return ds;
	}
}
