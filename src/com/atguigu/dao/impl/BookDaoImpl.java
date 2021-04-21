package com.atguigu.dao.impl;

import com.atguigu.dao.BookDao;
import com.atguigu.pojo.Book;

import java.lang.reflect.Field;
import java.util.List;

public class BookDaoImpl extends BaseDao implements BookDao {
    @Override
    public int addBook(Book book) {
        System.out.println("开始进行添加 addBook");
        String sql = "insert into " +
                        "t_book(`tieziid`,`biaoti`,`nickname`,`bankuai`,`neirong`,id,`diqu`) " +
                        "values (?,?,?,?,?,?,?);";
        System.out.println("addBook 添加操作完成");
        return update(sql,book.getTieziid(),book.getBiaoti(),book.getNickname(),book.getBankuai(),book.getNeirong(),book.getId(),book.getDiqu());
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
        String sql = "select * from t_book where tieziid = ?";
        System.out.println("queryBookById ForOne 查询结束");
        return queryForOne(Book.class,sql,tieziid);
    }

    @Override
    public List<Book> queryBooks() {
        System.out.println("开始查询 queryBooks ForList");
        String sql = "select * from t_book order by tieziid desc ";
        System.out.println("queryBooks ForList 查询结束");
        return queryForList(Book.class,sql);
    }

    @Override
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) as num from t_book";
        Number count = (Number)queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Book> queryForPageItems(int begin, int pageSize) {
        String sql = "select * ,t_user.nickname,t_book.id,t_book.id\n" +
                "from t_book,t_user\n" +
                "where t_book.id = t_user.id\n" +
                "order by t_book.tieziid desc \n" +
                "limit ?,?";
        return queryForList(Book.class,sql,begin,pageSize);
    }

    @Override
    public Integer queryForPageTotalCountByBankuai(String lunTanSoSuo) {
        String luntansosuo= "\""+lunTanSoSuo+"\"";
        String sql = "select count(*) as num " +
                "from t_book " +
                "where bankuai="+luntansosuo;
        Number count = (Number)queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Book> queryForPageItemsByBankuai(int begin, int pageSize, String lunTanSoSuo) {
        String sql = "select * " +
                "from t_book " +
                "where bankuai=? " +
                "order by tieziid desc " +
                "limit ?,? ";
        return queryForList(Book.class,sql,lunTanSoSuo,begin,pageSize);
    }

    @Override
    public Integer queryForPageTotalCountByDiqu(String diqu) {
        String Diqu= "\""+diqu+"\"";
        String sql = "select count(*) as num " +
                "from t_book " +
                "where diqu="+Diqu;
        Number count = (Number)queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Book> queryForPageItemsByDiqu(int begin, int pageSize, String diqu) {
        String sql = "select * " +
                "from t_book " +
                "where diqu=? " +
                "order by tieziid desc " +
                "limit ?,? ";
        return queryForList(Book.class,sql,diqu,begin,pageSize);
    }

}
