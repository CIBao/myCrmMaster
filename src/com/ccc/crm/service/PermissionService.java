package com.ccc.crm.service;


import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.Permission;
import com.ccc.crm.pojo.QueryVo;

import java.util.List;

public interface PermissionService {

    Page<Permission> queryAllPermission(QueryVo vo);

    Permission queryPermissionByName(String name);

    void addPermission(Permission permission);

    void permissionDeleteById(Integer id);

    void editPermission(Permission permission);

    List<String> queryAllPermissionName();

    Permission queryPermissionById(Integer id);
}
