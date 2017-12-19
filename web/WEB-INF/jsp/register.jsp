<%-- 
    Document   : register
    Created on : 18-Dec-2017, 11:03:16
    Author     : user
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>>
<div class="span7">
    <h4 class="title"><span class="text"><strong>Register</strong> Form</span></h4>
    <form:form action="${pageContext.request.contextPath}/reg/save" method="Post" class="form-stacked" modelAttribute="registerBean">
        <fieldset>
            <div class="control-group">
                <form:label class="control-label" path="name">Name</form:label>
                <div class="controls">
                    <form:input path="name" type="text" placeholder="Enter your Full Name" class="input-xlarge" required="required"/>
                </div>
            </div>
            <div class="control-group">
                <form:label class="control-label" path="username">Username</form:label>
                <div class="controls">
                    <form:input path="username" type="text" placeholder="Enter your username" class="input-xlarge" required="required"/>
                </div>
            </div>
            <div class="control-group">
                <form:label class="control-label" path="password">Password:</form:label>
                <div class="controls">
                    <form:input path="password" type="password" placeholder="Enter your password" class="input-xlarge" required="required"/>
                </div>
            </div>
            <div class="control-group">
                <form:label class="control-label" path="email">Email</form:label>
                <div class="controls">
                    <form:input path="email" type="text" placeholder="Enter Your Email" class="input-xlarge" required="required"/>
                </div>
            </div>
            <div class="control-group">
                <form:label class="control-label" path="noHp">No.Handphone</form:label>
                <div class="controls">
                    <form:input path="noHp" type="text" placeholder="Enter Your No.Handphone" class="input-xlarge" required="required"/>
                </div>
            </div>
            <div class="control-group">
                <form:label class="control-label" path="address">Address</form:label>
                <div class="controls">
                    <form:input path="address" type="text" placeholder="Enter Your Address" class="input-xlarge" required="required"/>
                </div>
            </div>
            <div class="control-group">
                <p>Now that we know who you are. I'm not a mistake! In a comic, you know how you can tell who the arch-villain's going to be?</p>
            </div>
            <hr>
            <div class="actions">
            <form:button name="submit" value="submit" class="btn btn-inverse large" >Create Your Account!</form:button></div>
        </fieldset>
    </form:form>					
</div>