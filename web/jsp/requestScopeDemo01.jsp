<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 10:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>requestScopeDemo01</title>
</head>
<%
    request.setAttribute("name","孤傲苍狼");
    request.setAttribute("date",new Date());
%>
<%--使用jsp:forward标签进行服务器端跳转--%>
<jsp:forward page="/requestScopeDemo02.jsp" />
<body>

</body>
</html>
