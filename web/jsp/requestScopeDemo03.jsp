<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 10:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>requestScopeDemo03</title>
</head>
<%
    //取得requestScopdemo01.jsp设置的属性
    String refName = (String)request.getAttribute("name");
    Date refDate = (Date)request.getAttribute("date");
%>
<%@page import="java.util.*"%>
<%
    //取得requestScopdemo01.jsp设置的属性
    String refName = (String)request.getAttribute("name");
    Date refDate = (Date)request.getAttribute("date");
%>
<h1>姓名：<%=refName%></h1>
<h1>日期：<%=refDate%></h1>
<h1>
    <%--使用超链接的形式跳转，这是客户端跳转，URL地址会改变--%>
    <a href="${pageContext.request.contextPath}/requestScopeDemo04.jsp">跳转到requestScopeDemo04.jsp</a>
</h1>

<body>
<h1>姓名：<%=refName%></h1>
<h1>日期：<%=refDate%></h1>
</body>
</html>
