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
		  // Veriyi database e eklemek için 4 adımımız var
		  
		  // Create object of entity class type
		  Users user = new Users("username", "email@hotmail.com"); // Veri ekleyeceğimiz zaman önce entity classından instance oluşturuyoruz
		  // Start transaction
		  session.beginTransaction(); // Sonra transaction açıyoruz.
		  // Perform operation
		  session.save(user); // Bu şekilde veriyi database eklemet istediğimizi söyledik
		  // Commit the transaction 
		  session.getTransaction().commit(); // commit ile de işlemleri veritabanına yolladık
		  System.out.println("Row added!");
		
		} finally {
			session.close();
			factory.close();
		}
	
  }
}






