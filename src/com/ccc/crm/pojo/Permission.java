package com.ccc.crm.pojo;

public class Permission {
    private int id;
    private String permissionName;
    private boolean custManage;
    private boolean custInfo;
    private boolean log;
    private String createTime;
    private boolean state;
    private boolean permissionManage;
    private boolean userManage;
    private boolean departmentManage;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPermissionName() {
        return permissionName;
    }

    public void setPermissionName(String permissionName) {
        this.permissionName = permissionName;
    }

    public boolean isCustManage() {
        return custManage;
    }

    public void setCustManage(boolean custManage) {
        this.custManage = custManage;
    }

    public boolean isCustInfo() {
        return custInfo;
    }

    public void setCustInfo(boolean custInfo) {
        this.custInfo = custInfo;
    }

    public boolean isLog() {
        return log;
    }

    public void setLog(boolean log) {
        this.log = log;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public boolean isState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }


    public boolean isPermissionManage() {
        return permissionManage;
    }

    public void setPermissionManage(boolean permissionManage) {
        this.permissionManage = permissionManage;
    }

    public boolean isUserManage() {
        return userManage;
    }

    public void setUserManage(boolean userManage) {
        this.userManage = userManage;
    }

    public boolean isDepartmentManage() {
        return departmentManage;
    }

    public void setDepartmentManage(boolean departmentManage) {
        this.departmentManage = departmentManage;
    }
}
