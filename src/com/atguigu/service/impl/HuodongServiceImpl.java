package com.atguigu.service.impl;

import com.atguigu.dao.HuodongDao;
import com.atguigu.dao.XunrenqishiDao;
import com.atguigu.dao.impl.HuodongDaoImpl;
import com.atguigu.dao.impl.XunrenqishiDaoImpl;
import com.atguigu.pojo.Huodong;
import com.atguigu.pojo.Page;
import com.atguigu.pojo.Xunrenqishi;
import com.atguigu.service.HuodongService;
import com.atguigu.service.XunrenqishiService;

import java.util.List;

public class HuodongServiceImpl implements HuodongService {//更改

    private HuodongDao bookDao = new HuodongDaoImpl();//更改



    @Override
    public void deleteBookByTieziid(Integer XunrenqishiId) {
        bookDao.deleteBookByTieziid(XunrenqishiId);
    }



    @Override
    public Page<Huodong> page(int pageNo, int pageSize) {//更改
        Page<Huodong> page = new Page<Huodong>();//更改

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
        List<Huodong> items = bookDao.queryForPageItems(begin,pageSize);//更改
//        设置当前页数据
        page.setItems(items);

        return page;

    }



}
