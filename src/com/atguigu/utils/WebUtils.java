//Book
package com.atguigu.utils;

import com.atguigu.pojo.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;

public class WebUtils {

    public static void copyParamToBean(HttpServletRequest req,Object bean){
        try {
//            User user = new User();
            System.out.println("注入之前：" + bean);
            /**
             * 把所有请求的参数都注入到user对象中
             */
            System.out.println(req.getParameterMap());
            BeanUtils.populate(bean,req.getParameterMap());
            System.out.println("注入之后：" + bean);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
