package com.atguigu.dao;

import com.atguigu.pojo.Book;

import java.util.List;

public interface BookDao {

    public int addBook(Book book);

    public int deleteBookByTieziid(Integer tieziid);

    public int updateBook(Book book);

    public Book queryBookByTieziid(Integer tieziid);

    public List<Book> queryBooks();

    Integer queryForPageTotalCount();

    List<Book> queryForPageItems(int begin, int pageSize);

    Integer queryForPageTotalCountByBankuai(String lunTanSoSuo);

    List<Book> queryForPageItemsByBankuai(int begin, int pageSize, String lunTanSoSuo);
}
