<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 8:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.util.*" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>jsp的Include指令测试</title>
</head>

<body>
<%--使用include标签引入引入其它JSP页面--%>
<%@include file="/jspFragments/head.jspf" %>
<h1>网页主体内容</h1>
<%@include file="/jspFragments/foot.jspf" %>
</body>
</html>
