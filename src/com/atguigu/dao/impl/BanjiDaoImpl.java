package com.atguigu.dao.impl;

import com.atguigu.dao.XuexiaoguanliDao;
import com.atguigu.pojo.User;

import java.util.List;

public class BanjiDaoImpl extends BaseDao implements XuexiaoguanliDao {
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
        String sql = "update t_user set `username`=?,`password`=?,`nickname`=?,`xuexiao`=?,banji=?,quanxian=? where id=?";
        return update(sql,user.getUsername(),user.getPassword(),user.getNickname(),user.getXuexiao(),user.getId(),user.getBanji(),user.getQuanxian());
    }

    @Override
    public User queryUserById(Integer id) {
        String sql ="select * from t_user where id=?";
        return queryForOne(User.class,sql,id);
    }

    @Override
    public List<User> queryUsers() {
        String sql = "select `id`,`username`,`password`,`nickname`,`xuexiao`from t_user";
        return queryForList(User.class,sql);
    }

    @Override
    public Integer queryForPageTotalCount(String xuexiao) {
        String xueXiao = "\""+xuexiao+"\"";
        String sql = "select count(*) as num " +
                "from t_user " +
                "where xuexiao="+xueXiao;
        Number count = (Number)queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<User> queryForPageItems(int begin, int pageSize,String xuexiao) {
        String xueXiao = "\""+xuexiao+"\"";
        String sql = "select * " +
                "from t_user " +
                "where xuexiao="+xueXiao+" " +
                "order by id desc " +
                "limit ?,? ";
        return queryForList(User.class,sql,begin,pageSize);
    }
}
