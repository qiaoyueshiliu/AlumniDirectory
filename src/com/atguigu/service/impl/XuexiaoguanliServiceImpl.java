package com.atguigu.service.impl;

import com.atguigu.dao.XuexiaoguanliDao;
import com.atguigu.dao.impl.XuexiaogianliDaoImpl;
import com.atguigu.pojo.Page;
import com.atguigu.pojo.User;
import com.atguigu.service.XunxiaogianliService;

import java.util.List;

public class XuexiaoguanliServiceImpl implements XunxiaogianliService {

    private XuexiaoguanliDao xuexiaoguanliDao = new XuexiaogianliDaoImpl();

    @Override
    public void addUser(User user) {
        xuexiaoguanliDao.addUser(user);
    }

    @Override
    public void deleteUserById(Integer id) {
        xuexiaoguanliDao.deleteUserById(id);
    }

    @Override
    public void updateUser(User user) {
        xuexiaoguanliDao.updateUser(user);
    }

    @Override
    public User queryUserById(Integer id) {
        return xuexiaoguanliDao.queryUserById(id);
    }

    @Override
    public List<User> queryUsers() {
        return xuexiaoguanliDao.queryUsers();
    }

    @Override
    public Page<User> page(int pageNo, int pageSize,String xuexiao) {
        Page<User> page = new Page<User>();

//        设置每页显示数量
        page.setPageSize(pageSize);

//        求总记录数
        Integer pageTotalCount = xuexiaoguanliDao.queryForPageTotalCount(xuexiao);
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
        List<User> items = xuexiaoguanliDao.queryForPageItems(begin,pageSize,xuexiao);
//        设置当前页数据
        page.setItems(items);

        return page;
    }
}
