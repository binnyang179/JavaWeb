<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>requestScopeDemo04</title>
</head>
//取得requestScopdemo01.jsp设置的属性
String refName = (String)request.getAttribute("name");
Date refDate = (Date)request.getAttribute("date");
%>

<body>
<h1>姓名：<%=refName%></h1>
<h1>日期：<%=refDate%></h1>
<h1>日期：<%=refDate%></h1>
</body>
</html>
