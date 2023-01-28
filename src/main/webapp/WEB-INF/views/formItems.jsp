<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<style>
            .error {
                color: red
            }
            .hidden{
             display: none
            }
            
        </style>
</head>
<body>
   <h1> Form Input Items And Update Items For Degrey</h1>
        <i>Fill out the form. Asterisk (*) means required.</i>
        <br><br>

        <form:form action="processForm" modelAttribute="items" method="POST">
           <div cssClass="hidden">
              <form:input path="id"/>
           </div>
            

            <br></br> Name (*):
            <form:input path="name" />
            <form:errors path="name" cssClass="error" />

            <br><br> Price (*):
            <form:input path="price" />
            <form:errors path="price" cssClass="error" />

            <br><br> Sales (*):
            <form:input path="percentSale" />
            <form:errors path="percentSale" cssClass="error" />

            <br><br> Images (*):
            <form:input path="sizeImage" />
            <form:errors path="sizeImage" cssClass="error" />

            <br><br> Description(*):
            <form:input path="description" />
            <form:errors path="description" cssClass="error" />
            
            <br><br> State(*):
            <form:input path="state" />
            <form:errors path="state" cssClass="error" />
            
            <br><br> S(*):
            <form:input path="isS" />
            <form:errors path="isS" cssClass="error" />
            
            <br><br> M(*):
            <form:input path="isM" />
            <form:errors path="isM" cssClass="error" />
            
            <br><br> L(*):
            <form:input path="isL" />
            <form:errors path="isL" cssClass="error" />
            
            <br><br> XL(*):
            <form:input path="isXL" />
            <form:errors path="isXL" cssClass="error" />
            
            <br><br> Type(*):
            <form:input path="type" />
            <form:errors path="type" cssClass="error" />

            <br><br>

            <input type="submit" value="Submit" />

        </form:form>
   
</body>
</html>