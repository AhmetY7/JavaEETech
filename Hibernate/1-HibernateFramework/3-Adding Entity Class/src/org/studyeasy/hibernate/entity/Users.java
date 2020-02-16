package org.studyeasy.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity // bu annotation ile bu classın bir aslında database tableını temsil ettiğini söylüyoruz
@Table(name = "users") // bu annotation ile de hangi table olduğunu söylüyoruz
public class Users { // Sınıf isimini table ismi ile aynı tutmaya özen göstermeliyiz

	// Propertyler içinde annotasyon yapıyoruz.
	@Id // id olduğunu belirriyoruz.
	@Column(name = "user_id") // hangi columnların hangi property temsil ettiğini bu annatasyon ile gösteriyoruz
	int userId;

	@Column(name = "username")
	String username;

	@Column(name = "password")
	String password;

	@Column(name = "first_name")
	String firstName;

	@Column(name = "last_name")
	String lastName;

}
