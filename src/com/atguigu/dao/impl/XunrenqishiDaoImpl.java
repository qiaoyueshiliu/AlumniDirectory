package com.atguigu.dao.impl;

import com.atguigu.dao.FankuiDao;
import com.atguigu.dao.XunrenqishiDao;
import com.atguigu.pojo.Fankui;
import com.atguigu.pojo.Xunrenqishi;

import java.util.List;

public class XunrenqishiDaoImpl extends BaseDao implements XunrenqishiDao {


    @Override
    public int deleteBookByTieziid(Integer tieziid) {
        /*查找反馈ID进行删除*/
//        System.out.println("开始进行删除 deleteBookById");
        String sql = "delete from xunrenqishi where xunrenqishiId = ?";
//        System.out.println("deleteBookById 删除操作完成");
        return update(sql,tieziid);
    }


    @Override
    /*查看反馈的总数*/
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) as num from xunrenqishi";
        Number count = (Number)queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    /*展示当前反馈页数据*/
    public List<Xunrenqishi> queryForPageItems(int begin, int pageSize) {
        String sql = "select *\n" +
                "from xunrenqishi,t_user\n" +
                "where xunrenqishi.id = t_user.id\n" +
                "order by xunrenqishi.xunrenqishiId desc \n" +
                "limit ?,?";
        return queryForList(Xunrenqishi.class,sql,begin,pageSize);
    }




}
