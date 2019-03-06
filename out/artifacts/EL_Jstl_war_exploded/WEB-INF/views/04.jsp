﻿<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="vo.UserVo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>객체접근</h1>

<h2>자바문법</h2>
<%
    UserVo userVo = (UserVo) request.getAttribute("userVo");
    int num = (int) request.getAttribute("num");
    String str = (String) request.getAttribute("str");
%>
name = <%=userVo.getName()%> <br/>
email = <%=userVo.getEmail() %> <br/>
password = <%=userVo.getPassword() %> <br/>
gender = <%=userVo.getGender() %> <br/>

num = <%=num %> <br/>
str = <%=str %>    <br/>


<h2>el</h2>

<h3>Scope Test</h3>
<ul>
    <li>Request Scope : ${requestScope.userVo.name}</li>
    <li>Session Scope : ${sessionScope.userVo2.name}</li>
    <li>Application Scope : ${applicationScope.userVo3.name}</li>
</ul>

<h3>Scope Test 2 (영역생략)</h3>
<ul>
    <li>Request Scope : ${userVo.name}</li>
    <li>Session Scope : ${userVo2.name}</li>
    <li>Application Scope : ${userVo3.name}</li>
</ul>


</body>
</html>