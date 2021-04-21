package com.atguigu.dao;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Fankui;

import java.util.List;

public interface FankuiDao {

    public int addBook(Book book);

    public int deleteBookByTieziid(Integer fankuiId);

    public int updateBook(Book book);

    public Book queryBookByTieziid(Integer tieziid);

    public List<Book> queryBooks();

    Integer queryForPageTotalCount();

    List<Fankui> queryForPageItems(int begin, int pageSize);

    Integer queryForPageTotalCountByBankuai(String lunTanSoSuo);

    List<Book> queryForPageItemsByBankuai(int begin, int pageSize, String lunTanSoSuo);
}
