<%-- 
    Document   : welcome
    Created on : 18-Dec-2017, 09:47:26
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
            <jsp:include page="slider.jsp"></jsp:include>
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="content.jsp"></jsp:include>
            <jsp:include page="manufacture.jsp"></jsp:include>
            <jsp:include page="footer.jsp"></jsp:include>
            <jsp:include page="copyright.jsp"></jsp:include>
        </div>

        <!--script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.flexslider-min.js"></script>
        <script type="text/javascript">
            $(function () {
                $(document).ready(function () {
                    $('.flexslider').flexslider({
                        animation: "fade",
                        slideshowSpeed: 4000,
                        animationSpeed: 600,
                        controlNav: false,
                        directionNav: true,
                        controlsContainer: ".flex-container" // the container that holds the flexslider
                    });
                });
            });
        </script-->
    </body>
</html>
