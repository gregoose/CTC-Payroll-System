<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- BOOTSTRAP CDN -->
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <!-- BOOTSTRAP CDN -->
        
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        
        
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/timedropper.js"></script>
        <link rel="stylesheet" type="text/css" href="js/timedropper.css">
        
        
        
        <div id="title">
        <title>Employee Time Entry</title>
        </div>
        
    </head>
    <body>
        <div class="container">
            <h1>Employee Time Entry</h1>
            <form name="timeEntry" action="timeSaveServlet" method="post"><!TODO add servlet>
            <h4>Current Week Time Sheet</h4>
            <div class="table-responsive">
                <table>
                    <!TODO insert table for employee data>
                </table>
                <table class="table-bordered table-striped">
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
                            <td><input type="text" name="timeIn" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealOut" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealIn" value="" class="timeEntry"/></td>
                            <td><input type="text" name="timeOut" value="" class="timeEntry"/></td>
                            <td><input type="text" name="totalHours" value="" disabled="" id="totHrs"></td>
                            <td>
                                <select name="TypeAbsence">//<editor-fold defaultstate="collapsed">
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
                            <td><input type="text" name="timeIn" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealOut" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealIn" value="" class="timeEntry"/></td>
                            <td><input type="text" name="timeOut" value="" class="timeEntry"/></td>
                            <td><input type="text" name="totalHours" value="" disabled="" id="totHrs"></td>
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
                            <td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">+ Note</button></td>
                            
                        </tr>
                        <tr>
                            <td>10/04/2016</td>
                            <td>Tue</td>
                            <td><input type="text" name="timeIn" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealOut" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealIn" value="" class="timeEntry"/></td>
                            <td><input type="text" name="timeOut" value="" class="timeEntry"/></td>
                            <td><input type="text" name="totalHours" value="" disabled="" id="totHrs"></td>
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
                            <td><input type="text" name="timeIn" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealOut" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealIn" value="" class="timeEntry"/></td>
                            <td><input type="text" name="timeOut" value="" class="timeEntry"/></td>
                            <td><input type="text" name="totalHours" value="" disabled="" id="totHrs"></td>
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
                            <td><input type="text" name="timeIn" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealOut" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealIn" value="" class="timeEntry"/></td>
                            <td><input type="text" name="timeOut" value="" class="timeEntry"/></td>
                            <td><input type="text" name="totalHours" value="" disabled="" id="totHrs"></td>
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
                            <td><input type="text" name="timeIn" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealOut" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealIn" value="" class="timeEntry"/></td>
                            <td><input type="text" name="timeOut" value="" class="timeEntry"/></td>
                            <td><input type="text" name="totalHours" value="" disabled="" id="totHrs"></td>
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
                            <td><input type="text" name="timeIn" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealOut" value="" class="timeEntry" /></td>
                            <td><input type="text" name="mealIn" value="" class="timeEntry"/></td>
                            <td><input type="text" name="timeOut" value="" class="timeEntry"/></td>
                            <td><input type="text" name="totalHours" value="" disabled="" id="totHrs"></td>
                            </td>
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
            <button type="button" class="btn btn-primary">Save Changes</button> &nbsp; <button type="submit" class="btn btn-success btn">Submit Time</button>
            
        </div><br/>
        </form>
        
        <script>$( ".timeEntry" ).timeDropper();</script>
        
        
        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
              </div>
              <div class="modal-body">
                ...
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
          </div>
        </div>
        
    </body>
    
</html>
