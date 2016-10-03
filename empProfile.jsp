<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/timedropper.js"></script>
        <link rel="stylesheet" type="text/css" href="js/timedropper.css">
        <title>Employee Time Entry</title>
    </head>
    <body>
        <h1>Employee Time Entry</h1>
        <form name="timeEntry" action="timeSubmitServlet" method="post"><!TODO add servlet>
        <div>
            <h4>Current Week Time Sheet</h4>
            <div id="timeTable">
                <table>
                    <!TODO insert table for employee data>
                </table>
                <table border="1px">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Day</th>
                            <th>Time In</th>
                            <th>Meal Out</th>
                            <th>Meal In</th>
                            <th>Time Out</th>
                            <th>Total Hours Worked</th>
                            <th>Type of Absence</th>
                            <th>Absent Hours</th>
                            <th>Notes</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>10/02/2016</td>
                            <td>Sun</td>
                            <td><input type="text" name="timeIn" id="alarm1"/></td>
                            <td><input type="text" name="mealOut" id="alarm2"/></td>
                            <td><input type="text" name="mealIn" id="alarm3"/></td>
                            <td><input type="text" name="timeOut" id="alarm4"/></td>
                            <td></td>
                            <td>
                                <select name="TypeAbsence">
                                    <option value="none" selected=""></option>
                                    <option value="al">Annual Leave</option>
                                    <option value="sl">Sick Leave</option>
                                    <option value="pl">Personal Leave</option>
                                    <option value="comp">FLSA Comp Time</option>
                                    <option value="hol">Holiday</option>
                                    <option value="mil">Military Leave</option>
                                    <option value="court">Court Leave</option>
                                    <option value="lwp">Leave Without Pay</option>
                                </select>
                            </td>
                            <td></td>
                            <td></td>
                            
                        </tr>
                        <tr>
                            <td>10/03/2016</td>
                            <td>Mon</td>
                            <td><input type="text" name="timeIn" id="alarm1"/></td>
                            <td><input type="text" name="mealOut" id="alarm2"/></td>
                            <td><input type="text" name="mealIn" id="alarm3"/></td>
                            <td><input type="text" name="timeOut" id="alarm4"/></td>
                            <td></td>
                            <td>
                                <select name="TypeAbsence">
                                    <option value="none" selected=""></option>
                                    <option value="al">Annual Leave</option>
                                    <option value="sl">Sick Leave</option>
                                    <option value="pl">Personal Leave</option>
                                    <option value="comp">FLSA Comp Time</option>
                                    <option value="hol">Holiday</option>
                                    <option value="mil">Military Leave</option>
                                    <option value="court">Court Leave</option>
                                    <option value="lwp">Leave Without Pay</option>
                                </select>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>10/04/2016</td>
                            <td>Tue</td>
                            <td><input type="time" name="timeIn" /></td>
                            <td><input type="time" name="mealOut"/></td>
                            <td><input type="time" name="mealIn"/></td>
                            <td><input type="time" name="timeOut"/></td>
                            <td></td>
                            <td>
                                <select name="TypeAbsence">
                                    <option value="none" selected=""></option>
                                    <option value="al">Annual Leave</option>
                                    <option value="sl">Sick Leave</option>
                                    <option value="pl">Personal Leave</option>
                                    <option value="comp">FLSA Comp Time</option>
                                    <option value="hol">Holiday</option>
                                    <option value="mil">Military Leave</option>
                                    <option value="court">Court Leave</option>
                                    <option value="lwp">Leave Without Pay</option>
                                </select>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>10/05/2016</td>
                            <td>Wed</td>
                            <td><input type="time" name="timeIn" /></td>
                            <td><input type="time" name="mealOut"/></td>
                            <td><input type="time" name="mealIn"/></td>
                            <td><input type="time" name="timeOut"/></td>
                            <td></td>
                            <td>
                                <select name="TypeAbsence">
                                    <option value="none" selected=""></option>
                                    <option value="al">Annual Leave</option>
                                    <option value="sl">Sick Leave</option>
                                    <option value="pl">Personal Leave</option>
                                    <option value="comp">FLSA Comp Time</option>
                                    <option value="hol">Holiday</option>
                                    <option value="mil">Military Leave</option>
                                    <option value="court">Court Leave</option>
                                    <option value="lwp">Leave Without Pay</option>
                                </select>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>10/06/2016</td>
                            <td>Thur</td>
                            <td><input type="time" name="timeIn" /></td>
                            <td><input type="time" name="mealOut"/></td>
                            <td><input type="time" name="mealIn"/></td>
                            <td><input type="time" name="timeOut"/></td>
                            <td></td>
                            <td>
                                <select name="TypeAbsence">
                                    <option value="none" selected=""></option>
                                    <option value="al">Annual Leave</option>
                                    <option value="sl">Sick Leave</option>
                                    <option value="pl">Personal Leave</option>
                                    <option value="comp">FLSA Comp Time</option>
                                    <option value="hol">Holiday</option>
                                    <option value="mil">Military Leave</option>
                                    <option value="court">Court Leave</option>
                                    <option value="lwp">Leave Without Pay</option>
                                </select>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>10/07/2016</td>
                            <td>Fri</td>
                            <td><input type="time" name="timeIn" /></td>
                            <td><input type="time" name="mealOut"/></td>
                            <td><input type="time" name="mealIn"/></td>
                            <td><input type="time" name="timeOut"/></td>
                            <td></td>
                            <td>
                                <select name="TypeAbsence">
                                    <option value="none" selected=""></option>
                                    <option value="al">Annual Leave</option>
                                    <option value="sl">Sick Leave</option>
                                    <option value="pl">Personal Leave</option>
                                    <option value="comp">FLSA Comp Time</option>
                                    <option value="hol">Holiday</option>
                                    <option value="mil">Military Leave</option>
                                    <option value="court">Court Leave</option>
                                    <option value="lwp">Leave Without Pay</option>
                                </select>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>10/08/2016</td>
                            <td>Sat</td>
                            <td><input type="time" name="timeIn" /></td>
                            <td><input type="time" name="mealOut"/></td>
                            <td><input type="time" name="mealIn"/></td>
                            <td><input type="time" name="timeOut"/></td>
                            <td></td>
                            <td>
                                <select name="TypeAbsence">
                                    <option value="none" selected=""></option>
                                    <option value="al">Annual Leave</option>
                                    <option value="sl">Sick Leave</option>
                                    <option value="pl">Personal Leave</option>
                                    <option value="comp">FLSA Comp Time</option>
                                    <option value="hol">Holiday</option>
                                    <option value="mil">Military Leave</option>
                                    <option value="court">Court Leave</option>
                                    <option value="lwp">Leave Without Pay</option>
                                </select>
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div><br/>
            <input type="submit" name="timeSubmit" value="Submit Time" />
            
        </div>
        </form>
        <script>$( "#alarm1" ).timeDropper();</script>
        <script>$( "#alarm2" ).timeDropper();</script>
        <script>$( "#alarm3" ).timeDropper();</script>
        <script>$( "#alarm4" ).timeDropper();</script>
    </body>
    
</html>
