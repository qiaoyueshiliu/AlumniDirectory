//book

package com.atguigu.service;

import com.atguigu.pojo.User;

public interface UserService {
//    表示业务层，一个业务一个方法：比如说
//    登录时一个业务，注册是一个业务，检查用户名是否存在也是一个业务，也就是三个
//    注册用户,User对象
//测试一下，crtl+shift+t生成测试，就防灾test下
    /**
     * 注册用户
     * @param user
     */
    public void registUser(User user);

    /**
     * 登录业务
     * @param user
     * @return 如果返回null说明登录失败，返回有值是登录成功
     */
    public User login(User user);

    /**
     * 检查用户名是否可用
     * @param username
     * @return 返回true表示用户名已存在，返回false表示用户名可用
     */
    public boolean existsUsername(String username);


}
