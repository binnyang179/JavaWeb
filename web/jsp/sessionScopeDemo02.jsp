<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sessionScopeDemo02</title>
</head>
<%
    String refName = (String)session.getAttribute("name");
    Date refDate = (Date)session.getAttribute("date");
%>
<body>

<h1>姓名：<%=refName%></h1>
<h1>日期：<%=refDate%></h1>
<%--使用超链接这种客户端跳转--%>
<h1><a href="${pageContext.request.contextPath}/sessionScopeDemo03.jsp">sessionScopeDemo03</a></h1>
</body>
</html>
