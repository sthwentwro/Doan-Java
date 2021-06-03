package admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BillDAO;
import dao.BillDetailDAO;
import entity.Bill;
import entity.BillDetail;
import entity.Revenue;

/**
 * Servlet implementation class listordercontroller
 */
@WebServlet("/admin/list-order")
public class listordercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    BillDAO daoB;   
    
    public listordercontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {					
		case "edit":
			showEditOrder(request, response);
			break;
		case "update":
			updateOrder(request, response);
			break;
		case "delete":
			deleteOrder(request,response);
			break;
		case "changesh":
			changegiaohang(request,response);
			break;
		case "changett":
			changethanhtoan(request,response);
			break;
		default:
			listOrder(request, response);
			break;
		}
	}
	private void listOrder(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{		
		  String page = request.getParameter("page"); //neu page rong thi cho vao trang
		  int index = 1 ;
		  daoB = new BillDAO();
		  if(page != null) 
		  { 
			  index = Integer.parseInt(page); 
		  } 
		  int count = daoB.getTotalBill();//lay tong so user 
		  int endPage = count/8;
		  if(count % 8 !=0) 
		  { 
			  endPage++;
		  }
		  
		List<Revenue> listDoanhthu = daoB.getDoanhthu();
		request.setAttribute("listdoanhthu", listDoanhthu);
		request.setAttribute("tag", index); request.setAttribute("endP", endPage);
		request.setAttribute("listO", daoB.pagingOrder(index));		 
		request.getServletContext().getRequestDispatcher("/views/admin/listorder.jsp").forward(request, response);
	}
	private void changegiaohang(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		String madonhang = request.getParameter("ma");
		String tinhtrang = request.getParameter("status");
		daoB = new BillDAO();
		daoB.doitinhtrangdonhang(madonhang, tinhtrang);
		response.sendRedirect(request.getContextPath()+"/admin/list-order?action=list");
	}
	private void changethanhtoan(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		String madonhang = request.getParameter("ma");
		String tinhtrang = request.getParameter("status");
		daoB = new BillDAO();
		daoB.doitinhtrangthanhtoan(madonhang, tinhtrang);
		response.sendRedirect(request.getContextPath()+"/admin/list-order?action=list");
	}
	private void showEditOrder(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		String madonhang = request.getParameter("ma");
		daoB = new BillDAO();
		BillDetailDAO bd = new BillDetailDAO();
		//lay thong tin don dat hang
		Bill b = daoB.getBillbyID(madonhang);
		List<BillDetail> listsp = bd.getBillDetail(madonhang);
		request.setAttribute("billdetail",listsp);//lay chi tiet hoa don
		request.setAttribute("bill", b);
		request.getServletContext().getRequestDispatcher("/views/admin/editorder.jsp").forward(request, response);
	}
	private void updateOrder(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		String madonhang = request.getParameter("ma");
		String ngaygiao = request.getParameter("ngaygiao");
		String diachi = request.getParameter("diachi");
		java.sql.Timestamp ts =java.sql.Timestamp.valueOf(ngaygiao);
		daoB = new BillDAO();
		daoB.updateBill(madonhang,ts, diachi);
		response.sendRedirect(request.getContextPath()+"/admin/list-order?action=list");
	}
	private void deleteOrder(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	{
		String madonhang = request.getParameter("id");		
		daoB = new BillDAO();
		daoB.deleteBill(madonhang);
		response.sendRedirect(request.getContextPath()+"/admin/list-order?action=list");
	}

}
