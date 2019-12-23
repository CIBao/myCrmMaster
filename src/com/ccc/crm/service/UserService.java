package com.ccc.crm.service;

import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.pojo.User;
import org.springframework.stereotype.Service;


public interface UserService {

    public User query4Login(User user);

    Page<User> selectPageByQueryVo(QueryVo vo);

    User selectUserById(Integer id);

    void deleteUserById(Integer id);

    void addUser(User user);

    void editUserById(User user);
}
