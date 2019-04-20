<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sessionScopeDemo01</title>
</head>
<%
    //此时设置的属性只能够在与本页相关的任何页面中取得
    session.setAttribute("name","孤傲苍狼");  //设置属性
    session.setAttribute("date",new Date());
%>
<%--使用服务器端跳转--%>
<jsp:forward page="/sessionScopeDemo02.jsp"/>
<body>

</body>
</html>
