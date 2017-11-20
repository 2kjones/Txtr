<%-- 
    Document   : registerAction
    Created on : Sep 25, 2017, 6:31:17 PM
    Author     : nmahadev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <style>
      .query table {
        /*border-style: solid;*/
        border-width: 2px;
        padding: 2px;
      }
      .query td {
        border-style: double;
      }
    </style>
  </head>
  <body>
    <%
      String first = request.getParameter("first");
      String last = request.getParameter("last");
      String email = request.getParameter("email");
      String pwd = request.getParameter("pwd");
      String gender = request.getParameter("gender"); 
      String sql = "insert into userinfo (Id, first, last, email, pwd, Usertype, Gender) "
        + "values (0, '" + first + "', '" + last + "', '" + email + "', '" + pwd + "', '"
        + "member" + "', '"+ gender +"')";
      String sql2 = "select * from userinfo";
      DBConnect dbConnect = new DBConnect();
    %>
    <%= dbConnect.insertData(sql)%><br>
      
  </body>
</html>
