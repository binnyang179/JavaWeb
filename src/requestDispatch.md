四、Request对象实现请求转发
4.1、请求转发的基本概念
　　请求转发：指一个web资源收到客户端请求后，通知服务器去调用另外一个web资源进行处理。
　　请求转发的应用场景：MVC设计模式

　　在Servlet中实现请求转发的两种方式：

　　1、通过ServletContext的getRequestDispatcher(String path)方法，
该方法返回一个RequestDispatcher对象，调用这个对象的forward方法可以实现请求转发。

例如：将请求转发的test.jsp页面

1 RequestDispatcher reqDispatcher =this.getServletContext().getRequestDispatcher("/test.jsp");
2 reqDispatcher.forward(request, response);
　　2、通过request对象提供的getRequestDispatche(String path)方法，
该方法返回一个RequestDispatcher对象，调用这个对象的forward方法可以实现请求转发。

例如：将请求转发的test.jsp页面

1 request.getRequestDispatcher("/test.jsp").forward(request, response);
　　request对象同时也是一个域对象(Map容器)，开发人员通过request对象在实现转发时，
把数据通过request对象带给其它web资源处理。

　request对象作为一个域对象(Map容器)使用时，主要是通过以下的四个方法来操作

setAttribute(String name,Object o)方法，
将数据作为request对象的一个属性存放到request对象中，
例如：request.setAttribute("data", data);
getAttribute(String name)方法，获取request对象的name属性的属性值，
例如：request.getAttribute("data")
removeAttribute(String name)方法，移除request对象的name属性，
例如：request.removeAttribute("data")
getAttributeNames方法，获取request对象的所有属性名，返回的是一个，
例如：Enumeration<String> attrNames = request.getAttributeNames();
4.2、请求重定向和请求转发的区别
　　一个web资源收到客户端请求后，通知服务器去调用另外一个web资源进行处理，称之为请求转发/307。
　　一个web资源收到客户端请求后，通知浏览器去访问另外一个web资源进行处理，称之为请求重定向/302。
