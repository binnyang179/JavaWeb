<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/19/19
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" errorPage="/ErrorPage/error.jsp" pageEncoding="UTF-8" %>
<html>
<head>
    <title>测试page指令的errorPage属性</title>
</head>
<body>
<%
    //这行代码肯定会出错，因为除数是0，一运行就会抛出异常
    int x = 1/0;
%>
</body>
</html>
