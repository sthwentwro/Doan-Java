package utils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class SecurityConfig {
	public static final String ROLE_MANAGER = "ADMIN";
    public static final String ROLE_USER = "USER";
    
    //chua danh sach vai tro cua cac trang web
    private static final Map<String, List<String>> mapConfig = new HashMap<String, List<String>>();
    
    static {
        init();
    }
 
    private static void init() {
 
        // Cấu hình cho vai trò "USER".
        List<String> urlPatterns1 = new ArrayList<String>();
 
        urlPatterns1.add("/userInfo");
        urlPatterns1.add("/thanhtoan");
 
        mapConfig.put(ROLE_USER, urlPatterns1);
 
        // Cấu hình cho vai trò "ADMIN".
        List<String> urlPatterns2 = new ArrayList<String>();
 
        urlPatterns2.add("/admin");
        
        mapConfig.put(ROLE_MANAGER, urlPatterns2);
    }
    public static Set<String> getAllAppRoles() {
        return mapConfig.keySet();
    }
 
    public static List<String> getUrlPatternsForRole(String role) {
        return mapConfig.get(role);
    }
}
