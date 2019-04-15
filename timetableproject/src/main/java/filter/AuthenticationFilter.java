package filter;

import Databases.SQLiteClass;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AuthenticationFilter implements Filter {

    private ServletContext context;

    public void init(FilterConfig fConfig) throws ServletException {
        this.context = fConfig.getServletContext();
        this.context.log("AuthenticationFilter initialized");
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException {


        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String sessionID = null;

        Cookie[] cookies = ((HttpServletRequest) request).getCookies();
        if(cookies != null){
            for(Cookie cookie : cookies){
                if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
            }
        }

        if (!SQLiteClass.doesSessionExist(sessionID)) {
            res.sendRedirect(req.getContextPath() + "/login.jsp");
        }
        else {
            res.sendRedirect(req.getContextPath() + "/main.jsp");
        }
    }

    public void destroy() {
        //close any resources here
    }
}