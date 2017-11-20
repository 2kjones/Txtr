<%-- 
    Document   : register
    Created on : Oct 13, 2017, 7:03:19 AM
    Author     : Kjones36
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="header.jspf" %>
    </head>
    <body>
    <div class="container">
      <div class="row">
        <h4 class="col-sm-4"> Welcome to Txtr! Txtr is an online message board that connects users to converse about various topics of their liking. Build connections by meeting other users and adding them to your friends list!
        </h4>

        <form name="register" action="registerAction.jsp" method="get">
          <div class="col-sm-4"><br>
            <p>      
              <label class="w3-text-orange"><b>First Name</b></label>
              <input class="w3-input w3-border" name="first" type="text" required></p>
            <p>      
              <label class="w3-text-orange"><b>Last Name</b></label>
              <input class="w3-input w3-border" name="last" type="text" required></p>
            <p>      
              <label class="w3-text-orange"><b>Email</b></label>
              <input class="w3-input w3-border" name="email" type="email" required></p>
            <p>      
              <label class="w3-text-orange"><b>Confirm Email</b></label>
              <input class="w3-input w3-border" name="email2" id = "email2" type="email" 
                     required onInput="validateEmail()"></p>
            <p>      
              <label class="w3-text-orange"><b>Password</b></label>
              <input class="w3-input w3-border" name="pwd" type="password" required></p>
            <p>      
              <label class="w3-text-orange"><b>Confirm Password</b></label>
              <input class="w3-input w3-border" name="pwd2" id = "pwd2" type="password" 
                     required onInput="validatePwd()"></p>
          </div>
          <div class="col-sm-4"><br>
            <p>      
              <label class="w3-text-orange"><b>Gender</b></label><br>
              <input type="radio" name="gender" value="male" > Male<br>
              <input type="radio" name="gender" value="female"> Female<br>
              <input type="radio" name="gender" value="other"> Other</p>
            <p>      
              <button href="index.jsp" class="w3-btn w3-blue">Register</button></p>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
