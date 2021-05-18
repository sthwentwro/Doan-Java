package utils;

import javax.servlet.http.HttpServletRequest;

public class MessageUtils {
	public static void showMessage(HttpServletRequest request,boolean result) {
		String messageRespone = "";
		String alert = "";
		if(true == result) {
			if(request.getServletPath().contains("new")) {
				messageRespone = "THÊM THÀNH CÔNG";
				alert = "success";
			}
			else if (request.getServletPath().contains("edit")) {
				messageRespone = "SỬA THÀNH CÔNG";
				alert = "success";
			}
			request.setAttribute("messageRespone", messageRespone);
			request.setAttribute("alert", alert);
		}
		else {
			messageRespone = "ERROR";
			alert = "danger";
			request.setAttribute("messageRespone", messageRespone);
			request.setAttribute("alert", alert);
		}
	}
}
