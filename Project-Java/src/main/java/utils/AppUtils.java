package utils;

import javax.servlet.http.HttpSession;

import entity.User;

public class AppUtils {
	// Lưu trữ thông tin người dùng vào Session.
    public static void storeLoginedUser(HttpSession session, User loginedUser) {
        // Trên JSP có thể truy cập thông qua ${loginedUser}
        session.setAttribute("loginedUser", loginedUser);
    }
 
    // Lấy thông tin người dùng lưu trữ trong Session.
    public static User getLoginedUser(HttpSession session) {
        User loginedUser = (User) session.getAttribute("loginedUser");
        return loginedUser;
    }
}
