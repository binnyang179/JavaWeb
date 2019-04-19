<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/18/19
  Time: 8:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Request对象实现请求转发</title>
</head>

<body>
使用普通方式取出存储在request对象中的数据：
<h3 style="color:red;"><%=(String)request.getAttribute("data")%></h3>
使用EL表达式取出存储在request对象中的数据：
<h3 style="color:red;">${data}</h3>
</body>
</html>