package com.atguigu.service;

import com.atguigu.pojo.Huodong;
import com.atguigu.pojo.Page;
import com.atguigu.pojo.Xunrenqishi;

public interface HuodongService {



    public void deleteBookByTieziid(Integer fankuiId);


    Page<Huodong> page(int pageNo, int pageSize);//更改




}
