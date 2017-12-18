<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <jsp:include page="linkStyle.jsp"></jsp:include>
            <title>Lapedia Shop</title>
        </head>

        <body>
            <!-- header modal // Register or Login Form -->
        <jsp:include page="headerModal.jsp"></jsp:include>
            <script>
                $('#myModal88').modal('show');
            </script>  
            <!-- //header modal -->

            <!-- header -->
        <jsp:include page="header.jsp"></jsp:include>
            <!-- //header -->

            <!-- navigation -->
        <jsp:include page="navMenu.jsp"></jsp:include>
            <!-- //navigation -->

            <!-- banner -->
            <div class="banner">
                <div class="container">
                    <h3>Electronic Store, <span>Special Offers</span></h3>
                </div>
            </div>
            <!-- //banner --> 

            <!-- top-brands -->
        <jsp:include page="brandSlider.jsp"></jsp:include>
            <!-- //top-brands --> 

            <!-- new-products -->
        <jsp:include page="newProductSlider.jsp"></jsp:include>
            <!-- //new-products -->

            <!-- banner-bottom -->
        <jsp:include page="content.jsp"></jsp:include>
            <!-- //banner-bottom -->

            <!-- footer -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- //footer -->


    </body>
</html>
