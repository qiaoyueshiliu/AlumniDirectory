package com.atguigu.service;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Fankui;
import com.atguigu.pojo.Page;

import java.util.List;

public interface FankuiService {



    public void deleteBookByTieziid(Integer fankuiId);


    Page<Fankui> page(int pageNo, int pageSize);




}
