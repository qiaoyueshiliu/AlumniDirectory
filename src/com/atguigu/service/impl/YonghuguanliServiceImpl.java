package com.atguigu.service.impl;

import com.atguigu.dao.YonghuguanliDao;
import com.atguigu.dao.impl.YonghuguanliDaoImpl;
import com.atguigu.pojo.Page;
import com.atguigu.pojo.User;
import com.atguigu.service.YonghuguanliService;

import java.util.List;

public class YonghuguanliServiceImpl implements YonghuguanliService {

    private YonghuguanliDao yonghuguanliDao = new YonghuguanliDaoImpl();

    @Override
    public void addUser(User user) {
        yonghuguanliDao.addUser(user);
    }

    @Override
    public void deleteUserById(Integer id) {
        yonghuguanliDao.deleteUserById(id);
    }

    @Override
    public void updateUser(User user) {
        yonghuguanliDao.updateUser(user);
    }

    @Override
    public User queryUserById(Integer id) {
        return yonghuguanliDao.queryUserById(id);
    }

    @Override
    public List<User> queryUsers() {
        return yonghuguanliDao.queryUsers();
    }

    @Override
    public Page<User> page(int pageNo, int pageSize) {
        Page<User> page = new Page<User>();

//        设置每页显示数量
        page.setPageSize(pageSize);

//        求总记录数
        Integer pageTotalCount = yonghuguanliDao.queryForPageTotalCount();
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
        List<User> items = yonghuguanliDao.queryForPageItems(begin,pageSize);
//        设置当前页数据
        page.setItems(items);

        return page;
    }
}
