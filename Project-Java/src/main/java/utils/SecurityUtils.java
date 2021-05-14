package utils;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

public class SecurityUtils {
	// Kiểm tra 'request' này có bắt buộc phải đăng nhập hay không.
    public static boolean isSecurityPage(HttpServletRequest request) {
        String urlPattern = UrlPatternUtils.getUrlPattern(request);
        
        	//lay danh sach quyen nguoi dung
          Set<String> roles = SecurityConfig.getAllAppRoles();
 
          //kiem tra trang yeu cau dang nhap khong
			for (String role : roles) {
				List<String> urlPatterns = SecurityConfig.getUrlPatternsForRole(role);
				if (urlPatterns != null && urlPatterns.contains(urlPattern)) {
					return true;
				}
			}
		 
        return false;
    }
 // Kiểm tra 'request' này có vai trò phù hợp hay không?
    public static boolean hasPermission(HttpServletRequest request,int roleID) {
        String urlPattern = UrlPatternUtils.getUrlPattern(request);
        //kiem tra duong dan vao trang admin thi roleid phai la 1 moi cho vao
        if(urlPattern.contains("admin") && roleID==1) {
        	return true;
        }
        return false;
    }
}
