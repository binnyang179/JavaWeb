import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * @author crab179
 * delete cookie
 * 禁用解决方案：URL重写
 * 　　response.encodeRedirectURL(java.lang.String url) 用于对sendRedirect方法后的url地址进行重写。
 * 　　response.encodeURL(java.lang.String url)用于对表单action和超链接的url地址进行重写
 */
@WebServlet(name = "CookieDemo02")
public class CookieDemo02 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //创建一个名字为lastAccessTime的cookie
        Cookie cookie = new Cookie("lastAccessTime", System.currentTimeMillis()+"");
        //将cookie的有效期设置为0，命令浏览器删除该cookie
        Cookie cookie1 = new Cookie("name", URLEncoder.encode("杨斌", "UTF-8"));
        response.addCookie(cookie1);
        cookie.setMaxAge(0);
        response.addCookie(cookie);
        //URLDecoder.decode(cookies[i].getValue(), "UTF-8")
        //在获取cookie中的中文数据时，再使用URLDecoder类里面的decode(String s, String enc)进行解码，例如：
    }
}
