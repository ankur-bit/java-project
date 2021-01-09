import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Customerbean;
import utility.DBUtil;

public class AdminRepository {

	public List<Customerbean> getAlladmin_customer() {
		List<Customerbean> listOfAlladmin_customer = new ArrayList<Customerbean>();
		Connection con = DBUtil.getMySqlDbConnection();
		String sql = "select * from customer";
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				int user_id = rs.getInt("userid");
				String username = rs.getString("username");
				String password = rs.getString("password");
				int mobile_number = rs.getInt("mobile_number");
				String address = rs.getString("address");
				String gender = rs.getString("gender");
				String state = rs.getString("state");

				Customerbean admin_customer = new Customerbean(user_id, username, password, mobile_number, address,
						gender, state);
				listOfAlladmin_customer.add(admin_customer);
System.out.println(listOfAlladmin_customer+" getall");
			}
		} catch (Exception e) {
			System.out.println("An exception occured :" + e);
		}
		return listOfAlladmin_customer;

	}

	public void addadmin_customer(Customerbean customerbean) {
		Connection con = DBUtil.getMySqlDbConnection();
		String sql = "insert into customer (username,password,mobile_number,address,gender,state) values (?,?,?,?,?,?)";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
//			pst.setInt(1, customerbean.getUser_id());
			pst.setString(1, customerbean.getUsername());
			pst.setString(2, customerbean.getPassword());
			pst.setInt(3, customerbean.getMobile_number());
			pst.setString(4, customerbean.getAddress());
			pst.setString(5, customerbean.getGender());
			pst.setString(6, customerbean.getState());

			int result = pst.executeUpdate();
			
			
			if (result == 0) {
				System.out.println("Database insertion operation failed");
			} else {
				System.out.println("Database insertion operation successfull");
			}
		} catch (Exception e) {
			System.out.println("An exception occured :" + e);
		}
		
	}

	public Customerbean findCustomer(int userid) {
		Customerbean customer = null;
		Connection con=DBUtil.getMySqlDbConnection();
		String sql="select * from customer where userid=?";
		try {
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setInt(1, userid);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				
				String name=rs.getString("username");
				String passwrd=rs.getString("password");
				int mobileno=rs.getInt("mobile_number");
				String address=rs.getString("address");
				String gender=rs.getString("gender");
				String state=rs.getString("state");
				customer=new Customerbean(userid, name, passwrd, mobileno, address, gender, state);
				
				
			}else {
				System.out.println("Customer not found");
			}
		}catch (Exception e) {
			System.out.println("error"+e);
		}
		
		return customer;

	}

	public String getMedicine(int product_id) {
		
		Connection con = DBUtil.getMySqlDbConnection();
    	String sql = "select * from medicine where product_id=?";
    	String product_name = "";
    	System.out.println(product_id);
    	int price=0;
    	try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, ""+product_id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				product_name = rs.getString("product_name");
				price = rs.getInt("price");
			}else {
				System.out.println("Could not found");
			}

    	} catch (Exception e) {
			System.out.println("Exception from getMedicine Resp"+e);;
		}
		
    	return ""+product_id+","+product_name+","+price;
	}

}
