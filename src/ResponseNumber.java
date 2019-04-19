import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

@WebServlet(name = "ResponseNumber")
public class ResponseNumber extends HttpServlet {

    private static final long serialVersionUID = 4312868947607181532L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        outputOneByOutputStream(response);
    }

    /**
     * 使用OutputStream流输出数字1
     * @param response
     * @throws IOException
     */
    public void outputOneByOutputStream(HttpServletResponse response) throws IOException{
        response.setHeader("content-type", "text/html;charset=UTF-8");
        OutputStream outputStream = response.getOutputStream();
        outputStream.write("使用OutputStream流输出数字1：".getBytes("UTF-8"));
        //outputStream.write(1);
        outputStream.write((1+"").getBytes());
        //　　这次可以看到输出来的1了，这说明了一个问题：在开发过程中，如果希望服务器输出什么浏览器就能看到什么，那么在服务器端都要以字符串的形式进行输出。
    }


    /**
     * 使用PrintWriter流输出数字1
     * @param response
     * @throws IOException
     */
    public void outputOneByPrintWriter(HttpServletResponse response) throws IOException{
        response.setHeader("content-type", "text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();//获取PrintWriter输出流
        out.write("使用PrintWriter流输出数字1：");
        out.write(1+"");
    }
}
