package com.atguigu.dao.impl;

import com.atguigu.dao.FankuiDao;
import com.atguigu.pojo.Book;
import com.atguigu.pojo.Fankui;

import java.util.List;

public class FankuiDaoImpl extends BaseDao implements FankuiDao {


    @Override
    public int deleteBookByTieziid(Integer tieziid) {
        /*查找反馈ID进行删除*/
        System.out.println("开始进行删除 deleteBookById");
        String sql = "delete from fankui where fankuiId = ?";
        System.out.println("deleteBookById 删除操作完成");
        return update(sql,tieziid);
    }







    @Override
    /*查看反馈的总数*/
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) as num from fankui";
        Number count = (Number)queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    /*展示当前反馈页数据*/
    public List<Fankui> queryForPageItems(int begin, int pageSize) {
        String sql = "select *\n" +
                "from fankui,t_user\n" +
                "where fankui.id = t_user.id\n" +
                "order by fankui.fankuiId desc \n" +
                "limit ?,?";
        return queryForList(Fankui.class,sql,begin,pageSize);
    }




}
