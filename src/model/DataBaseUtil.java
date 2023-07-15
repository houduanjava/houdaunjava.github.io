package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseUtil {
    //数据库连接类

    //获取数据库连接
    public static Connection getConnection() throws ClassNotFoundException, SQLException {


        Connection conn=null;
        String RL="jdbc:mysql://localhost:3306/mys?serverTimezone=UTC&characterEncoding=utf-8";
        String user="root";
        String password2="396520";

        Class.forName("com.mysql.cj.jdbc.Driver");
        //连接数据库
        conn= DriverManager.getConnection(RL,user,password2);

        return conn;



    }

    //关闭数据库连接

    public static void closeConnection(Connection conn) throws SQLException {
        if(conn!=null){
            conn.close();
        }
    }
}
