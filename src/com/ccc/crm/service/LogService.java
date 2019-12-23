package com.ccc.crm.service;

import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.Log;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.pojo.User;

public interface LogService {
    Page<Log> queryAllLogByVo(QueryVo vo);

    void writeOneLog(String opera, String module, User loginUser);
}
