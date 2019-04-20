<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 10:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageScopeDemo05</title>
</head>
<body>
<%@page import="java.util.*"%>
<%
    //使用request对象获取属性
    String refName = (String)request.getAttribute("name");
    Date refDate = (Date)request.getAttribute("date");
    //也可以使用pageContext对象获取属性，只要在获取时指明对象的属性范围即可
    String refName2 = (String)pageContext.getAttribute("name", PageContext.REQUEST_SCOPE);
    Date refDate2 = (Date) pageContext.getAttribute("date", PageContext.REQUEST_SCOPE);
%>
使用request对象获取属性：
<h1>姓名：<%=refName%></h1>
<h1>日期：<%=refDate%></h1>
使用pageContext对象获取属性：
<h1>姓名：<%=refName2%></h1>
<h1>日期：<%=refDate2%></h1>
</body>
</html>
