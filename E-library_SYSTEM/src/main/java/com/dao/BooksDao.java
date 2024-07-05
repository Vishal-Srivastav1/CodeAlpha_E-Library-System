package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.User;

public class BooksDao {

	private Connection conn;

	public BooksDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean uploadBooks(User u) {
		boolean f=false;
		
		try {
			String sql="insert into addbooks (bookname,bookcategrey,price,image) values(?,?,?,?)";
			
		PreparedStatement ps=conn.prepareStatement(sql);
		 ps.setString(1,u.getBookname());	
		 ps.setString(2,u.getBookcategrey());	
		 ps.setString(3,u.getPrice());	
		 ps.setString(4,u.getImage());	
		
			int i=ps.executeUpdate();
			if (i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
public List<User> getbookName(String bookname) {
		
		List<User> list = new ArrayList<>();
		User j = null;

		try {
			String sql1 = "select * from job where bookname=? ";
			PreparedStatement ps = conn.prepareStatement(sql1);
			ps.setString(1, bookname);
		
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				j = new User();
				j.setId(rs.getInt(1));
				j.setBookname(rs.getString(2));
				j.setBookcategrey(rs.getString(3));
				j.setPrice(rs.getString(4));
				j.setImage(rs.getString(5));
				
				list.add(j);
               
			}
		} catch (SQLException se) {
			se.printStackTrace();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	
}
