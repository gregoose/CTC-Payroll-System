package ctc.time;

import java.sql.*;
import java.util.Date;
import java.text.SimpleDateFormat;

/**
 *Contains all of the methods needed to access and edit the project database.
 * @author Basil
 */
public class Database {

    /**
     *Connects to database. To use, instantiate a Connection type variable with 'Database.connectDB()'.
     * @return A Connection variable using the project database.
     */
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
    
    /**
     *Takes a Connection type variable and disconnects it
     * @param connection The Connection of the project database.
     */
    public static void disconnectDB(Connection connection){
        try{
            connection.close();
            System.out.println("Database connection closed");
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    
    /**
     *Returns current date as a String in the form of 'Month/Day/Year'.
     * @return Today's date as a String
     */
    public static String getDate(){
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
        String date = sdf.format(new Date());
        return date;
    }
    
    /**
     *@deprecated Was used with old schema where on connection the date would be logged.
     *@param con The Connection of the project database.
     */
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
    
    /**
     *Takes an Employee ID, Date, and Time, and adds them to the timesheet with a 'Clock In' punch type
     * @param con The Connection of the project database.
     * @param ID ID of the employee who used the system
     * @param Date The date the user clocked in.
     * @param Time The time the user clocked in.
     */
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
    
    /**
     *Takes an Employee ID, Date, and Time, and adds them to the timesheet with a 'Meal Out' punch type
     * @param con The Connection of the project database.
     * @param ID ID of the employee who used the system
     * @param Date The date the user went on break.
     * @param Time The time the user went on break.
     */
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
    
    /**
     *Takes an Employee ID, Date, and Time, and adds them to the timesheet with a 'Meal In' punch type
     * @param con The Connection of the project database.
     * @param ID ID of the employee who used the system
     * @param Date The date the user came back from break.
     * @param Time The time the user came back from break.
     */
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
    
    /**
     *Takes an Employee ID, Date, and Time, and adds them to the timesheet with a 'Clock Out' punch type
     * @param con The Connection of the project database.
     * @param ID ID of the employee who used the system
     * @param Date The date the user clocked out.
     * @param Time The time the user clocked out.
     */
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
    
    /**
     *Creates a report of a single user's time entries in chronological order. The report is generated as a ResultSet.
     * @param con The Connection of the project database.
     * @param ID ID of the employee the report consists of.
     * @see ResultSet
     * @return Returns a ResultSet of the user's time entries
     */
    public static ResultSet pullEmployeeTime(Connection con, int ID){
        ResultSet EmployeeReport = null;
        try {
            Statement statement = con.createStatement();
            EmployeeReport = statement.executeQuery
            ("select * from Hours where ID = " + ID + " order by Date"); 
        }
        
        catch (Exception ex) {
            ex.printStackTrace();
	} 
        return EmployeeReport;
    }
    
}
