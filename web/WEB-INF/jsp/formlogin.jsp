<%-- 
    Document   : formlogin
    Created on : 18-Dec-2017, 11:37:40
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">      
		<link href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="${pageContext.request.contextPath}/resources/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="${pageContext.request.contextPath}/resources/css/flexslider.css" rel="stylesheet"/>
		<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery-1.7.2.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>				
		<script src="${pageContext.request.contextPath}/resources/js/superfish.js"></script>	
		<script src="${pageContext.request.contextPath}/resources/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body>
        <jsp:include page="navbar.jsp"></jsp:include>
            <div id="wrapper" class="container">
            <jsp:include page="menu.jsp"></jsp:include>
            <section class="header_text sub">
                <img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
                <h4><span>Login</span></h4>
            </section>
            <section class="main-content">				
                <div class="row" align="center" style="margin-left: 325px">
                    <jsp:include page="login.jsp"></jsp:include>
                </div>
            </section>
        </div>
    </body>
</html>
