<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- jstl jar -->
<%@ page isELIgnored="false"%>

<style>
.navitem1 {
	margin-top:0px;
	margin-right: 10px;
}
 
 .hello{
   margin-top:0px;
 }

@media screen and (min-width: 993px) {
	.navitem1.dropdown-menu.show {
		display: none !important;
	}
	.navitem1:hover .dropdown-menu {
		display: block !important;
	}
	.navitem1:focus .dropdown-menu {
		display: none !important;
	}
}
.eg{
   width:135px;
   margin-right:2px;
  
   
}
</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom hello">
	<div class="container-fluid">
		<h4 class="mx-4">E-Library</h4>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"
					class="btn btn-light nav-link active"><i class="fa-solid fa-house"></i>&nbsp;Home</a></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#recentbooks"
					class="btn btn-light nav-link active">&nbsp;<i class="fa-solid fa-book"></i>&nbsp;Recent Book
				</a></li>
				
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#oldbooks"
					class="btn btn-light nav-link active">&nbsp;<i class="fa-solid fa-book"></i>&nbsp;Old Book
				</a></li>
				
				<li class="nav-item dropdown navitem1"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown"><i class="fa-solid fa-book-open"></i>&nbsp;Categrey</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">

							<li><a class="dropdown-item"
								href="Personal Books.jsp"><i class="fa-solid fa-book"></i>&nbsp;Personal Finance Books</a>
							</li>
							<li><a class="dropdown-item"
								href="Economics-Books.jsp"><i class="fa-solid fa-book"></i>&nbsp;Economics, Business and</a>
							</li>
							<li><a class="dropdown-item"
								href="Politics-Books.jsp"><i class="fa-solid fa-book"></i>&nbsp;Politics Books</a>
							</li>
							<li><a class="dropdown-item"
								href="Language-Books.jsp"><i class="fa-solid fa-book"></i></i>&nbsp;language books</a>
							</li>
						
					    
						</ul>
					</li>
                      
                     <c:if test="${userobj.role eq 'admin'}">
						<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="addBooks.jsp"
					class="btn btn-light nav-link active">&nbsp;<i class="fa-solid fa-book"></i>&nbsp;add books
				</a></li>
						
				</c:if>
				

			</ul>

			<div class="d-flex">

             




				<!-- Admin validation-->
				<c:if test="${userobj.role eq 'admin'}">
					<a href="#" class="btn btn-light nav-link active"><i
						class="fa-solid fa-user">&nbsp;</i>&nbsp;Admin</a>&nbsp;&nbsp;
                <a href="logout" class="btn btn-light nav-link active">Logout&nbsp;<i
						class="fa-solid fa-right-to-bracket"></i></a>

				</c:if>
				 
				
				<!-- User validation-->
				
				<c:if test="${userobj.role eq 'User'}">
					<a href="#" class="btn btn-light nav-link active"
						data-bs-toggle="modal" data-bs-target="#exampleModal"><i
						class="fa-solid fa-user">&nbsp;</i>&nbsp;${userobj.name}</a>&nbsp;&nbsp;
                 <a href="logout" class="btn btn-light nav-link active">Logout&nbsp;<i
						class="fa-solid fa-right-to-bracket"></i></a>&nbsp;

				</c:if>
				
				<!-- User validation
				<c:if test="${userobj.role eq 'User'}">
	
	
	         &nbsp; <li class="nav-item dropdown navitem1"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown"> </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">

							<li><a class="dropdown-item"
								href="update_profile.jsp?id=${userobj.id }"><i class="fa-solid fa-pen-to-square"></i>&nbsp;Edit Profile</a></li>
							<li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#exampleModal1"
								href="#"><i class="fa-solid fa-trash"></i>&nbsp;delete Account</a></li>
							<li><a class="dropdown-item"
								href="ViewFormFilead.jsp?id=${userobj.id}"><i class="fa-brands fa-slack"></i>&nbsp;Form Details</a></li>
						</ul>
					</li>

					<a href="#" class="btn btn-light nav-link active"
						data-bs-toggle="modal" data-bs-target="#exampleModal"><i
						class="fa-solid fa-user">&nbsp;</i>&nbsp;${userobj.name}</a>&nbsp;&nbsp;
                 <a href="logout" class="btn btn-light nav-link active">Logout&nbsp;<i
						class="fa-solid fa-right-to-bracket"></i></a>&nbsp;
		
	</c:if>-->
				



				<!-- Empty validation User,Admin -->
				<c:if test="${ empty userobj }"> 	
				
					<a href="login.jsp" class="btn btn-light nav-link active"><i
						class="fa-solid fa-right-to-bracket">&nbsp;</i>Login</a>&nbsp;&nbsp;
                  <a href="signup.jsp"
						class="btn btn-light nav-link active"><i
						class="fa-solid fa-user">&nbsp;</i>Signup</a>
			   </c:if>

			</div>
		</div>
	</div>
</nav>







<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">

				<h5 class="modal-title" id="exampleModalLabel">Profile</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<div class="card">
					<div class="card-body">
						<div class="text-center text success">
							<i class="fas fa-user-circle fa-3x"></i>
						</div>

						<table class="table">

							 <tbody>
								<tr>
									<th scope="row">Name</th>
									<th>${userobj.name }</th>
								</tr>

								<tr>
									<th scope="row">Qualification</th>
									<th>${userobj.qualification }</th>
								</tr>

								<tr>
									<th scope="row">Email</th>
									<th>${userobj.email }</th>
								</tr>

							</tbody>
						</table>

						<!--  
					<a href="update_profile.jsp?id=${userobj.id }" class="btn btn-sm bg-success text-white ">Edit Profile</a>
				-->


					</div>
				</div>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>

			</div>
		</div>
	</div>
</div>




<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Account</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h5>Are you sure want to delete your Account</h5>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <a href="deleteuser?id=${userobj.id}" class="btn btn-md bg-danger text-white">Delete</a><br>
      </div>
    </div>
  </div>
</div>




