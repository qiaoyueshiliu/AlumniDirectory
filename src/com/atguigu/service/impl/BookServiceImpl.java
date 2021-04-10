package com.atguigu.service.impl;

import com.atguigu.dao.BookDao;
import com.atguigu.dao.impl.BookDaoImpl;
import com.atguigu.pojo.Book;
import com.atguigu.service.BookService;

import java.util.List;

public class BookServiceImpl implements BookService {

    private BookDao bookDao = new BookDaoImpl();

    @Override
    public void addBook(Book book) {
        bookDao.addBook(book);
    }

    @Override
    public void deleteBookByTieziid(Integer tieziid) {
        bookDao.deleteBookByTieziid(tieziid);
    }

    @Override
    public void updateBook(Book book) {
        bookDao.updateBook(book);
    }

    @Override
    public Book queryBookByTieziid(Integer tieziid) {
        return bookDao.queryBookByTieziid(tieziid);
    }

    @Override
    public List<Book> queryBooks() {
        return bookDao.queryBooks();
    }
}
