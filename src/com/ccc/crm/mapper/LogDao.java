package com.ccc.crm.mapper;

import com.ccc.crm.pojo.Log;
import com.ccc.crm.pojo.QueryVo;

import java.util.List;

public interface LogDao {
    int logCountByQueryVo(QueryVo vo);

    List<Log> selectLogListByQueryVo(QueryVo vo);

    void writeOneLog(Log log);
}
