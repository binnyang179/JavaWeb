<%--
  Created by IntelliJ IDEA.
  User: crab179
  Date: 4/18/19
  Time: 7:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request接收中文参数乱码问题</title>
</head>

<body>
<form action="${pageContext.request.contextPath}/RequestDemo04" method="get">
    姓名：<input type="text" name="name"/>
    <input type="submit" value="get方式提交表单">
</form>
<p>public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    /**
    *
    * 对于以get方式传输的数据，request即使设置了以指定的编码接收数据也是无效的，默认的还是使用ISO8859-1这个字符编码来接收数据
    */
    String name = request.getParameter("name");//接收数据
    name =new String(name.getBytes("ISO8859-1"), "UTF-8") ;//获取request对象以ISO8859-1字符编码接收到的原始数据的字节数组，然后通过字节数组以指定的编码构建字符串，解决乱码问题
    System.out.println("name："+name);
    }</p>
</body>
</html>