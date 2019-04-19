<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/18/19
  Time: 4:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/login.js"></script>

<%--　　${pageContext.request.contextPath}得到的就是"/JavaWeb_HttpServletResponse_Study_20140615"--%>

<%--　　${pageContext.request.contextPath}的效果等同于request.getContextPath()，两者获取到的都是"/项目名称"--%>

<h1>Simple Java Web App Demo</h1>
<p>To invoke the java helloWorld servlet click <a href="/JavaWeb_war_exploded/HelloWorld">here</a></p>
<p>To invoke the java hello servlet click <a href="/JavaWeb_war_exploded/HelloServlet">here</a></p>
<p>To invoke the java Demo01 click <a href="/JavaWeb_war_exploded/ServletDemo01">here</a></p>
<p>To invoke the java Demo02 click <a href="/JavaWeb_war_exploded/ServletDemo02">here</a></p>
<p>To invoke the java Demo03 click <a href="/JavaWeb_war_exploded/ServletDemo03">here</a></p>
<p>To invoke the java Demo04 click <a href="/JavaWeb_war_exploded/ServletDemo04">here</a></p>
<p>To invoke the java Demo05 click <a href="/JavaWeb_war_exploded/ServletDemo05">here</a></p>
<p>To invoke the java Demo06 click <a href="/JavaWeb_war_exploded/ServletDemo06">here</a></p>
<p>To invoke the java ServletDemo5 click <a href="/JavaWeb_war_exploded/ServletDemo5">here</a></p>
<p>To invoke the java ServletConfigDemo1 click <a href="/JavaWeb_war_exploded/ServletConfigDemo1">here</a></p>
<p>To invoke the java ServletContextDemo1 click <a href="/JavaWeb_war_exploded/ServletContextDemo1">here</a></p>
<p>To invoke the java ServletContextDemo2 click <a href="/JavaWeb_war_exploded/ServletContextDemo2">here</a></p>
<p>To invoke the java ServletContextDemo3 click <a href="/JavaWeb_war_exploded/ServletContextDemo3">here</a></p>
<p>To invoke the java ServletContextDemo4 click <a href="/JavaWeb_war_exploded/ServletContextDemo4">here</a></p>
<p>To invoke the java ServletContextDemo5 click <a href="/JavaWeb_war_exploded/ServletContextDemo5">here</a></p>
<p>To invoke the java ServletContextDemo6 click <a href="/JavaWeb_war_exploded/ServletContextDemo6">here</a></p>
<p>To invoke the java ServletContextDemo7 click <a href="/JavaWeb_war_exploded/ServletContextDemo7">here</a></p>
<p>To invoke the java ServletBothGetAndPost click <a href="/JavaWeb_war_exploded/ServletBothGetAndPost">here</a></p>

<p>To invoke the java ResponseDemo01 click <a href="/JavaWeb_war_exploded/ResponseDemo01">here</a></p>
<p>To invoke the java threadSafe click <a href="/JavaWeb_war_exploded/threadSafe">here</a></p>
<p>To invoke the java VerifyCodeServlet click <a href="/JavaWeb_war_exploded/VerifyCodeServlet">here</a></p>
<p>To invoke the java ServletContextDemo5 click <a href="/JavaWeb_war_exploded/ServletDemo5">here</a></p>
<p>To invoke the java ResponseDemoPrintWriter01 click <a href="/JavaWeb_war_exploded/ResponseDemoPrintWriter01">here</a></p>
<p>To invoke the java ResponseDownloadChineseFileByOutputStream click <a href="/JavaWeb_war_exploded/ResponseDownloadChineseFileByOutputStream">here</a></p>
<p>To invoke the java ResponseDownloadFile downloadFile click <a href="/JavaWeb_war_exploded/ResponseDownloadFile">here</a></p>
<p>This is a test click <a href="/JavaWeb_war_exploded/test">here</a> </p>
<p>To invoke the java ResponseImage  click <a href="/JavaWeb_war_exploded/ResponseImage">here</a></p>
<p>To invoke the java ResponseDownloadFilePrintWriter downloadFile click <a href="/JavaWeb_war_exploded/ResponseDownloadFilePrintWriter">here</a></p>
<p>To invoke the java ResponseNumber  click <a href="/JavaWeb_war_exploded/ResponseNumber">here</a></p>
<p>To invoke the java ResponseRedirect  click <a href="/JavaWeb_war_exploded/ResponseRedirect">here</a></p>
<p>To invoke the java random number  click <a href="/JavaWeb_war_exploded/DrawImage">here</a></p>

<p>To invoke the java authCode click <a href="/JavaWeb_war_exploded/jsp/authCode.jsp">here</a></p>
<p>To invoke the java authCodeMulti  click <a href="/JavaWeb_war_exploded/jsp/authCodeMulti.jsp">here</a></p>
<p>To invoke the java form for to get request info  click <a href="/JavaWeb_war_exploded/jsp/formForTest.jsp">here</a></p>

<a href="${pageContext.request.contextPath}/index.jsp">跳转到首页</a>

<p>To invoke the java 通过request对象获取客户端请求信息  click <a href="/JavaWeb_war_exploded/RequestDemo01">here</a></p>
<p>To invoke the java 通过request对象获取客户端请求头信息  click <a href="/JavaWeb_war_exploded/RequestDemo02">here</a></p>

<p>To invoke the java cookie info  click <a href="/JavaWeb_war_exploded/CookieDemo01">here</a></p>
<p>To invoke the java PublicSessionAfterCookielimited  click <a href="/JavaWeb_war_exploded/PublicSessionAfterCookielimited">here</a></p>
<p>To invoke the java SessionDemo1 info  click <a href="/JavaWeb_war_exploded/PublicSessionAfterCookielimited">here</a></p>
<p>To invoke the java SessionDemo1 info  click <a href="/JavaWeb_war_exploded/PublicSessionAfterCookielimited">here</a></p>
</body>
</html>
