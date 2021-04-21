package com.atguigu.dao;

import com.atguigu.pojo.Huodong;
import com.atguigu.pojo.Xunrenqishi;

import java.util.List;

public interface HuodongDao {


    public int deleteBookByTieziid(Integer fankuiId);

    Integer queryForPageTotalCount();

    List<Huodong> queryForPageItems(int begin, int pageSize);//更改




}
