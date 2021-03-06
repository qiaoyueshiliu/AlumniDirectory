package com.atguigu.test;

import com.atguigu.dao.BookDao;
import com.atguigu.dao.impl.BaseDao;
import com.atguigu.dao.impl.BookDaoImpl;
import com.atguigu.pojo.Book;
import org.junit.Test;

import java.util.List;

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

    @Test
    public void queryForPageTotalCount() {
        System.out.println("打印帖子总数：");
        System.out.println( bookDao.queryForPageTotalCount()) ;
    }

    @Test
    public void queryForPageItems() {
        for (Book book : bookDao.queryForPageItems(4, 4)) {
            System.out.println(book);
        }
    }

    @Test
    public void queryForPageTotalCountByBankuai() {
        System.out.println("打印帖子总数：");
        System.out.println( bookDao.queryForPageTotalCountByBankuai("剑桥大学")) ;
    }

    @Test
    public void queryForPageItemsByBankuai() {
        for (Book book : bookDao.queryForPageItemsByBankuai(4, 4,"剑桥大学")) {
            System.out.println(book);
        }
    }
}