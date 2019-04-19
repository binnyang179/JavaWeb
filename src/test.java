import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet(name = "test")
public class test extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        downloadFileByOutputStream(response);
//
//        2.1、获得客户机信息
//　　getRequestURL方法返回客户端发出请求时的完整URL。
//　　getRequestURI方法返回请求行中的资源名部分。
//　　getQueryString 方法返回请求行中的参数部分。
//　　getPathInfo方法返回请求URL中的额外路径信息。额外路径信息是请求URL中的位于Servlet的路径之后和查询参数之前的内容，它以“/”开头。
//　　getRemoteAddr方法返回发出请求的客户机的IP地址。
//　　getRemoteHost方法返回发出请求的客户机的完整主机名。
//　　getRemotePort方法返回客户机所使用的网络端口号。
//　　getLocalAddr方法返回WEB服务器的IP地址。
//　　getLocalName方法返回WEB服务器的主机名。

    }

    /**
     * 下载文件，通过OutputStream流
     *
     * @param response
     * @throws FileNotFoundException
     * @throws IOException
     */
    private void downloadFileByOutputStream(HttpServletResponse response)
            throws FileNotFoundException, IOException {
        //1.获取要下载的文件的绝对路径
        String realPath = this.getServletContext().getRealPath("/image/D0yBXOTU4AEbsdS3n.jpeg");
        //2.获取要下载的文件名
        String fileName = realPath.substring(realPath.lastIndexOf("\\") + 1);

        response.getWriter().println(realPath);
        response.getWriter().println(fileName);
    }
}
