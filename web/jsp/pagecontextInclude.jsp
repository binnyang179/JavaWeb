<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>use pagecontext include method import resource</title>
</head>
<%
    pageContext.include("/jspFragments/head.jsp");
%>

<%
    pageContext.include("/jspFragments/foot.jsp");
%>
<hr/>

<%--<jsp:include page="jspFragments/head.jsp"/>--%>
<%--<jsp:include page="jspFragments/foot.jspf"/>--%>
<body>
<%--<h1>姓名：<%=refName%></h1>--%>
<%--<h1>日期：<%=refDate%></h1>--%>
</body>
</html>
