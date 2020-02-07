package org.studyeasy.entity;

// entity classları databesimizi depicts eder yani database değişkenlerini oluştururuz değişken tipleri ile beraber
public class User {
	//Buradaki değişken isimleri ile databasedeki columnların isminin aynı olmasına dikkat etmemiz lazım
	private int users_id;
	private String usename;
	private String email;
	public User(int users_id, String username, String email) {
		super();
		this.users_id = users_id;
		this.usename = username;
		this.email = email;
	}
	public int getUsers_id() {
		return users_id;
	}
	public void setUsers_id(int users_id) {
		this.users_id = users_id;
	}
	public String getUsername() {
		return usename;
	}
	public void setUsername(String username) {
		this.usename = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

	
}
