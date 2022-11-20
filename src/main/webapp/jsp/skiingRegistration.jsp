<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form method="POST" action="${contextPath}/skiingSave" enctype="multipart/form-data">
    <input type="number" name="price"  placeholder="Price" class="form-control"
           autofocus="true">

    <input type="file" name="image" class="form-control">

    <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
</form:form>
</body>
</html>
