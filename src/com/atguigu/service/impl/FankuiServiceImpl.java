package com.atguigu.service.impl;

import com.atguigu.dao.BookDao;
import com.atguigu.dao.FankuiDao;
import com.atguigu.dao.impl.BookDaoImpl;
import com.atguigu.dao.impl.FankuiDaoImpl;
import com.atguigu.pojo.Book;
import com.atguigu.pojo.Fankui;
import com.atguigu.pojo.Page;
import com.atguigu.service.BookService;
import com.atguigu.service.FankuiService;

import java.util.List;

public class FankuiServiceImpl implements FankuiService {

    private FankuiDao bookDao = new FankuiDaoImpl();



    @Override
    public void deleteBookByTieziid(Integer fankuiId) {
        bookDao.deleteBookByTieziid(fankuiId);
    }



    @Override
    public Page<Fankui> page(int pageNo, int pageSize) {
        Page<Fankui> page = new Page<Fankui>();

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

//        设置当前页面
            page.setPageNo(pageNo);

//        求当前页数据的开始索引
        int begin = (page.getPageNo() - 1) * pageSize;
//        求当前页数据
        List<Fankui> items = bookDao.queryForPageItems(begin,pageSize);
//        设置当前页数据
        page.setItems(items);

        return page;

    }



}
