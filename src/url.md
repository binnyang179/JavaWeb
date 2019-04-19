```java
/**
* 1.ServletContext.getRealPath("/download/1.JPG")是用来获取服务器上的某个资源，
* 那么这个"/"就是给服务器用的，"/"此时代表的就是web工程
 * ServletContext.getRealPath("/download/1.JPG")表示的就是读取web工程下的download文件夹中的1.JPG这个资源
* 只要明白了"/"代表的具体含义，就可以很快写出要访问的web资源的绝对路径
*/
this.getServletContext().getRealPath("/download/1.JPG");
```

```java
跳转
this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
```

```java
<%@include file="/jspfragments/head.jspf" %>
<jsp:include page="/jspfragments/demo.jsp" />
```

```java
请求 response.sendRedirect("/JavaWeb_HttpServletResponse_Study_20140615/index.jsp");
```

"/"代表webapps目录的常见应用场景
①.使用sendRedirect实现请求重定向

1 response.sendRedirect("/JavaWeb_HttpServletResponse_Study_20140615/index.jsp");
　　服务器发送一个URL地址给浏览器，浏览器拿到URL地址之后，再去请求服务器，所以这个"/"是给浏览器使用的，此时"/"代表的就是webapps目录，"/JavaWeb_HttpServletResponse_Study_20140615/index.jsp"这个地址指的就是"webapps\JavaWeb_HttpServletResponse_Study_20140615\index.jsp"

　　response.sendRedirect("/项目名称/文件夹目录/页面");这种写法是将项目名称写死在程序中的做法，不灵活，万一哪天项目名称变了，此时就得改程序，所以推荐使用下面的灵活写法：

将

1 response.sendRedirect("/JavaWeb_HttpServletResponse_Study_20140615/index.jsp");
　　这种写法改成

1 response.sendRedirect(request.getContextPath()+"/index.jsp");
　　request.getContextPath()获取到的内容就是"/JavaWeb_HttpServletResponse_Study_20140615"，这样就比较灵活了，使用request.getContextPath()代替"/项目名称"，推荐使用这种方式，灵活方便！

②.使用超链接跳转

1 <a href="/JavaWeb_HttpServletResponse_Study_20140615/index.jsp">跳转到首页</a>
　　这是客户端浏览器使用的超链接跳转，这个"/"是给浏览器使用的，此时"/"代表的就是webapps目录。

　　使用超链接访问web资源，绝对路径的写法推荐使用下面的写法改进：

1 <a href="${pageContext.request.contextPath}/index.jsp">跳转到首页</a>
　　这样就可以避免在路径中出现项目的名称，使用${pageContext.request.contextPath}取代"/JavaWeb_HttpServletResponse_Study_20140615"

③.Form表单提交

1 <form action="/JavaWeb_HttpServletResponse_Study_20140615/servlet/CheckServlet" method="post">    
2         <input type="submit" value="提交">
3 </form>
　　这是客户端浏览器将form表单提交到服务器，所以这个"/"是给浏览器使用的，此时"/"代表的就是webapps目录。

 对于form表单提交中action属性绝对路径的写法，也推荐使用如下的方式改进：

1 <form action="${pageContext.request.contextPath}/servlet/CheckServlet" method="post">
2          <input type="submit" value="提交">
3 </form>
　　${pageContext.request.contextPath}得到的就是"/JavaWeb_HttpServletResponse_Study_20140615"

　　${pageContext.request.contextPath}的效果等同于request.getContextPath()，两者获取到的都是"/项目名称"

④.js脚本和css样式文件的引用

1  <%--使用绝对路径的方式引用js脚本--%>
2  <script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
3  <%--${pageContext.request.contextPath}与request.getContextPath()写法是得到的效果是一样的--%>
4  <script type="text/javascript" src="<%=request.getContextPath()%>/js/login.js"></script>
5  <%--使用绝对路径的方式引用css样式--%>
6  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" type="text/css"/>