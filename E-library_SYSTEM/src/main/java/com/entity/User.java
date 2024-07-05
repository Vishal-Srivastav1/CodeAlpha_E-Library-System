package com.entity;

public class User {
   //User                                    
     private int id;                
     private String name;           
     private String email;  
     private String qualification;
     private String password;       
     private String role;
     private String bookname;
     private String price;
	private String image; 
     private String bookcategrey;
	
     
	






	public User(String name, String qualification, String email, String password,  String role) {
		
		this.name = name;
		this.qualification = qualification;
		this.email = email;
		this.password = password;
		this.role = role;
	}

	

	


	public User(String bookname, String price, String image) {
		super();
		this.bookname = bookname;
		this.price = price;
		this.image = image;
	}






	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	 public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}


	public String getBookcategrey() {
		return bookcategrey;
	}


	public void setBookcategrey(String bookcategrey) {
		this.bookcategrey = bookcategrey;
	}

	public String getPrice() {
			return price;
		}
	 
		public void setPrice(String price) {
			this.price = price;
		}
		

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}           

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	
                              

}












