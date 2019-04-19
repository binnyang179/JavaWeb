<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/18/19
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>form表单</title>
</head>

<body>
<form action="${pageContext.request.contextPath}/DoFormServletPreventSessionRepeat" method="post">
    <%--使用隐藏域存储生成的token--%>
    <%--
        <input type="hidden" name="token" value="<%=session.getAttribute("token") %>">
    --%>
    <%--使用EL表达式取出存储在session中的token--%>
    <input type="hidden" name="token" value="${token}"/>
    用户名：<input type="text" name="username">
    <input type="submit" value="提交">
</form>
</body>
</html>