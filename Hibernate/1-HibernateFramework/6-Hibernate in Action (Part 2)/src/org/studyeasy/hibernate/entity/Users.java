package org.studyeasy.hibernate.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users {

	@Id
	@Column(name = "user_id")
	int userId;

	@Column(name = "name")
	String username;

	@Column(name = "email")
	String email;

	
	public Users(String username, String email) {
		this.username = username;
		this.email = email;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return email;
	}

	public void setPassword(String password) {
		this.email = password;
	}

}
