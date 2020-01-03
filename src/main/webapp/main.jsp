<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: GMZ
  Date: 2019/12/17
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <table border="1" cellpadding="5" cellspacing="0" width="70%">
        <tr>
            <td>学号</td>
            <td>年龄</td>
            <td>姓名</td>
            <td>电话</td>
            <td>成绩</td>
        </tr>
        <c:forEach items="${studentsList}" var="list">
            <tr>
                <td>${list.id}</td>
                <td>${list.age}</td>
                <td>${list.name}</td>
                <td>${list.phone}</td>
                <td>${list.score}</td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
