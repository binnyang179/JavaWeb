<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageScopeDemo04</title>
</head>
<body>
<%
    pageContext.setAttribute("name","yangbin",PageContext.REQUEST_SCOPE);  //设置属性，并指明属性范围
    pageContext.setAttribute("date",new Date(),PageContext.REQUEST_SCOPE); //设置属性，并指明属性范围
%>
<jsp:forward page="/pageScopeDemo05.jsp"/>
</body>
</html>
