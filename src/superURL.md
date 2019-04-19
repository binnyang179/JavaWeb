## 超链接的形式需要解决乱码
```java
String name = request.getParameter("name");
name =new String(name.getBytes("ISO8859-1"), "UTF-8");
```

###另外，需要提的一点就是URL地址后面如果跟了中文数据，那么中文参数最好使用URL编码进行处理，如下所示：
```java
 <a href="${pageContext.request.contextPath}/servlet/RequestDemo05?userName=" +
  "gacl&name=<%=URLEncoder.encode("徐达沛", "UTF-8")%>">点击</a>
```
3.6、提交中文数据乱码问题总结
　　1、如果提交方式为post，想不乱码，只需要在服务器端设置request对象的编码即可，
    客户端以哪种编码提交的，服务器端的request对象就以对应的编码接收，
    比如客户端是以UTF-8编码提交的，
    那么服务器端request对象就以UTF-8编码接收(request.setCharacterEncoding("UTF-8"))

　　2、如果提交方式为get，设置request对象的编码是无效的，
    request对象还是以默认的ISO8859-1编码接收数据，因此要想不乱码，
    只能在接收到数据后再手工转换，步骤如下：

　　1).获取获取客户端提交上来的数据，得到的是乱码字符串,data="???è?????"

　　 String data = request.getParameter("paramName"); 

　　2).查找ISO8859-1码表，得到客户机提交的原始数据的字节数组

　　 byte[] source = data.getBytes("ISO8859-1"); 

　　3).通过字节数组以指定的编码构建字符串，解决乱码

　　 data = new String(source, "UTF-8"); 

　　通过字节数组以指定的编码构建字符串，
    这里指定的编码是根据客户端那边提交数据时使用的字符编码来定的，
    如果是GB2312，那么就设置成data = new String(source, "GB2312")，
    如果是UTF-8，那么就设置成data = new String(source, "UTF-8")