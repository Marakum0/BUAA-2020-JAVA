package com.wx.restaurant.interceptor;

import com.wx.restaurant.mybatis.model.Admin;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class BaseInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        String contextPath = request.getContextPath();
        String uri = request.getRequestURI();
        Admin user = (Admin) request.getSession().getAttribute("admin");
        if (null == user) {
            if (uri.startsWith(contextPath + "/admin")
                    && !uri.startsWith(contextPath + "/admin/login")) {
                response.sendRedirect(request.getContextPath() + "/admin/login");
                return false;
            }
        }
        return true;
    }

}
