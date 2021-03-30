//Book
package com.atguigu.utils;

import com.atguigu.pojo.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public class WebUtils {
    /**
     *
//     * @param req
     * @param value
     * @param bean
     */
//    public static void copyParamToBean(HttpServletRequest req,Object bean){
    public static void copyParamToBean(Map value, Object bean){
            try {
//            User user = new User();
                System.out.println("注入之前：" + bean);
            /**
             * 把所有请求的参数都注入到user对象中
             */
//            System.out.println(req.getParameterMap());
//            BeanUtils.populate(bean,req.getParameterMap());//把一个Map值注入到JavaBean中
            BeanUtils.populate(bean,value);
            System.out.println("注入之后：" + bean);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
