package com.ccc.crm.service.Impl;

import com.ccc.common.utils.Page;
import com.ccc.crm.mapper.UserDao;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.pojo.User;
import com.ccc.crm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserDao userDao;

    @Override
    public User query4Login(User user) {

        return userDao.query4Login(user);
    }

    @Override
    public Page<User> selectPageByQueryVo(QueryVo vo) {
        Page<User> page = new Page<User>();
        //显示页码总数目  页码数=总记录数/设置的数字
        page.setSize(10);
        //每页显示记录数
        vo.setSize(10);
        if (null != vo) {
            // 判断当前页
            if (null != vo.getPage()) {
                page.setPage(vo.getPage());
                vo.setStartRow((vo.getPage() -1)*vo.getSize());
            }
            if(null != vo.getUserName() && !"".equals(vo.getUserName().trim())){
                vo.setUserName(vo.getUserName().trim());
            }
            if(null != vo.getCustSource() && !"".equals(vo.getCustSource().trim())){
                vo.setCustSource(vo.getCustSource().trim());
            }
            if(null != vo.getCustIndustry() && !"".equals(vo.getCustIndustry().trim())){
                vo.setCustIndustry(vo.getCustIndustry().trim());
            }
            if(null != vo.getCustLevel() && !"".equals(vo.getCustLevel().trim())){
                vo.setCustLevel(vo.getCustLevel().trim());
            }
            //总条数
            page.setTotal(userDao.userCountByQueryVo(vo));

            page.setRows(userDao.selectUserListByQueryVo(vo));
        }
        return page;
    }

    @Override
    public User selectUserById(Integer id) {
        return userDao.selectUserById(id);
    }

    @Override
    public void deleteUserById(Integer id) {
        userDao.deleteUserById(id);
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public void editUserById(User user) {
        userDao.editUserById(user);
    }
}
