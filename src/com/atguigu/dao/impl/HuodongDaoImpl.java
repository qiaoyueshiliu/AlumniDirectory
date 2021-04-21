package com.atguigu.dao.impl;

import com.atguigu.dao.HuodongDao;
import com.atguigu.dao.XunrenqishiDao;
import com.atguigu.pojo.Huodong;
import com.atguigu.pojo.Xunrenqishi;

import java.util.List;

public class HuodongDaoImpl extends BaseDao implements HuodongDao {//更改


    @Override
    public int deleteBookByTieziid(Integer tieziid) {
        /*查找反馈ID进行删除*/
//        System.out.println("开始进行删除 deleteBookById");
        String sql = "delete from huodong where huodongId = ?";//更改
//        System.out.println("deleteBookById 删除操作完成");
        return update(sql,tieziid);
    }


    @Override
    /*查看反馈的总数*/
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) as num from huodong";//更改
        Number count = (Number)queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    /*展示当前反馈页数据*/
    public List<Huodong> queryForPageItems(int begin, int pageSize) {//更改
        String sql = "select *\n" +//更改
                "from huodong,t_user\n" +//更改
                "where huodong.id = t_user.id\n" +//更改
                "order by huodong.huodongId desc \n" +//更改
                "limit ?,?";
        return queryForList(Huodong.class,sql,begin,pageSize);//更改
    }




}
