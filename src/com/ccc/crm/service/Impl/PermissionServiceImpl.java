package com.ccc.crm.service.Impl;

import com.ccc.common.utils.Page;
import com.ccc.crm.mapper.PermissionDao;
import com.ccc.crm.pojo.Permission;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.pojo.User;
import com.ccc.crm.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    PermissionDao permissionDao;


    @Override
    public Page<Permission> queryAllPermission(QueryVo vo) {
        Page<Permission> page = new Page<Permission>();
        //显示页码总数目  页码数=总记录数/设置的数字
        page.setSize(10);
        //每页显示记录数

        vo.setSize(10);
        if (null != vo) {
            // 判断当前页
            if (null != vo.getPage()) {
                page.setPage(vo.getPage());
                vo.setStartRow((vo.getPage() - 1) * vo.getSize());
            }
            if (null != vo.getUserName() && !"".equals(vo.getUserName().trim())) {
                vo.setUserName(vo.getUserName().trim());
            }

            //总条数
            page.setTotal(permissionDao.permissionCountByQueryVo(vo));

            page.setRows(permissionDao.selectPermissionListByQueryVo(vo));
        }
        return page;
    }

    @Override
    public Permission queryPermissionByName(String name) {
        return permissionDao.queryPermissionByName(name);
    }

    @Override
    public void addPermission(Permission permission) {
            permissionDao.addPermission(permission);
    }

    @Override
    public void permissionDeleteById(Integer id) {
            permissionDao.permissionDeleteById(id);
    }

    @Override
    public void editPermission(Permission permission) {
            permissionDao.editPermission(permission);
    }

    @Override
    public List<String> queryAllPermissionName() {
        return permissionDao.queryAllPermissionName();
    }

    @Override
    public Permission queryPermissionById(Integer id) {
        return permissionDao.queryPermissionById(id);
    }
}
