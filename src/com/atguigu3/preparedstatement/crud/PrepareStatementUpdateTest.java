package com.atguigu3.preparedstatement.crud;

import com.atguigu3.util.JDBCUtils;
import org.junit.Test;

import java.io.InputStream;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Properties;

/**
 * 使用PrepareStatement来替换Statement，实现对数据表的增删改操作
 *
 * 增删改；查
 *
 */
public class PrepareStatementUpdateTest {
//    修改customers表的一条记录
    @Test
    public void testUpdate(){
        Connection conn = null;
        PreparedStatement ps = null;
        try {
//        1、获取数据库连接
            conn = JDBCUtils.getConnection();
            System.out.println("已成功连接数据库...");
//        2、预编译 sql 语句，返回 PrepareStatement 的实例
            String sql ="update customers set name = ? where  id = ?";
            ps = conn.prepareStatement(sql);
//        3、填充占位符
            ps.setObject(1,"莫扎特");
            ps.setObject(2,1);
//        4、执行
            ps.execute();
            System.out.println("进行数据更改...");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
//        5、资源的关闭
            JDBCUtils.closeResource(conn,ps);
            System.out.println("关闭数据库连接...");
        }
    }

//向customers表中添加一条数据
    @Test
    public void testInsert() {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
//        1、读取四个配置文件中的基本信息
            InputStream is = ClassLoader.getSystemClassLoader().getResourceAsStream("JDBC-11.properties");
            Properties pros = new Properties();
            pros.load(is);
            String user = pros.getProperty("user");
            String password = pros.getProperty("password");
            String url = pros.getProperty("url");
            String driverClass = pros.getProperty("driverClass");
//        2、加载驱动
            Class.forName(driverClass);
//        3、获取链接
            conn = DriverManager.getConnection(url, user, password);
            System.out.println(conn + " 数据库连接成功 ");
//        4、预编译sql语句，返回PreparedStatement的实例
            String sql = "insert into customers(name ,email,birth)values(?,?,?) ";//?:占位符
            ps = conn.prepareStatement(sql);
//        5、填充占位符
            ps.setString(1,"哪吒");
            ps.setString(2,"nezha@gmail.com");
//        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        System.out.println(df.format(new java.util.Date()));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date date = sdf.parse("1000-01-01");
            ps.setDate(3,new Date(date.getTime()));
//        6、执行sql操作
            ps.execute();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            //        7、资源的关闭
            try {
                if (ps != null)
                    ps.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            try {
                if (conn != null)
                    conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }
}
