<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC 5 - form handling | Java Guides</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<link href="<c:url value="/resources/css/main.css"/>" ref="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>
 <div class="container">
  <div class="col-md-offset-2 col-md-7">
   <h2 class="text-center">Spring MVC 5 + Hibernate 5 + JSP + MySQL
    Example</h2>
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title">Add User</div>
    </div>
    <div class="panel-body">
     <form:form action="saveUser" cssClass="form-horizontal"
      method="post" modelAttribute="user">

      <!-- need to associate this data with customer id -->
      
      <div class="form-group">
       <label for="id" class="col-md-3 control-label">Id</label>
         <div class="col-md-9">
        <form:hidden path="id" cssClass="form-control" />
        <form:errors path="id" cssClass="error" />
       </div>
      </div>
      <div class="form-group">
       <label for="username" class="col-md-3 control-label">User
        Name</label>
         <div class="col-md-9">
        <form:input path="username" cssClass="form-control" />
        <form:errors path="username" cssClass="error" />
       </div>
      </div>
      <div class="form-group">
       <label for="email" class="col-md-3 control-label">Email
        </label>
       <div class="col-md-9">
        <form:input path="email" cssClass="form-control" />
        <form:errors path="email" cssClass="error" />
       </div>
      </div>

      <div class="form-group">
       <label for="password" class="col-md-3 control-label">Password</label>
       <div class="col-md-9">
        <form:password path="password" cssClass="form-control" showPassword="true"/>
        <form:errors path="password" cssClass="error" />
       </div>
        </div>

      <div class="form-group">
       <!-- Button -->
       <div class="col-md-offset-3 col-md-9">
        <form:button cssClass="btn btn-primary">Submit</form:button>
       </div>
      </div>

     </form:form>
    </div>
   </div>
  </div>
 </div>
</body>
</html>