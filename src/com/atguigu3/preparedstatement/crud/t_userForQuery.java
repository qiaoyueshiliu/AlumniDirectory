package com.atguigu3.preparedstatement.crud;

import com.atguigu3.util.JDBCUtils;
import org.junit.Test;

import java.sql.Connection;

/**
 * 针对于t_user表的查询操作
 */
public class t_userForQuery {

    @Test
    public void testQuery1() throws Exception {
        System.out.println("获取数据库连接");
        Connection conn = JDBCUtils.getConnection();

    }
}
