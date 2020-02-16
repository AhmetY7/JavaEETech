package org.studyeasy.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.studyeasy.hibernate.entity.Users;

public class App {

  public static void main(String[] args) {
	  
	  SessionFactory factory = new Configuration()
			                   .configure("hibernate.cfg.xml")
			                   .addAnnotatedClass(Users.class)
			                   .buildSessionFactory();
	  
	  Session session = factory.getCurrentSession();
	  
	  try {
		  // Create object of entity class type
		  Users user = new Users(); // update edilecek veriyi yükleyeceğimiz entity classımız
		  // Start transaction
		  session.beginTransaction();
		  // Perform operation
		  user = session.get(Users.class, 8); // update için yine veriyi önce çekiyoruz.
		  // Updating object
		  user.setUsername("admin@studyeasy.org"); // set metodlarını kullanarak veriyi değiştiriyoruz.
		  // Commit the transaction 
		  session.getTransaction().commit(); // sonra commit ediyoruz.
		  System.out.println(user);
		  
		
	} finally {
		session.close();
		factory.close();
	}
	
}
}






