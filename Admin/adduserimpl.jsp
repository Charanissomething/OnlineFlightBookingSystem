<%@page import="com.src.dao.DaoService"%>
<%@page import="com.src.service.UserServiceImpl"%>
<%@page import="com.src.model.UsersFlight"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <c:set var="userid" value="${param.userid}" />
    <c:set var="username" value="${param.username}" />
    <c:set var="emailid" value="${param.email}" />
    <c:set var="password" value="${param.password}" />

    <c:catch var="exception">
        <c:set var="ds" value="<%= new com.src.dao.DaoService() %>" />
        <c:set var="st" value="${ds.myStatement}" />
        <c:set var="q" value="insert into UsersFlight values(${userid}, '${username}', '${emailid}', '${password}')" />
        <c:set var="x" value="${st.executeUpdate(q)}" />
    </c:catch>

    <c:choose>
        <c:when test="${empty exception}">
            User added successfully...
            <c:redirect url="adminhome.jsp" />
        </c:when>
        <c:otherwise>
            <c:redirect url="adduser.jsp" />
        </c:otherwise>
    </c:choose>
</body>
</html>
