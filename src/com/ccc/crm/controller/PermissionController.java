package com.ccc.crm.controller;

import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.Permission;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.pojo.User;
import com.ccc.crm.service.LogService;
import com.ccc.crm.service.PermissionService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class PermissionController {

    @Autowired
    PermissionService permissionService;

    @Autowired
    private LogService logService;

    private User loginUser;

    @RequestMapping(value = "/permission/permission")
    public String  permissionlist(QueryVo vo, Model model, HttpSession session){
        loginUser = (User) session.getAttribute("user");
        Page<Permission> page = permissionService.queryAllPermission(vo);
        model.addAttribute("page",page);
        model.addAttribute("username", vo.getUserName());
        return "permission/permission";
    }

    @RequestMapping(value = "/permission/add")
    public String add() {
        return "permission/add";
    }

    @RequestMapping(value = "permission/addPermission")
    public String addPermission(Permission permission) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String createdate = sdf.format(new Date());
        permission.setCreateTime(createdate);
        System.out.println(permission.isDepartmentManage());
        permissionService.addPermission(permission);
        logService.writeOneLog("增加权限", "权限管理", loginUser);
        return "permission/permission";
    }

    @ResponseBody
    @RequestMapping(value = "/permission/delete")
    public Object permissionDeleteById(Integer id) {
        permissionService.permissionDeleteById(id);
        logService.writeOneLog("删除权限", "权限管理", loginUser);
        return "OK";
    }

    @RequestMapping(value = "/permission/edit")
    public String edit(Integer id, Model model) {
        Permission permission = permissionService.queryPermissionById(id);
        model.addAttribute("queryPermission", permission);

        return "permission/edit";
    }

    @RequestMapping(value = "permission/editPermission")
    public String editPermission(Permission permission) {
        permissionService.editPermission(permission);
        logService.writeOneLog("修改权限", "权限管理", loginUser);
        return "permission/permission";
    }
}
