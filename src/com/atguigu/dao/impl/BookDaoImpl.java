package com.atguigu.dao.impl;

import com.atguigu.dao.BookDao;
import com.atguigu.pojo.Book;

import java.util.List;

public class BookDaoImpl extends BaseDao implements BookDao {
    @Override
    public int addBook(Book book) {
        System.out.println("开始进行添加 addBook");
        String sql = "insert into t_book(`tieziid`,`biaoti`,`nickname`,`bankuai`,`neirong`) values (?,?,?,?,?);";
        System.out.println("addBook 添加操作完成");
        return update(sql,book.getTieziid(),book.getBiaoti(),book.getNickname(),book.getBankuai(),book.getNeirong());
    }

    @Override
    public int deleteBookByTieziid(Integer tieziid) {
        System.out.println("开始进行删除 deleteBookById");
        String sql = "delete from t_book where tieziid = ?";
        System.out.println("deleteBookById 删除操作完成");
        return update(sql,tieziid);
    }

    @Override
    public int updateBook(Book book) {
        System.out.println("开始进行更改 updateBook");
        String sql = "update t_book set `biaoti`=?,`nickname`=? where tieziid = ?";
        System.out.println("updateBook 更改操作结束");
        return update(sql,book.getBiaoti(),book.getNickname(),book.getTieziid());
    }

    @Override
    public Book queryBookByTieziid(Integer tieziid) {
        System.out.println("开始查询 queryBookById ForOne");
        String sql = "select `tieziid`,`biaoti`,`nickname`,`createtime`,`bankuai`,`neirong`from t_book where tieziid = ?";
        System.out.println("queryBookById ForOne 查询结束");
        return queryForOne(Book.class,sql,tieziid);
    }

    @Override
    public List<Book> queryBooks() {
        System.out.println("开始查询 queryBooks ForList");
        String sql = "select `tieziid`,`biaoti`,`nickname`,`createtime`,`bankuai`,`neirong`from t_book order by tieziid desc";
        System.out.println("queryBooks ForList 查询结束");
        return queryForList(Book.class,sql);
    }

}
