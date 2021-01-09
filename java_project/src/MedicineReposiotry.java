import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import utility.DBUtil;

public class MedicineReposiotry {

	public int addMedicine(String product_name) {
		int Price=0;
		Connection con = DBUtil.getMySqlDbConnection();
		String sql = "select price from medicine where product_name=?";
		try {
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, product_name);
		ResultSet rs = pst.executeQuery();
		while(rs.next()) {
         Price = rs.getInt("price");
         }

	}catch(Exception e) {
		System.out.println("exception !!"+e);
	}
	return Price;
	}

	public int getID(String username) {
		Connection con = DBUtil.getMySqlDbConnection();
		String sql = "select user_id from customer where username=?";
		int userid=0;
		try {
			
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, username);
			ResultSet rs = pst.executeQuery();
			if(rs.next()){
				userid = rs.getInt("user_id");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return userid;
	}

	public void storeCart(int userid, String string, Integer integer, Integer integer2) {
		
		
	}
	public String deleteItem(String[] product_name, List<Integer> price, List<Integer> quantity,int val) {
		List<String> pro = Arrays.asList(product_name);
		pro.remove(val);
		product_name=(String[])pro.toArray();
		quantity.remove(val);
		price.remove(val);
		return ""+product_name+","+quantity+","+price;
	}

	public boolean Checkloginadmin(String username, String password) throws SQLException {
		Connection con=DBUtil.getMySqlDbConnection();
		String sql="select * from admin where username=? and password=?";
		ResultSet rs = null;
		try {
			
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, username);
			pst.setString(2, password);
			rs=pst.executeQuery();
//			while(rs.next())
//			{
//				String pass=rs.getString("password");
//				if(password.equals(pass))
//				{
//					return true;
//				}
//				else
//				{
//					System.out.println("wrong login");
//				}
//			}
			
		}catch(Exception e) {
			System.out.println("Exception :"+e);
		}
		return rs.next();
		

		
	}
	
}
