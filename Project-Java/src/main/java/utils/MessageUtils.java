package utils;

import javax.servlet.http.HttpServletRequest;

public class MessageUtils {
	public static void showMessage(HttpServletRequest request,boolean result) {
		String messageRespone = "";
		String alert = "";
		String path = request.getServletPath();
		if(true == result) {
			if(path.contains("new")) {
				messageRespone = "THÊM THÀNH CÔNG";
				alert = "success";
			}
			else if (path.contains("edit")) {
				messageRespone = "SỬA THÀNH CÔNG";
				alert = "success";
			}
		}
		else {
			if(path.contains("new") || path.contains("edit")) {
				messageRespone = "ERROR";
				alert = "danger";
			}			
			
		}
		request.setAttribute("messageRespone", messageRespone);
		request.setAttribute("alert", alert);
	}
}
