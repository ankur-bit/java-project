package com.project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.project.bean.Medicine;
import com.project.utility.DButil;


public class MedicineRepository {
	
	
	public void addMedicine(Medicine medicine) {
        Connection con = DButil.getMySqlDbConnection();
        String sql = "insert into medicine values (?,?,?,?,?)";
        try {
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1, medicine.getUser_id());
        pst.setInt(2, medicine.getProduct_id());
        pst.setString(3, medicine.getProduct_name());
        pst.setInt(4, medicine.getPrice());
        pst.setInt(5, medicine.getQuantity());
        
        int result = pst.executeUpdate();
        if(result==0) {
            System.out.println("Database Operation Failed");
        }else {
            System.out.println("Database Operation Successful");
        }
        }catch(Exception e) {
            System.out.println("Exception Occured:"+e);
        }
    }
	
	public Medicine getMedicine(int user_id) {
		Medicine medicine = null;
		Connection con = DButil.getMySqlDbConnection();
    	String sql = "select * from medicine where user_id=?";
    	
    	try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, user_id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				int product_id = rs.getInt("product_id");
				String product_name = rs.getString("product_name");
				int price = rs.getInt("price");
				int quantity = rs.getInt("quantity");
				medicine = new Medicine(user_id, product_id, product_name, price, quantity);
			}else {
				System.out.println("Could not found");
			}

    	} catch (Exception e) {
			System.out.println("Exception from getMedicine Resp"+e);;
		}
		
    	return medicine;
	}

}
