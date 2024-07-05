
<%@page import="com.entity.User"%>
<%@page import="com.dao.BooksDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.BooksDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- jstl jar -->
   <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>All Books</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
body {
	background: cyan;
	overflow-x :hidden;
	margin-top:20px;
}
.main{
     box-shadow: 5px 5px 5px rgba( 255,255,255,0.2),
	    			-10px -10px 10px rgba(15, 14, 15, 0.1),
	                 inset -5px 5px 5px rgba( 255,255,255,0.2),       
		               inset -8px 8px 8px rgba(15, 14, 15, 0.1),
		               inset 8px 8px 8px rgba(15, 14, 15, 0.1),
		                inset -8px -8px 8px rgba(15, 14, 15, 0.1);
           border-radius: 10px;
   }

</style>
</head>
<body>
<%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); %>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container ">
		<div class="row ">
			
				<h5 class="text-center text-primary">Available Books</h5>
				
      			<%
      			
      			String cat=request.getParameter("bookname");
      			String msg = "";
     	
				
				BooksDao dao = new BooksDao(DBConnect.getConn());
				List<User> list = null;
				
				 
				  if("ca".equals(cat)){
					  list= new ArrayList<User>(); 
				        msg="Job Not Founds.."; 
				   }
				  
				  else if("bookname".equals(cat)){ 
					  list=dao.getbookName(cat);
				   }
				  else{
					  list=dao.getbookName(cat);
				  }
					  
					  
					  if(list.isEmpty()){
					   %>
					   <h4 class="text-center text-denger">Job Not Available..</h4>
					  
					   <%
					  
				   }
				  
				   
					   
				  
		  if(list!=null){
				
				for (User j : list) {
				%>
				<div class="col">
					<div class="card shadow-sm">
						<img alt="" class="img1" src="bookimg\<%=j.getImage() %>">
							class="p-4">
						<div class="card-body">
							<p class="card-text"><%=j.getBookname() %></p>
							<div class="d-flex justify-content-between align-items-center">
								<p class="card-text">
									<b>Price &nbsp; &#8377; <%=j.getPrice() %></b>
								</p>
								<div class="btn-group">

									<button type="button" class="btn btn-sm btn-outline-secondary">
										<i class="fa-solid fa-cart-plus"></i>&nbsp;Add To Cart
									</button>
								</div>

							</div>
						</div>
					</div>
				</div>
				
				<%
				}
				}
				%>
			</div>
		</div>
	


</body>
</html>