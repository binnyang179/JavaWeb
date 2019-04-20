<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/20/19
  Time: 9:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>use pageContext's forward method jump to other pages</title>
</head>
<%
    //use pagecontext's forward method jump to pagecontextForward.jsp page , / is current page
    pageContext.forward("/pagecontextforward .jsp");
    //使用pageContext.forward(relativeUrlPath)替代RequestDispatcher.forward(relativeUrlPath)
    //使用RequestDispatcher的forward方法实现的跳转方式
    //pageContext.getRequest().getRequestDispatcher("/pageContextDemo05.jsp").forward(request, response);
//    pageContext.getRequest().getRequestDispatcher("/fasd").forward(request,response);
%>
<body>

</body>
</html>
