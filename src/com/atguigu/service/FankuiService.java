package com.atguigu.service;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Fankui;
import com.atguigu.pojo.Page;

import java.util.List;

public interface FankuiService {

    public void addBook(Book book);

    public void deleteBookByTieziid(Integer fankuiId);

    public void updateBook(Book book);

    public Book queryBookByTieziid(Integer tieziid);

    public List<Book> queryBooks();

    Page<Fankui> page(int pageNo, int pageSize);

    Page<Book> pageByBankuai(int pageNo, int pageSize, String lunTanSoSuo);


}
