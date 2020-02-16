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
		  Users user = new Users(); // Veritabanından alacağımız veriyi entity classımızın intancesine vericez. Bu nedenle bir tane Users nesnesi oluşturuyoruz.
		  // Start transaction
		  session.beginTransaction();
		  // Perform operation
		  user = session.get(Users.class, 2); // sessionun get metodu ile veritabanından veriyi alıyoruz ve parametre olarak Type,id veriyorz
		  // Commit the transaction 
		  session.getTransaction().commit();
		  System.out.println(user);
		  
		
	} finally {
		session.close();
		factory.close();
	}
	
}
}






