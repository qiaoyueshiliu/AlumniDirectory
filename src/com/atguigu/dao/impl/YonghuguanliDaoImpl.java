package com.atguigu.dao.impl;

import com.atguigu.dao.YonghuguanliDao;
import com.atguigu.pojo.User;

import java.util.List;

public class YonghuguanliDaoImpl extends BaseDao implements YonghuguanliDao {

    @Override
    public int addUser(User user) {
        String sql = "insert into t_user(`id`,`username`,`password`,`nickname`,`xuexiao`) values (?,?,?,?,?)";
        return update(sql,user.getId(),user.getUsername(),user.getPassword(),user.getNickname(),user.getXuexiao());
    }

    @Override
    public int deleteUserById(Integer id) {
        String sql = "delete from t_user where id = ?";
        return update(sql,id);
    }

    @Override
    public int updateUser(User user) {
        String sql = "update t_user set `username`=?,`password`=?,`nickname`=?,`xuexiao`=?";
        return update(sql,user.getUsername(),user.getPassword(),user.getNickname(),user.getXuexiao());
    }

    @Override
    public User queryUserById(Integer id) {
        String sql ="select `id`,`username`,`password`,`nickname`,`xuexiao`from t_user where id=?";
        return queryForOne(User.class,sql,id);
    }

    @Override
    public List<User> queryUsers() {
        String sql = "select `id`,`username`,`password`,`nickname`,`xuexiao`from t_user";
        return queryForList(User.class,sql);
    }
}
