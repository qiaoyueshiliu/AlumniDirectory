package com.atguigu.test;

import com.atguigu.pojo.Book;
import com.atguigu.service.BookService;
import com.atguigu.service.impl.BookServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class BookServiceTest {

    private BookService bookService = new BookServiceImpl();

    @Test
    public void addBook() {
        System.out.println("addBook 开始测试");
        bookService.addBook(new Book(null,"biaoti-2021-4-7 11:09:28","admin2021-4-7 11:09:50"));
        System.out.println("addBook 结束测试");
    }

    @Test
    public void deleteBookById() {
        System.out.println("deleteBookById 开始测试");
        bookService.deleteBookByTieziid(2);
        System.out.println("deleteBookById 结束测试");
    }

    @Test
    public void updateBook() {
        System.out.println("updateBook 开始测试");
        bookService.updateBook(new Book(4,"biaoti2021-4-7 11:16:39","admin2021-4-7 11:16:49"));
        System.out.println("updateBook 结束测试");
    }

    @Test
    public void queryBookById() {
        System.out.println("queryBookById 开始测试");
        System.out.println(bookService.queryBookByTieziid(3));
        System.out.println("queryBookById 结束测试");
    }

    @Test
    public void queryBooks() {
        System.out.println("queryBooks 开始测试");
        for (Book queryBook : bookService.queryBooks()){
            System.out.println(queryBook);
        }
        System.out.println("queryBooks 结束测试");
    }
}