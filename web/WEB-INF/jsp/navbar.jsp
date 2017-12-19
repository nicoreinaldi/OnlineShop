<%-- 
    Document   : navbar
    Created on : 18-Dec-2017, 10:18:27
    Author     : user
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="top-bar" class="container">
    <div class="row">
        <div class="span4">
            <form method="POST" class="search_form">
                <input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
            </form>
        </div>
        <div class="span8">
            <div class="account pull-right">
                <ul class="user-menu">
                    <li><a href="cart.html">Your Cart</a></li>
					<li>
					<c:if test="${empty sessionScope.user}">
						<a href="${pageContext.request.contextPath}/log">Login</a>	
					</c:if>
					<c:if test="${not empty sessionScope.user}">
						<a href="${pageContext.request.contextPath}">${user.name}</a>	
					</c:if>
					</li>
					<li>
					<c:if test="${empty sessionScope.user}">
						<a href="${pageContext.request.contextPath}/reg">Register</a>
					</c:if>
					<c:if test="${not empty sessionScope.user}">
						<a href="${pageContext.request.contextPath}/out">Logout</a>
					</c:if>
					</li>		
                </ul>
            </div>
        </div>
    </div>
</div>