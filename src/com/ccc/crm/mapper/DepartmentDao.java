package com.ccc.crm.mapper;

import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.Department;
import com.ccc.crm.pojo.QueryVo;

import java.util.List;

public interface DepartmentDao {

    int departmentCountByQueryVo(QueryVo vo);

    List<Department> selectDepartmentListByQueryVo(QueryVo vo);

    void addDepartment(Department department);

    void departmentDeleteById(Integer id);

    Department queryDepartmentById(Integer id);

    void editDepartment(Department department);

    List<String> queryAllDepartmentName();
}
