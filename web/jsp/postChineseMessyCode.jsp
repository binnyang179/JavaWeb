<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/18/19
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request接收中文参数乱码问题</title>
</head>

<body>
<h1>request接收中文参数乱码问题</h1>
<form action="<%=request.getContextPath()%>/RequestDemo04" method="post">
    用户名：<input type="text" name="userName"/>
    <input type="submit" value="post方式提交表单">
</form>
<textarea>public void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
/**
* 客户端是以UTF-8编码传输数据到服务器端的，所以需要设置服务器端以UTF-8的编码进行接收，否则对于中文数据就会产生乱码
*/
request.setCharacterEncoding("UTF-8");
String userName = request.getParameter("userName");
System.out.println("userName："+userName);
}</textarea>
</body>
</html>
