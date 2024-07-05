<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Book Library</title>
<link rel="icon" href="img/logo.png" type="image/x-icon">
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">

 .img-bg{
    background:url("Books/bg.jpg");
    height: 70vh;
    width:100%;
    background-size:cover;
    background-repeat:no-repeat;
 }
 
 .bk{
    background-color:transprent;
 }
</style>
</head>
<body>

<%@include file="all_component/navbar.jsp"%>
   
   <div class="container-fluid img-bg">
      <h1 class="text-center text-primary "><i class="fa-solid fa-book-open"></i>&nbsp;E-Library Management System</h1>   
   </div>
   
   <main>
   
       <h4 class="mt-4 px-5 text-primary"><i class="fa-solid fa-book-open"></i>&nbsp;Search Book</h4>
       <div class="px-5">
          <form class="form-inline" action="searchBooks.jsp" method="post">					
													
							<div class="d-flex">
								 <div class="col-auto">
								    <label for="inputPassword2" class="visually-hidden">Books</label>
								    <input type="text" class="form-control" name="bookname" id="inputPassword2" placeholder="Book Name">
								  </div>
								&nbsp;												
								<button class="btn btn-primary" >Search</button>
			       </div>
			        </form>
         </div>
         
    <div class="album py-5 bg-light">
    <div class="container">	
         <h4 class="p-2 text-primary" id="recentbooks"><i class="fa-solid fa-book-open"></i>&nbsp;Recent Book</h4>
     
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
            <img alt="" src="Books/eco-2.png" width="100%" height="375" class="p-4">
            <div class="card-body">
              <p class="card-text">Master Residential Real Estate...</p>
               <div class="d-flex justify-content-between align-items-center">
                  <p class="card-text"><b>Price &nbsp; &#8377; 1400</b></p>
                <div class="btn-group">
                 
                  <button type="button" class="btn btn-sm btn-outline-secondary" ><i class="fa-solid fa-cart-plus"></i>&nbsp;Add To Cart</button>
                </div>
               
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
             <img alt="" src="Books/eco-3.png" width="100%" height="375" class="p-4">
            <div class="card-body">
              <p class="card-text">Ethics in Economics,Business</p>
               <div class="d-flex justify-content-between align-items-center">
                  <p class="card-text"><b>Price &nbsp; &#8377; 11,446</b></p>
                <div class="btn-group">
                 
                  <button type="button" class="btn btn-sm btn-outline-secondary" ><i class="fa-solid fa-cart-plus"></i>&nbsp;Add To Cart</button>
                </div>
               
              </div>
            </div>
          </div>
        </div>

       <div class="col">
          <div class="card shadow-sm">
            <img alt="" src="Books/eco-4.png" width="100%" height="375" class="p-4">
            <div class="card-body">
              <p class="card-text">Advances in Applied Economics, Business and Development</p>
               <div class="d-flex justify-content-between align-items-center">
                  <p class="card-text"><b>Price &nbsp; &#8377; 6,400</b></p>
                <div class="btn-group">             
                  <button type="button" class="btn btn-sm btn-outline-secondary" ><i class="fa-solid fa-cart-plus"></i>&nbsp;Add To Cart</button>
                </div>          
              </div>
            </div>
          </div>
        </div>

               <div class="col">
					<div class="card shadow-sm">
						<img alt="" src="Books/l4.jpg" width="100%" height="375"
							class="p-4">
						<div class="card-body">
							<p class="card-text">The Road to React: The React.js with
								Hooks in JavaScript Book (2024 Edition) The Road to React: The
								React.js with Hooks in JavaScript Book (2024 Edition)</p>
							<div class="d-flex justify-content-between align-items-center">
								<p class="card-text">
									<b>Price &nbsp; &#8377; 845.54</b>
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
				<div class="col">
					<div class="card shadow-sm">
						<img alt="" src="Books/l3.jpg" width="100%" height="375"
							class="p-4">
						<div class="card-body">
							<p class="card-text">Programming TypeScript: Making Your
								JavaScript Applications Scale Programming TypeScript: Making
								Your JavaScript Applications Scale Boris Cherny</p>
							<div class="d-flex justify-content-between align-items-center">
								<p class="card-text">
									<b>Price &nbsp; &#8377; 1,287.50</b>
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

				<div class="col">
					<div class="card shadow-sm">
						<img alt="" src="Books/p4.png" width="100%" height="375"
							class="p-4">
						<div class="card-body">
							<p class="card-text">Lokprashasan</p>
							<div class="d-flex justify-content-between align-items-center">
								<p class="card-text">
									<b>Price &nbsp; &#8377; 299</b>
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
				
			 
       </div>

       </div>
      </div>
         <!--  -->	
     <div class="album py-5 bg-light">
       <div class="container">
         <h4 class="p-2 text-primary" id="oldbooks"><i class="fa-solid fa-book-open"></i>&nbsp;Old Book</h4>
     
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
          <div class="col">
          <div class="card shadow-sm">
            <img alt="" src="Books/mindset.png" width="100%" height="375" class="p-4">
            <div class="card-body">
              <p class="card-text">Mindset</p>
               <div class="d-flex justify-content-between align-items-center">
                  <p class="card-text"><b>Price &nbsp; &#8377; 399</b></p>
                <div class="btn-group">
                 
                  <button type="button" class="btn btn-sm btn-outline-secondary" ><i class="fa-solid fa-cart-plus"></i>&nbsp;Add To Cart</button>
                </div>
               
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
             <img alt="" src="Books/-original-.png" width="100%" height="375" class="p-4">
            <div class="card-body">
              <p class="card-text">Marketing For Beginners 1 Edition</p>
               <div class="d-flex justify-content-between align-items-center">
                  <p class="card-text"><b>Price &nbsp; &#8377; 600</b></p>
                <div class="btn-group">
                 
                  <button type="button" class="btn btn-sm btn-outline-secondary" ><i class="fa-solid fa-cart-plus"></i>&nbsp;Add To Cart</button>
                </div>
               
              </div>
            </div>
          </div>
        </div>

       <div class="col">
          <div class="card shadow-sm">
            <img alt="" src="Books/the-richest.png" width="100%" height="375" class="p-5">
            <div class="card-body">
              <p class="card-text">The Richest Man in Babylon</p>
               <div class="d-flex justify-content-between align-items-center">
                  <p class="card-text"><b>Price &nbsp; &#8377; 499</b></p>
                <div class="btn-group">             
                  <button type="button" class="btn btn-sm btn-outline-secondary" ><i class="fa-solid fa-cart-plus"></i>&nbsp;Add To Cart</button>
                </div>          
              </div>
            </div>
          </div>
        </div>
        
          <div class="col">
          <div class="card shadow-sm">
            <img alt="" src="Books/p2.png" width="100%" height="375" class="p-4">
            <div class="card-body">
              <p class="card-text">The Constitution of India</p>
               <div class="d-flex justify-content-between align-items-center">
                  <p class="card-text"><b>Price &nbsp; &#8377; 499</b></p>
                <div class="btn-group">
                 
                  <button type="button" class="btn btn-sm btn-outline-secondary" ><i class="fa-solid fa-cart-plus"></i>&nbsp;Add To Cart</button>
                </div>
               
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
             <img alt="" src="Books/p3.png" width="100%" height="375" class="p-4">
            <div class="card-body">
              <p class="card-text">Jeevani Dr.A P J Abudul Kalam</p>
               <div class="d-flex justify-content-between align-items-center">
                  <p class="card-text"><b>Price &nbsp; &#8377; 199</b></p>
                <div class="btn-group">
                 
                  <button type="button" class="btn btn-sm btn-outline-secondary" ><i class="fa-solid fa-cart-plus"></i>&nbsp;Add To Cart</button>
                </div>
               
              </div>
            </div>
          </div>
        </div>

       <div class="col">
          <div class="card shadow-sm">
            <img alt="" src="Books/p4.png" width="100%" height="375" class="p-4">
            <div class="card-body">
              <p class="card-text">Lokprashasan</p>
               <div class="d-flex justify-content-between align-items-center">
                  <p class="card-text"><b>Price &nbsp; &#8377; 299</b></p>
                <div class="btn-group">             
                  <button type="button" class="btn btn-sm btn-outline-secondary" ><i class="fa-solid fa-cart-plus"></i>&nbsp;Add To Cart</button>
                </div>          
              </div>
            </div>
          </div>
        </div>
        
        
        
        
        
        
        
        
        
        
        
       
       
       </div>
       </div>
       </div>
       
   </main>
   
   
 <%@include file="all_component/footer.jsp"%>
</body>
</html>