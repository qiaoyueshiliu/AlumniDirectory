//JDBC
package com.atguigu.connection;

import org.junit.Test;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.SQLException;
import java.util.Properties;

//JDBC学习 07-获取数据库连接方式一
public class ConnectionTest {
//    方式一
    @Test
    public void testConnection1() throws SQLException {
//        声明的是一个driver MySQL的驱动叫什么
//        对 Driver 进行 ctrl + H 唤起列表
//        Driver driver = null;
        Driver driver = new com.mysql.jdbc.Driver();
//        String url = null;
//        url:http://loaclhost:8080/gmall/keyboard.jpg
//        jdbc 主协议 mysql 子协议
//        jdbc:mysql: 协议
//        localhost: ip地址
//        3306: 默认的端口号
//        book:数据库
        String url = "jdbc:mysql://localhost:3306/book?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
//        Properties info =null;
//        对象先做出来
//        将用户名和密码封装在 Properties 中
        Properties info = new Properties();
//        info.setProperty(key,value)
//        user:用户名 password:密码
        info.setProperty("user","root");
        info.setProperty("password","123");
        //        先定义为null,当你有了具体值
//        这是一个连接
        Connection conn = driver.connect(url,info);
//        看下是不是真的拿到了，打印一下
        System.out.println(conn);


    }
//    方式二/对方式一的迭代，并不是有好几种方式可以连接数据库
}
