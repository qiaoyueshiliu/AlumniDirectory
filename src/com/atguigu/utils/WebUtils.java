//Book
package com.atguigu.utils;

import com.atguigu.pojo.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public class WebUtils {
    /**
     *把 Map 中的值注入到对应的 JavaBean 属性中
//     * @param req
     * @param value
     * @param bean
     * HttpServletRequest 不能在 Dao 层和 Service 层使用
     * Map 在三个层次均能使用
     * Dao 层
     * Service 层
     * Web 层 HttpServletRequest 会使 Web 层 api 耦合度高
     * 这样写，代码的试用性更好一些，耦合度更低，扩展性更强，使用更加灵活
     */
//    public static void copyParamToBean(HttpServletRequest req,Object bean){
//    public static void copyParamToBean(Map value, Object bean){ 229
//    public static Object copyParamToBean(Map value, Object bean){ //229-02
    public static <T> T copyParamToBean(Map value, T bean){ //229-03
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
            return bean;
    }

    /**
     * 将字符串转换为Int类型的数据
     * @param strInt
     * @param defaultValue
     * @return
     */
    public static int parseInt(String strInt,int defaultValue){
        try {
            return Integer.parseInt(strInt);
        } catch (Exception e) {
//            e.printStackTrace();
        }
        return defaultValue;
    }
}
