package com.ccc.crm.controller;

import com.ccc.crm.pojo.AJAXResult;
import com.ccc.crm.pojo.Permission;
import com.ccc.crm.pojo.User;
import com.ccc.crm.service.LogService;
import com.ccc.crm.service.PermissionService;
import com.ccc.crm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private PermissionService permissionService;

    @Autowired
    private LogService logService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        User loginUser = (User) session.getAttribute("user");
        logService.writeOneLog("退出", "", loginUser);
        session.invalidate();
        return "redirect:login";
    }

    @ResponseBody
    @RequestMapping(value = "/doAJAXLogin", method = RequestMethod.POST)
    public Object doAJAXLogin(User user, HttpSession session) {

        AJAXResult result = new AJAXResult();
        Permission permission;
        User dbuser = userService.query4Login(user);
        if(dbuser != null) {
            permission = permissionService.queryPermissionByName(dbuser.getPermission());
            result.setSuccess(true);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String time = sdf.format(new Date());
            dbuser.setLoginTime(time);
            session.setAttribute("user", dbuser);
            session.setAttribute("username", dbuser.getUsername());
            session.setAttribute("userPermission", permission);
        }else {
            result.setSuccess(false);
        }


        return result;
    }
}
