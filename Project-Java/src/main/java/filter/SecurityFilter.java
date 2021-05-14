package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import utils.AppUtils;
import utils.SecurityUtils;

/**
 * Servlet Filter implementation class SecurityFilter
 */
@WebFilter("/*")
public class SecurityFilter implements Filter {

    /**
     * Default constructor. 
     */
    public SecurityFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		 HttpServletRequest req = (HttpServletRequest) request;
	     HttpServletResponse resp = (HttpServletResponse) response;
	 
	     String servletPath = req.getServletPath();
	 
	        // Thông tin người dùng đã được lưu trong Session
	        // (Sau khi đăng nhập thành công).
	        User loginedUser = AppUtils.getLoginedUser(req.getSession());
	        
	        //neu ma yeu cau den trang dang nhap thi cho qua filter nat
	        if (servletPath.equals("/dangnhap")) {
	            chain.doFilter(request, response);
	            return;
	        }
	        HttpServletRequest wrapRequest = req;
	        // Các trang bắt buộc phải đăng nhập.
	        if (SecurityUtils.isSecurityPage(req)) {
	 
	            // Nếu người dùng chưa đăng nhập,
	            // Redirect (chuyển hướng) tới trang đăng nhập.
	            if (loginedUser == null) {
	 
	                String requestUri = req.getRequestURI();
	                if(requestUri.contains("admin")) {
	                	resp.sendRedirect(wrapRequest.getContextPath() +"/admin/login-admin");
	                	return;
	                }
	                else {
	                	// Lưu trữ trang hiện tại để redirect đến sau khi đăng nhập thành công.
		                int redirectId = AppUtils.storeRedirectAfterLoginUrl(req.getSession(), requestUri);
		                
		                resp.sendRedirect(wrapRequest.getContextPath() + "/dangnhap?redirectId=" + redirectId);
		                return;
	                }	                
	            }
	         // Kiểm tra người dùng có vai trò hợp lệ hay không?
	            boolean hasPermission = SecurityUtils.hasPermission(wrapRequest,loginedUser.getRoleid());
	            if (!hasPermission) {	 
	            	resp.sendRedirect(wrapRequest.getContextPath() + "/");
	                return;
	            }
	        }
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
