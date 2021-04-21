package com.atguigu.dao;

import com.atguigu.pojo.Fankui;
import com.atguigu.pojo.Xunrenqishi;

import java.util.List;

public interface XunrenqishiDao {


    public int deleteBookByTieziid(Integer fankuiId);

    Integer queryForPageTotalCount();

    List<Xunrenqishi> queryForPageItems(int begin, int pageSize);




}
