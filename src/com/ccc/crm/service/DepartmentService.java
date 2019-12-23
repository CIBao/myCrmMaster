package com.ccc.crm.service;

import com.ccc.common.utils.Page;
import com.ccc.crm.pojo.Department;
import com.ccc.crm.pojo.QueryVo;

import java.util.List;

public interface DepartmentService {
    Page<Department> queryAllDepartment(QueryVo vo);

    void addDepartment(Department department);

    void departmentDeleteById(Integer id);

    Department queryDepartmentById(Integer id);

    void editDepartment(Department department);

    List<String> queryAllDepartmentName();
}
