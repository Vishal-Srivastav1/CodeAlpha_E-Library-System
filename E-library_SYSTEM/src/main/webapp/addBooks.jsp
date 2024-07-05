<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- jstl jar -->
   <%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add_Books</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
   body{
	   background-color:white;
	    overflow-x :hidden;
	   width:100%;
	   height:70vh;
	   background-repeat: no-repeat;
	   background-size: cover;
	   
	   
	   
	   
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
  button{
  margin-left:23%;
 
  
  }
 </style>
</head>
<body>
    <c:if test="${ empty userobj }"> 
   <c:redirect url="login.jsp"></c:redirect>
  </c:if> 
    
   
  
  <%response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); %>
	<%@include file="all_component/navbar.jsp"%>

     <br>
     <br>
     
       <div class="continer-fluid ">
          <div class="row g-3 ">
             <div class="col-md-6 offset-md-3">
                 <div class="card main">
					<div class="card-body">
						<div class="text-center text-success">
							
							
							<i class="fa-solid fa-book-open">&nbsp;Add Books</i>
							
						<c:if test="${not empty succMsg }">  <!--Jstl jar codes  -->     
					        <div class="alert alert-success" role="alert">${succMsg}</div>
							<c:remove var="succMsg"/>
							
    					</c:if>
    					
    						 
							
							<hr class="featurette-divider w-90 mx-4">
						</div>
						
						<form action="uploadphotos"  method="post" enctype="multipart/form-data">
							    							
								<div class="d-flex">
								
								<div class="form-group col-md-4">
								<label for="Frmgrp1" class="form-label">Book Name</label>
								 <input type="text" class="form-control" name="bookname" id="frmgrp1"
									aria-describedby="inputGroupPrepend"
									placeholder="Enter price" Autofocus required >
								</div>
	
									<div class="form-group col-md-4">
									<label for="selecter1" class="form-label">category</label> <select
										class="form-select" name="bookcategrey" id="selecter1" required>
										<option selected disabled value="">Choose..</option>
										<option class="Finance Books" value="Finance Books">Finance Books</option>
										<option class="Economics Books" value="Economics Books">Economics Books</option>
										<option class="Politics Books" value="Politics Books">Politics Books</option>
										<option class="language Books" value="language Books">language books</option>
									</select>
								</div>
								
								<div class="form-group col-md-4">
								<label for="Frmgrp" class="form-label">Book Price</label>
								 <input type="text" class="form-control" name="price" id="Frmgrp"
									aria-describedby="inputGroupPrepend"
									placeholder="Enter price" Autofocus required >
								</div>
						</div>
						
							<div class="form-group">
								<label for="title1" class="form-label">Book photos</label> <input
									type="file" name="files" class="form-control" id="title1"
									 required class="form-control">
							</div>
							
							

							<button class="btn btn-primary w-50 ">Upload</button>					   
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	


</body>
</html>
