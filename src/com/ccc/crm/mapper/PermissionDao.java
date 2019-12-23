package com.ccc.crm.mapper;

import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.Permission;
import com.ccc.crm.pojo.QueryVo;

import java.util.List;

public interface PermissionDao {


    int permissionCountByQueryVo(QueryVo vo);

    List<Permission> selectPermissionListByQueryVo(QueryVo vo);

    void addPermission(Permission permission);

    void permissionDeleteById(Integer id);

    void editPermission(Permission permission);

    List<String> queryAllPermissionName();

    Permission queryPermissionByName(String name);

    Permission queryPermissionById(Integer id);
}
