package com.atguigu.dao;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Fankui;

import java.util.List;

public interface FankuiDao {



    public int deleteBookByTieziid(Integer fankuiId);







    Integer queryForPageTotalCount();

    List<Fankui> queryForPageItems(int begin, int pageSize);




}
