<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 11:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JspIncludeTagDemo03</title>
</head>
<body>
<h1>JspIncludeTagDemo03.jsp</h1>
<hr/>
<jsp:include page="/jspFragments/Inc.jsp">
    <jsp:param name="parm1" value="hello" />
    <jsp:param name="parm2" value="gacl" />
    <jsp:param name="fa"   value="asdfa"/>
</jsp:include>
</body>
</html>
