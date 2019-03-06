<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>데이터형</title>
</head>
<body>
<h1>데이터형</h1>
<p>


    <!-- servlet에서 넘어온 값들을 표현할때 사용한다. java보다 간결하다 -->
    <%--<%--%>
    <%--//        String sVal = (String) request.getAttribute("sVal");--%>
    <%--%>--%>
    <%--<%=sVal%>--%>

<ul>
    <li>정수형 : ${iVal}</li>
    <li>실수형 : ${fVal}</li>
    <li>문자형 : ${sVal}</li>
    <li>불린형 : ${bVal}</li>
    <li>null : ${nullVal}</li>
</ul>

<h3>사용자 정의 객체 추가</h3>
<ul>
    <li>객체 출력 : ${userVo}</li>
    <li>멤버 출력 : ${userVo.email}</li><%--getter 사용한 거임--%>
</ul>

</p>
</body>
</html>