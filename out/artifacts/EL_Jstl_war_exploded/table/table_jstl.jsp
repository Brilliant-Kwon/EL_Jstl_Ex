<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: k1212
  Date: 2019-03-06
  Time: 오전 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:choose>
    <c:when test="${empty param.r}">
        <c:set var="nRow" value="3"/>
    </c:when>
    <c:otherwise>
        <c:set var="nRow" value="${param.r}"/>
    </c:otherwise>
</c:choose>


<c:choose>
    <c:when test="${empty param.c}">
        <c:set var="nCol" value="3"/>
    </c:when>
    <c:otherwise>
        <c:set var="nCol" value="${param.c}"/>
    </c:otherwise>
</c:choose>

<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="${nRow}" var="col">
    <tr>
        <c:forEach begin="1" end="${nCol}" var="col">
            <td>cell(${nRow},${nCol})</td>
        </c:forEach>
    </tr>
</c:forEach>

</body>
</html>
