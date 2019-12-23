package com.ccc.crm.interceptor;

import com.ccc.crm.pojo.Permission;
import com.ccc.crm.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Arrays;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        if(url.indexOf("/login")>=0) {
            return true;}
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Permission permission = (Permission) session.getAttribute("userPermission");
        if(user == null) {
            request.setAttribute("msg", "未登入,请先登入");
            String contextPath = request.getContextPath();
            response.sendRedirect(contextPath+"/login");
            //request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
            return false;}
        else {
            String[] d_url = url.split("/");
            System.out.println(Arrays.toString(d_url));
            if(d_url[2].equals("index") || d_url[2].equals("logout")) {
                return true;
            }
            if(
                    (d_url[2].equals("custinfo") && permission.isCustInfo() )||
                    (d_url[2].equals("custmanager") && permission.isCustManage() )||
                    (d_url[2].equals("user") && permission.isUserManage() )||
                    (d_url[2].equals("permission") && permission.isPermissionManage() )||
                    (d_url[2].equals("department") && permission.isDepartmentManage() )||
                    (d_url[2].equals("log") && permission.isLog() )
            )   return true;
        }
        request.getRequestDispatcher("/WEB-INF/jsp/error.jsp").forward(request, response);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
