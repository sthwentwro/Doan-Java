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
}
