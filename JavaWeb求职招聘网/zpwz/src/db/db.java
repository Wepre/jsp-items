package db;
import java.sql.*;
public class db {
	//private String dbDriver="com.microsoft.jdbc.sqlserver.SQLServerDriver";

	 //private String sConnStr = "jdbc:microsoft:sqlserver://localhost:1433;databasename=jsphljyqe"; 
private String dbDriver="com.microsoft.sqlserver.jdbc.SQLServerDriver";//sql2005     
  private String sConnStr = "jdbc:sqlserver://localhost;databaseName=db_zpw"; //sql2005
	  public Connection connect = null;
	  public ResultSet rs=null;
	  public db() {
	    try {
	     
	      Class.forName(dbDriver).newInstance(); 
	     
	      connect = DriverManager.getConnection(sConnStr,"sa","xfn123");
	     
	    }
	    catch (Exception ex) {
	      System.out.println("失败");
	    }
	  }
	
	  
	  public ResultSet executeQuery(String sql) {
			try{
				connect=DriverManager.getConnection(sConnStr,"sa","xfn123");
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
			}catch(SQLException ex){
				System.err.println(ex.getMessage());
			}
			return rs;
		}
	  public void executeUpdate(String sql)
	    {
	    	
	    	Statement stmt=null;
	    	rs=null;
	    	try
	    	{   connect=DriverManager.getConnection(sConnStr,"sa","xfn123");
	    		stmt=connect.createStatement();
	    		stmt.executeUpdate(sql);
	    		stmt.close();
	    		connect.close();
	    		
	    	
	    	}
	    	catch(SQLException ex)
	    	{
	    		System.err.println(ex.getMessage());
	    		
	    		
	    	}
	    
	    	
	    }
}
