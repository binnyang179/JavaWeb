import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/**
 * @author crab179
 * 　　所以，当浏览器禁用了cookie后，
 *     就可以用URL重写这种解决方案解决Session数据共享问题。
 *     而且response. encodeRedirectURL(java.lang.String url) 和response. encodeURL(java.lang.String url)是两个非常智能的方法，
 *     当检测到浏览器没有禁用cookie时，那么就不进行URL重写了。我们在没有禁用cookie的火狐浏览器下访问.
 *
 *      当需要在程序中手动设置Session失效时，可以手工调用session.invalidate方法，摧毁session。
 *       1 HttpSession session = request.getSession();
 *       2 //手工调用session.invalidate方法，摧毁session
 *       3 session.invalidate();
 */
@WebServlet(name = "PublicSessionAfterCookielimited")
public class PublicSessionAfterCookielimited extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //创建Session
        request.getSession();
        out.write("本网站有如下书：<br/>");
        Set<Map.Entry<String,Book>> set = DB.getAll().entrySet();
        for(Map.Entry<String,Book> me : set){
            Book book = me.getValue();
            String url =request.getContextPath()+ "/BuyServlet?id=" + book.getId();
            //response. encodeURL(java.lang.String url)用于对表单action和超链接的url地址进行重写
            url = response.encodeURL(url);//将超链接的url地址进行重写
            out.println(book.getName()  + "   <a href='"+url+"'>购买</a><br/>");
        }
    }
}
/**
 * @author crab179
 * 模拟数据库
 */
class DB{
    private static Map<String,Book> map = new LinkedHashMap<String,Book>();
    static{
        map.put("1", new Book("1","javaweb开发"));
        map.put("2", new Book("2","spring开发"));
        map.put("3", new Book("3","hibernate开发"));
        map.put("4", new Book("4","struts开发"));
        map.put("5", new Book("5","ajax开发"));
    }

    public static Map<String,Book> getAll(){
        return map;
    }
}

class Book{

    private String id;
    private String name;

    public Book() {
        super();
    }
    public Book(String id, String name) {
        super();
        this.id = id;
        this.name = name;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
}
