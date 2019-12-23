package com.ccc.crm.mapper;

import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.pojo.User;

import java.util.List;

public interface UserDao {

    public User query4Login(User user);
    //总条数
    public int userCountByQueryVo(QueryVo vo);
    //结果集
    public List<User> selectUserListByQueryVo(QueryVo vo);
    //查看
    User selectUserById(Integer id);

    void deleteUserById(Integer id);

    void addUser(User user);

    void editUserById(User user);
}
