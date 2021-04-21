package com.atguigu.service;

import com.atguigu.pojo.Fankui;
import com.atguigu.pojo.Page;
import com.atguigu.pojo.Xunrenqishi;

public interface XunrenqishiService {



    public void deleteBookByTieziid(Integer fankuiId);


    Page<Xunrenqishi> page(int pageNo, int pageSize);




}
