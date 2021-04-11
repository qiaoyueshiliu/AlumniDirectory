package com.atguigu.service.impl;

import com.atguigu.dao.BookDao;
import com.atguigu.dao.impl.BookDaoImpl;
import com.atguigu.pojo.Book;
import com.atguigu.pojo.Page;
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

    @Override
    public Page<Book> page(int pageNo, int pageSize) {
        Page<Book> page = new Page<Book>();

//        设置当前页面
        page.setPageNo(pageNo);

//        设置每页显示数量
        page.setPageSize(pageSize);

//        求总记录数
        Integer pageTotalCount = bookDao.queryForPageTotalCount();
//        设置总记录数
        page.setPageTotalCount(pageTotalCount);

//        求总页码
        Integer pageTotal = pageTotalCount / pageSize;
        if (pageTotalCount % pageSize > 0){
            pageTotal+=1;
        }
//        设置总页码
        page.setPageTotal(pageTotal);

//        求当前页数据的开始索引
        int begin = (page.getPageNo() - 1) * pageSize;
//        求当前页数据
        List<Book> items = bookDao.queryForPageItems(begin,pageSize);
//        设置当前页数据
        page.setItems(items);

        return page;

    }
}
