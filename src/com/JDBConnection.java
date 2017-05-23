package com;
import java.sql.*;

public class JDBConnection {
	private final String dbDriver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private final String url="jdbc:sqlserver://localhost:1433;databaseName=library";
	private final String userName="sa";
	private final String password="123";
	private Connection con=null;
	
	public JDBConnection(){
		try{
			Class.forName(dbDriver).newInstance();//加载数据库驱动
		}catch(Exception ex){
			
		}
	}
	
	public boolean createConnection(){
		try{
			con=DriverManager.getConnection(url,userName,password);
			con.setAutoCommit(true);
		}catch(SQLException e){			
		}
		return true;
	}
	
	public ResultSet executeQuery(String sql){
		ResultSet rs;
		try{
			if(con==null){
				createConnection();
			}
			Statement stmt =con.createStatement();
			try{
				rs=stmt.executeQuery(sql);
			}catch(SQLException e){
				return null;
			}
		}catch(SQLException e){
			return null;
		}
		return rs;
	}
	
	public void insert(String sql)throws SQLException{
		if(con==null){
			createConnection();
		}
		Statement stmt =con.createStatement();
		stmt.executeUpdate(sql);
	}
	
	public void update(String sql)throws SQLException{
		if(con==null){
			createConnection();
		}
		Statement stmt =con.createStatement();
		stmt.executeUpdate(sql);
	}
	
	public void closeConnection(){
		if(con!=null){
			try{
				con.close();
			}catch(SQLException e){				
			}finally{
				con=null;
			}
		}
	}
}
