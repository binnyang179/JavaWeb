<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    String refName = (String)pageContext.getAttribute("name");
    Date refDate = (Date)pageContext.getAttribute("date");
%>

<body>
<h1>姓名：<%=refName%></h1>
<h1>日期：<%=refDate%></h1>
</body>
</html>
