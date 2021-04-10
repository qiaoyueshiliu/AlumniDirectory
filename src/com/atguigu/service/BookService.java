package com.atguigu.service;

import com.atguigu.pojo.Book;

import java.util.List;

public interface BookService {

    public void addBook(Book book);

    public void deleteBookByTieziid(Integer tieziid);

    public void updateBook(Book book);

    public Book queryBookByTieziid(Integer tieziid);

    public List<Book> queryBooks();

}
