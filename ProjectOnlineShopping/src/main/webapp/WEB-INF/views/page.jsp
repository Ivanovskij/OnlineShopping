<%--
  Created by IntelliJ IDEA.
  User: IOAdmin
  Date: 18.01.2018
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url value="resources/assets/css" var="css"/>
<spring:url value="resources/assets/js" var="js"/>
<spring:url value="resources/assets/images" var="images"/>

<c:set value="${pageContext.request.contextPath}" var="contextPath"/>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online Shopping - ${title}</title>

    <!-- script for active menu, nabigation.js -->
    <script>
        window.menu = '${title}';
    </script>

    <!-- Bootstrap Core CSS -->
    <link href="${contextPath}/${css}/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/${css}/bootstrap-readable-theme.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${contextPath}/${css}/shop-homepage.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <%@ include file="./shared/navbar.jsp" %>

    <!-- Page Content -->
    <!-- Loading the home content -->
    <c:if test="${userClickHome == true}">
        <%@include file="home.jsp"  %>
    </c:if>

    <c:if test="${userClickAbout == true}">
        <%@include file="about.jsp"  %>
    </c:if>

    <c:if test="${userClickAllProducts == true or
        userClickProductsByCategory == true}">
        <%@include file="listProducts.jsp"  %>
    </c:if>

    <c:if test="${userClickContact == true}">
        <%@include file="contact.jsp"  %>
    </c:if>

    <!-- Footer comes here -->
    <%@include file="./shared/footer.jsp" %>


    <!-- jQuery -->
    <script src="${contextPath}/${js}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${contextPath}/${js}/bootstrap.min.js"></script>

    <!-- DataTables Plugin -->
    <script src="${contextPath}/${js}/jquery.dataTables.js"></script>

    <!-- my scripts -->
    <script src="${contextPath}/${js}/navigation.js"></script>
    <script src="${contextPath}/${js}/datatableProducts.js"></script>
</body>

</html>
