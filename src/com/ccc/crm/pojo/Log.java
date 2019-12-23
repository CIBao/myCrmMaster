package com.ccc.crm.pojo;

import java.security.PrivateKey;

public class Log {
    private int id;
    private String userNumber;
    private String userName;
    private String department;
    private String module;
    private String ip;
    private String loginTime;
    private String opera;
    private String operaTime;
    private boolean state;
    private String logoutTime;

    public Log() {
    }

    public Log(int id, String userNumber, String userName, String department, String module, String ip, String loginTime, String opera, boolean state, String logoutTime) {
        this.id = id;
        this.userNumber = userNumber;
        this.userName = userName;
        this.department = department;
        this.module = module;
        this.ip = ip;
        this.loginTime = loginTime;
        this.opera = opera;
        this.state = state;
        this.logoutTime = logoutTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserNumber() {
        return userNumber;
    }

    public void setUserNumber(String userNumber) {
        this.userNumber = userNumber;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(String loginTime) {
        this.loginTime = loginTime;
    }

    public String getOpera() {
        return opera;
    }

    public void setOpera(String opera) {
        this.opera = opera;
    }

    public boolean isState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public String getLogoutTime() {
        return logoutTime;
    }

    public void setLogoutTime(String logoutTime) {
        this.logoutTime = logoutTime;
    }

    public String getOperaTime() {
        return operaTime;
    }

    public void setOperaTime(String operaTime) {
        this.operaTime = operaTime;
    }
}
