<%-- 
    Document   : loginAction
    Created on : Oct 23, 2017, 11:13:43 AM
    Author     : Kjones36
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import = "myBeans.DBConnect"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="js/valid.js"></script>
  </head>
  <body>
    <%
      String email = request.getParameter("email");
      String pwd = request.getParameter("pwd");
      //    String sql = "select email, pwd from register where email = '" + email + "' and "
      //      + "pwd = '" + pwd + "'";
      String sql = "select email, pwd from userinfo where email = '"+email+"' and pwd = '"+pwd+"'";
      DBConnect dbConnect = new DBConnect();
      /*    
      if (dbConnect.validatePwd(sql)) {
        response.sendRedirect("welcome.jsp");
      } else {
        out.println("Email or password is wrong");
      }
      */
      String result = dbConnect.isPwdValid(sql, email, pwd);
      if (result.equals("yes")) {
        response.sendRedirect("welcome.jsp");
      } else {
        response.sendRedirect("index.jsp");
      }

    %>
  </body>
</html>
