package com.ccc.crm.controller;

import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.Department;
import com.ccc.crm.pojo.Permission;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.pojo.User;
import com.ccc.crm.service.DepartmentService;
import com.ccc.crm.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    @Autowired
    private LogService logService;

    private User loginUser;

    @RequestMapping("/department/department")
    public String departmentList(QueryVo vo, Model model, HttpSession session) {
        loginUser = (User) session.getAttribute("user");
        Page<Department> page = departmentService.queryAllDepartment(vo);
        model.addAttribute("page",page);
        model.addAttribute("username", vo.getUserName());
        return "/department/department";
    }

    @RequestMapping("/department/add")
    public String add() {
        return "/department/add";
    }

    @RequestMapping("department/addDepartment")
    public String addDepartment(Department department) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //获取String类型的时间
        String createdate = sdf.format(new Date());
        department.setCreateTime(createdate);
        departmentService.addDepartment(department);
        logService.writeOneLog("增加部门", "部门管理", loginUser);
        return "/department/add";
    }

    @ResponseBody
    @RequestMapping("/department/delete")
    public Object departmentDeleteById(Integer id) {
        departmentService.departmentDeleteById(id);
        logService.writeOneLog("删除部门", "部门管理", loginUser);
        return "OK";
    }

    @RequestMapping("/department/edit")
    public String edit(Integer id, Model model) {
        Department department = departmentService.queryDepartmentById(id);
        model.addAttribute("queryDepartment",department);
        return "/department/edit";
    }

    @RequestMapping("/department/editDepartment")
    public String editDepartment(Department department) {

        departmentService.editDepartment(department);
        logService.writeOneLog("修改部门", "部门管理", loginUser);
        return "/department/department";
    }

}
