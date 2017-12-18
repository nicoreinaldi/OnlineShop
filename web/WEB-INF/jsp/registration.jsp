<%-- 
    Document   : registration
    Created on : Dec 15, 2017, 4:27:48 PM
    Author     : user
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <jsp:include page="title.jsp"></jsp:include>
                <div class="wrapper">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <b>Form Register</b>
                        </div>
                        <div class="panel-body">
                        <form:form  name="formRegister" action="${pageContext.request.contextPath}/reg/save" modelAttribute="registerBean" method="POST">

                            <form:label path="name" >Name :</form:label>
                            <form:input path="name" class="form-control" type="text" placeholder="Input Name" required="required"></form:input><br/>

                            <form:label path="email" >Email :</form:label>
                            <form:input path="email" class="form-control" placeholder="Input Email" type="email" required="required"></form:input><br/>

                            <form:label path="phone" >Phone :</form:label>
                            <form:input path="phone" class="form-control" type="number" placeholder="Input Phone" required="required"></form:input><br/>
                            
                            <form:label path="address" >Address :</form:label>
                            <form:textarea path="address" class="form-control" type="text" placeholder="Input Address" required="required"></form:textarea><br/>
                            
                            <form:label path="city" >City :</form:label>
                            <form:input path="city" class="form-control" type="text" placeholder="Input City" required="required"></form:input><br/>
                            
                            <form:label path="province" >Province :</form:label>
                            <form:input path="province" class="form-control" type="text" placeholder="Input province" required="required"></form:input><br/>
                            
                            <form:label path="postCode" >Postal Code :</form:label>
                            <form:input path="postCode" class="form-control" type="number" placeholder="Input Postal Code" required="required"></form:input><br/>

                            <form:label path="username" >Username :</form:label>
                            <form:input path="username" class="form-control" placeholder="Input Username" required="required"></form:input><br/>

                            <form:label path="password" >Password :</form:label>
                            <form:password path="password" class="form-control" placeholder="Input Password" required="required"></form:password><br/>

                            <form:button name="submit" value="submit" class="btn btn-primary" >SUBMIT</form:button> 

                        </form:form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
