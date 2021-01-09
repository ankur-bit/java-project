import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MedicineController extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		String action = request.getParameter("action");
		if("order".equalsIgnoreCase(action)) {
			String product_name[] = request.getParameterValues("product_name");		
			String quantity1[] = (request.getParameterValues("quantity"));
			
			
			List<Integer> quantity = new ArrayList<Integer>();
			int j = 0;
			for(int i=0 ;i<quantity1.length;i++) {
				if(Integer.parseInt(quantity1[i])!=0) {	
					quantity.add(Integer.parseInt(quantity1[i]));
					j++;
				}
			}

			List<Integer> price = new ArrayList<>();
			MedicineReposiotry medicineReposiotry= new MedicineReposiotry();
			
			for(int i=0;i<product_name.length;i++) {
				price.add(medicineReposiotry.addMedicine(product_name[i])*quantity.get(i));		
			}
			RequestDispatcher rd = request.getRequestDispatcher("MyCart.jsp");
			request.setAttribute("product_name", product_name);
			request.setAttribute("quantity", quantity);
			request.setAttribute("price", price);
			try {
				rd.forward(request, response);
			} catch (Exception e) {
				System.out.println("Exception Occured: " + e);
			}

		}
		else if("cart".equalsIgnoreCase(action)) {
			HttpSession session = request.getSession();
			String product_name[]=(String[]) session.getAttribute("product_name");
			List<Integer> price= (List<Integer>)session.getAttribute("price");
			List<Integer> quantity = (List<Integer>)session.getAttribute("quantity");
			MedicineReposiotry medicineReposiotry = new MedicineReposiotry();
			String username = null;
			int userid = medicineReposiotry.getID(username);
			for(int i=0;i<product_name.length;i++) {
				medicineReposiotry.storeCart(userid,product_name[i],quantity.get(i),price.get(i));				
			}
			RequestDispatcher rd  = request.getRequestDispatcher("bill.jsp");
			try {
				rd.forward(request, response);
			} catch (Exception e) {
				
			}
		}
		else if ("print".equalsIgnoreCase(action)) {
			HttpSession session = request.getSession();
			String product_name[]=(String[]) session.getAttribute("product_name");
			List<Integer> price= (List<Integer>)session.getAttribute("price");
			List<Integer> quantity = (List<Integer>)session.getAttribute("quantity");
			  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
			   LocalDateTime now = LocalDateTime.now();  
			   String date1 =(dtf.format(now));
			   String date2[] = date1.split(" ");
			   String date_d[] = date2[0].split("/");
			   String date_t[] = date2[1].split(":");
			   System.out.println();
			   File file = new File("F:\\zensar\\bill\\"+123+".txt");
			   try {
				FileWriter fw = new FileWriter(file);
				fw.append("\tWelcome To Pharmacy\t\t\t\n");
				fw.write("============================================\n");
				fw.append("\tProduct Name\tQuantity\tPrice\n");
				fw.append("============================================\n");
				for(int i =0;i<product_name.length;i++) {
					fw.append("\t"+product_name[i]+"\t"+quantity.get(i)+"\t"+price.get(i)+"\n");
				}
				fw.append("\n");
				fw.append("============================================");
				RequestDispatcher rd = request.getRequestDispatcher("OrderPage.jsp");
				fw.close();
				try {
					rd.forward(request, response);
				} catch (ServletException e) {
					System.out.println("Request Dispatcher Bill: "+e);
				}
			} catch (IOException e) {
				System.out.println("Error From Controller Create File: "+e);
			}
			   
		}
		else if ("delete".equalsIgnoreCase(action)) {
			HttpSession session = request.getSession();
			String product_name[]=(String[]) session.getAttribute("product_name");
			List<Integer> price= (List<Integer>)session.getAttribute("price");
			List<Integer> quantity = (List<Integer>)session.getAttribute("quantity");
			MedicineReposiotry medicineReposiotry = new MedicineReposiotry();
			int val = Integer.parseInt(request.getParameter("value"));
//			String output = medicineReposiotry.deleteItem(product_name,price,quantity,val);
//			System.out.println(output);
		}
	}
}
