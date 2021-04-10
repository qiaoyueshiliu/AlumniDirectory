package com.atguigu.test;

import com.atguigu.dao.BookDao;
import com.atguigu.dao.impl.BaseDao;
import com.atguigu.dao.impl.BookDaoImpl;
import com.atguigu.pojo.Book;
import org.junit.Test;

import static org.junit.Assert.*;

public class BookDaoTest {

    private BookDao bookDao = new BookDaoImpl();

    @Test
    public void addBook() {
        System.out.println("addBook 测试开始");
//        bookDao.addBook(new Book(null,"admin5的测试","admin5",null,null));
        System.out.println("addBook 测试结束");
    }

    @Test
    public void deleteBookById() {
        System.out.println("deleteBookById 测试开始");
        bookDao.deleteBookByTieziid(7);
        System.out.println("deleteBookById 测试结束");
    }

    @Test
    public void updateBook() {
        System.out.println("updateBook 测试开始");
//        bookDao.updateBook(new Book(3,"admin6的测试","admin6",null,null));
        System.out.println("updateBook 测试结束");
    }

    @Test
    public void queryBookById() {
        System.out.println("queryBookById 测试开始");
        System.out.println(bookDao.queryBookByTieziid(3));
        System.out.println("queryBookById 测试结束");
    }

    @Test
    public void queryBooks() {
        System.out.println("queryBooks 测试开始");
        for (Book queryBook : bookDao.queryBooks()) {
            System.out.print("第"+queryBook.getTieziid()+"条:");
            System.out.println(queryBook);
        }
        System.out.println("queryBooks 测试结束");
    }
}