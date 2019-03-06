<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>EL 연산</h1>
<p>
    ${iVal + 10 * 100 / 2}<br>
    ${fVal + 10 * 100 /2}<br>
</p>
<p>
    ${iVal < 100}<br>
    ${iVal > 100 || fVal < 100}<br>
</p>
<h3>NULL 체크</h3>
<p>
    userVo는 null인가? : ${empty userVo}<br>
    userVo는 not null인가? : ${not empty userVo}<br>
</p>
</body>
</html>