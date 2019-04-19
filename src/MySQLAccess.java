import javax.xml.transform.Source;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Scanner;
import java.util.stream.Stream;

public class MySQLAccess {
    private static Connection connection = null;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;
    private static Scanner scanner;
    private static SimpleDateFormat simpleDateFormat;
    private String sqlToExecute;

    static String URL = "jdbc:mysql://10.1.28.104:3306";
    static String user = "root";
    static String password = "123456";

    public MySQLAccess() {
        scanner = new Scanner(System.in);
        initDB();
        getSQL();
    }

    public static void initDB() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL+"?user="+user+"&password="+password+"&useSSL=false");
            System.out.println("Initial success");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void getSQL() {
        System.out.print("mysql>\n");
        String line = scanner.nextLine();
        StringBuilder sql = new StringBuilder(line);
        while (!line.endsWith(";")) {
            System.out.print("->");
            line = scanner.nextLine();
            sql.append(line);
        }
        sqlToExecute =  sql.toString();
        dispatch(sqlToExecute);
    }

    public void dispatch(String sql) {
        String[] sqlMethodGetReturn = {"select", "show"};
        String[] sqlMethodNonReturn = {"insert", "alter","drop","update","delete","use"};
        if ((Stream.of(sqlMethodGetReturn).anyMatch(s -> sql.toLowerCase().trim().startsWith(s)))) {
            querySQL(sql);
        } else if ((Stream.of(sqlMethodNonReturn).anyMatch(s -> sql.toLowerCase().trim().startsWith(s)))) {
            executeSQL(sql);
        } else if (sql.equals("quit;")) {
            close();
        } else {
            System.out.println("Your Input may be wrong, Please input again");
            getSQL();
        }
    }
    public void querySQL(String sql) {
        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            ResultSetMetaData resultSetMetaData = resultSet.getMetaData(); // 元数据
            int columnCount = resultSetMetaData.getColumnCount();
            for (int i = 0; i < columnCount; i++) {
                System.out.print(resultSetMetaData.getColumnLabel(i + 1) + " ");
            }
            System.out.println("\n----------------------");
            while (resultSet.next()) {
                for (int i = 0; i < columnCount; i++) {
                    System.out.print(resultSet.getString(i + 1) + " ");
                }
                System.out.println();
            }
            System.out.println("Query Done!");
            getSQL();
        } catch (SQLException e) {
            System.out.println("SQL Error: " + e.getMessage());
            getSQL();
        }

    }

    public void executeSQL(String sql) {
        try {
            preparedStatement = connection.prepareStatement(sql);
            if (!preparedStatement.execute()) {
                System.out.println("execute Done!");
            } else {
                System.out.println("failed");
            }
            getSQL();
        } catch (SQLException e) {
            System.out.println("SQL Error: " + e.getMessage());
            getSQL();
        }

    }

    public void close() {
        System.out.println("you quited the system");
        try {
            connection.close();
            preparedStatement.close();
            resultSet.close();
            scanner.close();
            System.exit(0);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static void main(String[] args) {
        new MySQLAccess();
    }
}
