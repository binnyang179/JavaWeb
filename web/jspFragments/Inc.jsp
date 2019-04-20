<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Inc</title>
</head>
<body>
<h1>接收从JspIncludeTagDemo03.jsp页面中传递过来的参数：</h1>
<h2><%=request.getParameter("parm1")%></h2>
<h2><%=request.getParameter("parm2")%></h2>
</body>
</html>
