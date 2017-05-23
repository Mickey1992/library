package bean;


import java.sql.*;


public class ConBean1 {

	Connection conn;
	Statement stmt;
	ResultSet rs;
    String url;
	public void Con() throws Exception {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		   url="jdbc:sqlserver://localhost:1433; DatabaseName=library";
		   conn=DriverManager.getConnection(url,"sa","123"); 
		   stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
		
		
	}
	public Connection forconn(){
		return conn;
	}

	public ResultSet query(String sql) throws Exception {
		rs = stmt.executeQuery(sql);
		return rs;
	}
	
	public void insert(String sql) throws SQLException{
		
		stmt.executeUpdate(sql);
		
	}
	public void update(String sql) throws SQLException{
		stmt.executeUpdate(sql);
	}
 
	public void delete(String sql) throws SQLException{
		stmt.executeUpdate(sql);
	}
	public void close() throws SQLException {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}


}