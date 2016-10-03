<%-- 
    Document   : employeeLogin
    Created on : Sep 28, 2016, 7:45:16 PM
    Author     : Gregory
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="main.css">
        <title>Employee Login</title>
    </head>
    <body>
        <h1>Employee Login</h1>
        <p></p>
        <form name="LoginForm" action="empProfile.jsp" method="post"/><!TODO add servlet>
        <table border="0">
            <tr>
                <td align="right">Employee ID:</td>
                <td><input type="text" name="idtb"/></td>
            </tr>
            <tr>
                <td align="right">Password:</td>
                <td><input type="password" name="pwtb"/></td>
            </tr>
        </table>
        <br/>
        <input type="submit" name="loginBtn" value="Login" />
        <input type="reset" name="resetBtn" value="Clear"/>
        <br/>
    </body>
</html>
