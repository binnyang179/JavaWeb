<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jsp的jsp:include标签测试</title>
</head>

<body>
<%--使用jsp:include标签引入其它JSP页面--%>
<jsp:include page="/jspfragments/head.jsp"/>
<h1>网页主体内容</h1>
<jsp:include page="/jspfragments/foot.jsp"/>
</body>
</html>
