//JDBC
package com.atguigu.connection;

import org.junit.Test;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
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
//        获取Driver实现类对象
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
//    方式二/对方式一的迭代，并不是有好几种方式可以连接数据库：
//    1、尽量不要出现第三方的配置一类
//    2、不出现第三方的api,使程序具有更好的可移植性
    @Test
    public void testConnection2() throws Exception{ // throws ClassNotFoundException 抛出异常,以防止找不到
//        1、获取Driver实现类对象:使用反射来实现
        Class clazz = Class.forName("com.mysql.jdbc.Driver"); // Class.forName( ) 静态方法的目的是为了动态加载类
//        Class.forName("").newInstance()返回的是object
        Driver driver = (Driver) clazz.newInstance(); //newInstance 要能保证调取成功，需要有构造器，而且权限足够

//        2、提供要连接的数据库
        String url = "jdbc:mysql://localhost:3306/book?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
//?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC
//        3、提供连接需要的用户名和密码
        Properties info = new Properties();
        info.setProperty("user","root");
        info.setProperty("password","123");

//        4、获取连接
        Connection conn = driver.connect(url, info);
        System.out.println(conn);
    }

//    方式三：使用 DriverManager 来替换 Driver
    @Test
    public void testConnetcion3() throws Exception{
//        1、获取 Driver 实现对象
        Class clazz = Class.forName("com.mysql.jdbc.Driver");
        Driver driver = (Driver) clazz.newInstance();

//        2、提供另外三个链接的基本信息
        String url = "jdbc:mysql://localhost:3306/book?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
        String user = "root";
        String password = "123";

//        注册驱动
        DriverManager.registerDriver(driver);

//        获取链接
        Connection conn = DriverManager.getConnection(url, user, password);
        System.out.println(conn);
    }

//    方式四：可以只是加载驱动，不用显示注册驱动
    @Test
    public void testConnetcion4() throws Exception{
//        1、提供另外三个链接的基本信息
        String url = "jdbc:mysql://localhost:3306/book?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
        String user = "root";
        String password = "123";

//        2、加载 Driver
        Class.forName("com.mysql.jdbc.Driver");
//        相较于方式三可以省略如下的操作：
//        Driver driver = (Driver) clazz.newInstance();
//        注册驱动
//        DriverManager.registerDriver(driver);
//        为什么可以省略上述操作呢？
        /**
         * 在 MySQL 的 Driver 实现类中，声明了如下的操作
         *        static{
         *             try {
         *                 java.sql.DriverManager.registerDriver(new Driver());
         *             }catch (SQLException E){
         *                 throw new RuntimeException("Can't register dirver!");
         *             }
         *         }
         */

//        3、获取链接
        Connection conn = DriverManager.getConnection(url, user, password);
        System.out.println(conn);

    }
}
