package com.ccc.crm.service.Impl;

import com.ccc.common.utils.Page;
import com.ccc.crm.mapper.DepartmentDao;
import com.ccc.crm.pojo.Department;
import com.ccc.crm.pojo.QueryVo;
import com.ccc.crm.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentDao departmentDao;


    @Override
    public Page<Department> queryAllDepartment(QueryVo vo) {
        Page<Department> page = new Page<Department>();
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
            page.setTotal(departmentDao.departmentCountByQueryVo(vo));

            page.setRows(departmentDao.selectDepartmentListByQueryVo(vo));
        }
        return page;
    }

    @Override
    public void addDepartment(Department department) {
            departmentDao.addDepartment(department);
    }

    @Override
    public void departmentDeleteById(Integer id) {
            departmentDao.departmentDeleteById(id);
    }

    @Override
    public Department queryDepartmentById(Integer id) {
        return departmentDao.queryDepartmentById(id);
    }

    @Override
    public void editDepartment(Department department) {
            departmentDao.editDepartment(department);
    }

    @Override
    public List<String> queryAllDepartmentName() {
        return departmentDao.queryAllDepartmentName();
    }
}
