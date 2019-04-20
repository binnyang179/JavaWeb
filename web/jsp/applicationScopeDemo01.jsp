<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>applicationScopeDemo01</title>
</head>
<body>
<%
    //此时设置的属性任何用户都可以取得
    application.setAttribute("name","孤傲苍狼");  //设置属性
    application.setAttribute("date",new Date());
%>
<h1><a href="${pageContext.request.contextPath}/applicationScopeDemo02.jsp">applicationScopeDemo02</a></h1>
</body>
</html>
