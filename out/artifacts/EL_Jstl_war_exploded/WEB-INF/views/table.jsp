<%--
  Created by IntelliJ IDEA.
  User: k1212
  Date: 2019-03-06
  Time: 오전 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--파라미터로 r,c를 받아서
테이블을 동적 생성 : r행 c열의 테이블을 만들어 봅시다--%>
<%
    //파라미터 r과 c를 받아봅시다.
    String row = request.getParameter("r");
    String col = request.getParameter("c");

    int nRow;
    if (row == null) {
        nRow = 3;
    } else {
        nRow = Integer.valueOf(row);
    }

    int nCol;
    if (col == null) {
        nCol = 3;
    } else {
        nCol = Integer.valueOf(col);
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px" cellspacing="0" cellpadding="10px">
    <%--nRow 행, nCol 열 테이블 동적 생성--%>

    <%
        for (int i = 0; i < nRow; i++) {
    %>
    <tr>
        <%
            for (int j = 0; j < nCol; j++) {
        %>
        <td>cell(<%=i%>,<%=j%>)</td>
        <%
            }
        %>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
