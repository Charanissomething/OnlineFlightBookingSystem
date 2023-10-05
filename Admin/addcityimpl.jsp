<%@page import="com.src.dao.DaoService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <c:set var="city" value="${param.city}" />

    <c:catch var="exception">
        <c:set var="ds" value="<%= new com.src.dao.DaoService() %>" />
        <c:set var="st" value="${ds.myStatement}" />
        <c:set var="q" value="insert into Cities values('${city}')" />
        <c:set var="x" value="${st.executeUpdate(q)}" />
    </c:catch>

    <c:choose>
        <c:when test="${empty exception}">
            <c:redirect url="adminhome.jsp" />
        </c:when>
        <c:otherwise>
            <c:redirect url="addcity.jsp" />
        </c:otherwise>
    </c:choose>
</body>
</html>
