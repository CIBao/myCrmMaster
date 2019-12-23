package com.ccc.crm.controller;

import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.pojo.User;
import com.ccc.crm.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 客户管理
 * @author lx
 *
 */
@Controller
public class UserController {

	

	@Autowired
	private UserService userService;
	@Autowired
	private PermissionService permissionService;
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private LogService logService;
	
	//注解在成员变量上
	@Value("${fromType_code}")
	private String fromTypeCode;
	@Value("${industryType_code}")
	private String industryType_code;
	@Value("${levelType_code}")
	private String levelType_code;

	private User loginUser;



	//入口
	@RequestMapping(value = "/user/list")
	public String userlist(QueryVo vo,Model model, HttpSession session){

		loginUser = (User) session.getAttribute("user");
		System.out.println(vo.getUserName());

		//通过四个条件  查询分页对象
		Page<User> page = userService.selectPageByQueryVo(vo);

		model.addAttribute("page", page);
		model.addAttribute("userName", vo.getUserName());


		return "user/user";
	}

	//查看
	@RequestMapping(value = "/user/query")
	public String  query(Integer id, Model model){
		User user = userService.selectUserById(id);
		model.addAttribute("queryUser", user);

		logService.writeOneLog("查看用户", "用户管理", loginUser);
		return "user/query";
	}

	@ResponseBody
	@RequestMapping(value = "user/delete.action")
	public String delete( Integer id ) {
			userService.deleteUserById(id);
		logService.writeOneLog("删除用户", "用户管理", loginUser);
		return "OK";
	}




	//增加用户
	@RequestMapping(value = "user/add")
	public String add(User user, HttpSession session){
		//修改
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //获取String类型的时间
        String createdate = sdf.format(new Date());
        user.setCreateTime(createdate);
        user.setPasswd("123456");

        userService.addUser(user);


        logService.writeOneLog("增加用户", "用户管理", loginUser);



		return "user/user";
	}

	@RequestMapping(value = "/user/addUser")
	public String addUser(Model model){
		List<String> pname = permissionService.queryAllPermissionName();
		List<String> dname = departmentService.queryAllDepartmentName();
		model.addAttribute("pname", pname);
		model.addAttribute("dname",dname);

		return "user/addUser";
	}

	@RequestMapping(value = "/user/edit")
	public String edit(Integer id, Model model) {
		List<String> pname = permissionService.queryAllPermissionName();
		List<String> dname = departmentService.queryAllDepartmentName();
		model.addAttribute("pname", pname);
		model.addAttribute("dname",dname);
		User user = userService.selectUserById(id);
		model.addAttribute("queryUser", user);
		return "user/edit";
	}

	@RequestMapping(value = "/user/editUser")
	public String editUser(User user) {
		userService.editUserById(user);
		logService.writeOneLog("修改用户", "用户管理", loginUser);
		return "user/user";
	}

}
