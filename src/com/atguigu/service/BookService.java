package com.atguigu.service;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Page;

import java.util.List;

public interface BookService {

    public void addBook(Book book);

    public void deleteBookByTieziid(Integer tieziid);

    public void updateBook(Book book);

    public Book queryBookByTieziid(Integer tieziid);

    public List<Book> queryBooks();

    Page<Book> page(int pageNo, int pageSize);

    Page<Book> pageByBankuai(int pageNo, int pageSize, String lunTanSoSuo);

    Page<Book> pageByDiqu(int pageNo, int pageSize, String diqu);
}
