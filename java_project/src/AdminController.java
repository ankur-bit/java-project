import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Customerbean;

public class AdminController extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response) {
		String requestAction = request.getParameter("requestAction");
		
//			System.out.println("I am inside doGet() method" + requestAction);
		
		
		if (requestAction.equalsIgnoreCase("viewAll")) {
		
			AdminRepository adminRepository = new AdminRepository();
			List<Customerbean> listOfAlladmin_customer = adminRepository.getAlladmin_customer();
			System.out.println(listOfAlladmin_customer);

			RequestDispatcher rd = request.getRequestDispatcher("viewAlladmin_customer.jsp");
			request.setAttribute("listOfAlladmin_customer", listOfAlladmin_customer);
			try {
				rd.forward(request, response);
			} catch (Exception e) {
				System.out.println("An exception occured :" + e);
			}
		}
		else if (requestAction.equalsIgnoreCase("add")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			int mobile_number = Integer.parseInt(request.getParameter("mobile_number"));
			String address = request.getParameter("address");
			String gender = request.getParameter("gender");
			String state = request.getParameter("state");

			AdminRepository adminRepository= new AdminRepository();
			Customerbean customerbean = new Customerbean(1, username, password, mobile_number,
					address, gender, state);

			adminRepository.addadmin_customer(customerbean);
			try {
				response.sendRedirect("adminmain.jsp");
			} catch (Exception e) {
				System.out.println("An exception occured :" + e);
			}
	}
	else if("search".equalsIgnoreCase(requestAction)) {
		int userid=Integer.parseInt(request.getParameter("userid"));
		AdminRepository adminRepository=new AdminRepository();
		Customerbean customer= adminRepository.findCustomer(userid);
		RequestDispatcher rd=request.getRequestDispatcher("ViewCustomer.jsp");
		request.setAttribute("customer", customer);
		System.out.println(customer);
		try {
			rd.forward(request, response);
		}catch (Exception e) {
			System.out.println("error"+e);
		}
	}
		
	else if(requestAction.equalsIgnoreCase("searchMed")) {
		int product_id = Integer.parseInt(request.getParameter("user_id"));
		AdminRepository adminRepository=new AdminRepository();
		
		String medicine = adminRepository.getMedicine(product_id);
		System.out.println("Found the medicine");
		RequestDispatcher rd = request.getRequestDispatcher("searchMedResult.jsp");
		request.setAttribute("medicine", medicine);
		try {
			rd.forward(request, response);
			} catch (Exception e) {
			System.out.println("Exception from addMedicine Controller:" + e);
			}
	}
	else if(requestAction.equalsIgnoreCase("Adminlogin"))
	{
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		MedicineReposiotry medicineReposiotry= new MedicineReposiotry();
		boolean login=false;
		try {
			login = medicineReposiotry.Checkloginadmin(username, password);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(login)
		{
			RequestDispatcher rd=request.getRequestDispatcher("adminmain.jsp");
			try {
				request.setAttribute("username", username);					
				rd.forward(request, response);		
				
			}catch(Exception e) {
				System.out.println("Exception :"+e);
			}
		}

}
}
}
