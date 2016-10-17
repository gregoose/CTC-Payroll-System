
package ctc.time;

import java.sql.*;
import java.util.Date;
import java.text.SimpleDateFormat;

public class Database {
    public static Connection connectDB(){
        Connection connection = null;
        try {   
            Class.forName("com.mysql.jdbc.Driver"); 
            System.out.println("Driver loaded");

            connection = DriverManager.getConnection 
                ("jdbc:mysql://ctc-time.czqas8ro3rbg.us-east-1.rds.amazonaws.com:3306", "BasilG", "PrimeNumber4");
            System.out.println("Database connected");
            Statement statement = connection.createStatement();
            statement.executeUpdate
            ("use Times");
            
            
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
	}
        return connection;
    }
    
    public static String getDate(){
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
        String date = sdf.format(new Date());
        return date;
    }
    
    public static void clockIn(Connection con, String time){
        try {
            Statement statement = con.createStatement();
            statement.executeUpdate
            ("insert into Hours (timeIn) values ('" + time + "')"); 
            statement = con.createStatement();
            statement.executeUpdate
            ("insert into Hours (Date) values ('" + getDate() + "')"); 
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
	}
    }
    
    public static void mealOut(Connection con, String time){
        try {
            Statement statement = con.createStatement();
            statement.executeUpdate
            ("insert into Hours (mealOut) values ('" + time + "')"); 
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
	}
    }
    
    public static void mealIn(Connection con, String time){
        try {
            Statement statement = con.createStatement();
            statement.executeUpdate
            ("insert into Hours (mealIn) values ('" + time + "')"); 
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
	}
    }
    
    public static void clockOut(Connection con, String time){
        try {
            Statement statement = con.createStatement();
            statement.executeUpdate
            ("insert into Hours (timeOut) values ('" + time + "')"); 
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
	}
    }
    
    public static void disconnectDB(Connection connection){
        try{
            connection.close();
            System.out.println("Database connection closed");
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
