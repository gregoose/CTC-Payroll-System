
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
    
    public static void dateCheck(Connection con){
        //String date;
        try {
            Statement statement = con.createStatement();
            statement.executeQuery(
                    "select Date from Hours"
            );
            statement.executeUpdate
            ("insert into Hours (Date) values ('" + getDate() + "')"); 
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
	}
        //Return date;
    }
    
    public static void clockIn(Connection con, int ID, String Date, String Time){
        try {
            Statement statement = con.createStatement();
            statement.executeUpdate
            ("insert into Hours (ID, Date, Time, punchType) values (" + ID + ", '" + Date + "', '" + Time + "', 'Clock In')");
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
	}
    }
    
    public static void mealOut(Connection con, int ID, String Date, String Time){
        try {
            Statement statement = con.createStatement();
            statement.executeUpdate
            ("insert into Hours (ID, Date, Time, punchType) values (" + ID + ", '" + Date + "', '" + Time + "', 'Meal Out')");
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
	}
    }
    
    public static void mealIn(Connection con, int ID, String Date, String Time){
        try {
            Statement statement = con.createStatement();
            statement.executeUpdate
            ("insert into Hours (ID, Date, Time, punchType) values (" + ID + ", '" + Date + "', '" + Time + "', 'Meal In')");
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
	}
    }
    
    public static void clockOut(Connection con, int ID, String Date, String Time){
        try {
            Statement statement = con.createStatement();
            statement.executeUpdate
            ("insert into Hours (ID, Date, Time, punchType) values (" + ID + ", '" + Date + "', '" + Time + "', 'Clock Out')"); 
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
