package com.ccc.crm.service.Impl;

import com.ccc.common.utils.Page;
import com.ccc.crm.mapper.LogDao;
import com.ccc.crm.pojo.Log;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.pojo.User;
import com.ccc.crm.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class LogServiceImpl implements LogService {

    @Autowired
    private LogDao logDao;

    @Override
    public Page<Log> queryAllLogByVo(QueryVo vo) {
        Page<Log> page = new Page<Log>();
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
            page.setTotal(logDao.logCountByQueryVo(vo));

            page.setRows(logDao.selectLogListByQueryVo(vo));
        }
        return page;
    }

    @Override
    public void writeOneLog(String opera, String module, User loginUser) {
        System.out.println("SSS"+loginUser.getUsername());
        Log log = new Log();
        log.setUserName(loginUser.getUsername());
        log.setUserNumber(loginUser.getStaffNumber());
        log.setDepartment(loginUser.getDepartment());
        log.setModule(module);
        log.setOpera(opera);
        log.setIp("127.0.0.1");
        log.setLoginTime(loginUser.getLoginTime());
        log.setState(true);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = sdf.format(new Date());
        log.setOperaTime(time);
        logDao.writeOneLog(log);
    }
}
