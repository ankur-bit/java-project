package com.project;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.bean.Medicine;



public class MedicineController extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		String requestAction = request.getParameter("requestAction");
		if(requestAction.equalsIgnoreCase("add")) {
				
			int user_id = Integer.parseInt(request.getParameter("user_id"));
			int product_id = Integer.parseInt(request.getParameter("product_id"));
			String product_name = request.getParameter("product_name");
			int price = Integer.parseInt(request.getParameter("price"));
			int quantity = Integer.parseInt(request.getParameter("quantity"));

			System.out.println("User id :" + user_id);
			System.out.println("Product Id : " + product_id);
			System.out.println("Product Name:" + product_name);
			System.out.println("price : " + price);
			System.out.println("Quantity : "+quantity);
			
			MedicineRepository medicineRepository = new MedicineRepository();
			Medicine medicine = new Medicine(user_id, product_id, product_name, price, quantity);
			
			medicineRepository.addMedicine(medicine);
			
			try {
				response.sendRedirect("addMedicine.jsp");
				} catch (Exception e) {
				System.out.println("Exception Occured:" + e);
			}
		//---------------------search-----------------------
			
		}else if(requestAction.equalsIgnoreCase("search")) {
			int product_id = Integer.parseInt(request.getParameter("user_id"));
			MedicineRepository medicineRepository=new MedicineRepository();
			
			Medicine medicine = medicineRepository.getMedicine(product_id);
			RequestDispatcher rd = request.getRequestDispatcher("searchResult.jsp");
			request.setAttribute("medicine", medicine);
			try {
				rd.forward(request, response);
				} catch (Exception e) {
				System.out.println("Exception from addMedicine Controller:" + e);
				}
			
		}

	}
	
}
	

