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
                            <b>Form LogIn</b>
                        </div>
                        <div class="panel-body">
                        <form:form  name="formLogin" action="${pageContext.request.contextPath}/log/in" modelAttribute="loginBean" method="POST">

                            <form:label path="username" >Username :</form:label>
                            <form:input path="username" class="form-control" placeholder="Input Username" required="required"></form:input><br/>

                            <form:label path="password" >Password :</form:label>
                            <form:password path="password" class="form-control" placeholder="Input Password" required="required"></form:password><br/>

                            <form:button name="submit" value="submit" class="btn btn-primary" >SUBMIT</form:button> 

                        </form:form>
                            <h3>${errMsg}</h3>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
