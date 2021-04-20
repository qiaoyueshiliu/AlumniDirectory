package com.atguigu.dao.impl;

import com.atguigu.dao.BanjiDao;
import com.atguigu.dao.XuexiaoguanliDao;
import com.atguigu.pojo.User;

import java.util.List;

public class BanjiDaoImpl extends BaseDao implements BanjiDao {
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
        return update(sql,user.getUsername(),user.getPassword(),user.getNickname(),user.getXuexiao(),user.getBanji(),user.getQuanxian(),user.getId());
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
    /**
     * 获取总页数（学校班级）
     * @param xuexiao 获取到的班级
     * @param banji 获取到的学校
     * @return 返回总页面数
     */
    public Integer queryForPageTotalCount(String xuexiao,String banji) {
        String xueXiao = "\""+xuexiao+"\"";
        String banJi ="\""+banji+"\"";
        String sql = "select count(*) as num " +
                "from t_user " +
                "where xuexiao="+xueXiao+
                " and banji="+banJi;
        Number count = (Number)queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<User> queryForPageItems(int begin, int pageSize,String xuexiao,String banji) {
        String xueXiao = "\""+xuexiao+"\"";
        String banJi ="\""+banji+"\"";
        String sql = "select * " +
                "from t_user " +
                "where xuexiao="+xueXiao+" " +
                "and banji="+banJi+" " +
                "order by id desc " +
                "limit ?,? ";
        return queryForList(User.class,sql,begin,pageSize);
    }
}
