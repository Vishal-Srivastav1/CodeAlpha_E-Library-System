package com.servlet;
/**
 * Servlet implementation class UploadPhotosServlet
 */

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.BooksDao;
import com.db.DBConnect;
import com.entity.User;
@WebServlet("/uploadphotos")
@MultipartConfig
public class AddBooksServlet extends HttpServlet {

	   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
		  
   		     Part p =req .getPart("files");
	    	 String fileName=p.getSubmittedFileName();
	    	 String bookname= req.getParameter("bookname");
	    	 String bookcategrey= req.getParameter("bookcategrey");
	    	 String price= req.getParameter("price");
	    	
	    	 
	    	 
		   
		   HttpSession session= req.getSession();
			if (price != null && !price.equals("") && fileName != null && !fileName.equals("")
					&& bookname != null && !bookname.equals("") && bookcategrey != null && !bookcategrey.equals("")
					) {
			  
	    	try {
	    		    		
	    		User u=new User(); 
	    		u.setBookname(bookname);
	    		u.setBookcategrey(bookcategrey);
	    		u.setPrice(price);
	    		u.setImage(fileName);
	    		
	    	
	    		BooksDao dao=new BooksDao(DBConnect.getConn());
	    		
	    		boolean f= dao.uploadBooks(u);
	    		    		
	    		
	    		if (f) {
	    			
	    			 String path= getServletContext().getRealPath("")+"bookimg";
					 File file =new File(path);
					 p.write(path+File.separator+fileName);	
					 
					session.setAttribute("succMsg", "Book Added Successfully..");
					resp.sendRedirect("addBooks.jsp");
				}else {
					session.setAttribute("succMsg", "Error: Problem in Server Side..");
					resp.sendRedirect("addBooks.jsp");
				}
	    	
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			}else {
				session.setAttribute("succMsg", "Error: form All fields required..");
				resp.sendRedirect("addBooks.jsp");
			}
	    	
	    }
	}

