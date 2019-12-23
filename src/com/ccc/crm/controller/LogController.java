package com.ccc.crm.controller;

import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.Log;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogController {

    @Autowired
    private LogService logService;

    @RequestMapping(value = "/log/log")
    public String  toLog(QueryVo vo, Model model){
        Page<Log>  page = logService.queryAllLogByVo(vo);
        model.addAttribute("page",page);
        return "log/log";
    }


}
