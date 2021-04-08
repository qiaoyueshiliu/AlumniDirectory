package com.atguigu3.preparedstatement.crud;

import com.atguigu3.util.JDBCUtils;
import org.junit.Test;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * 针对于t_user表的查询操作
 */
public class CustomerForQuery {

    @Test
    public void testQuery1() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        try {
            System.out.println("正在获取数据库连接...");
            conn = JDBCUtils.getConnection();
//            String sql = "select id,name,email,birth from customers where id = ?";
            String sql = "select id,name,email,birth from customers where id = ?";
            conn.prepareStatement(sql);
            ps = conn.prepareStatement(sql);
            ps.setObject(1,1);
            System.out.println("正在执行 executeQuery(),并返回结果集...");
            resultSet = ps.executeQuery();
            System.out.println("正在处理结果集...");
//        next() ：判断结果集的下一条是否有数据，如果有数据返回 true ，并指针下移；如果返回 false 指针不下移。
            if (resultSet.next()){
    //            获取当前这条数据的各个字段值
                System.out.println("正在获取当前数据的字段值...");
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String email = resultSet.getString(3);
                Date birth = resultSet.getDate(4);
    //            方式一：
                System.out.println("[id="+id+",name="+name+",email="+email+",date="+birth+"]");
    //            方式二：
    //            Object[] date = new Object[]{id,name,email,birth};
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            System.out.println("关闭资源...");
            JDBCUtils.closeResource(conn,ps,resultSet);
        }
    }
}
