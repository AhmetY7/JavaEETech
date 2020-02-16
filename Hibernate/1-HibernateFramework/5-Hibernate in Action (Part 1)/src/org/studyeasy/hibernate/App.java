package org.studyeasy.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.studyeasy.hibernate.entity.Users;
/*
 * Hibernate kullanabilmek için 3 adımımız var
 * 1. hibernate cfg.xml dosyası oluşturmak
 * 2. entity classları oluşturmak
 * 3. Bu app sayfasını oluşturmak
 * */
public class App {

  public static void main(String[] args) {
	  SessionFactory factory = new Configuration()
			                   .configure("hibernate.cfg.xml") // Bu şekilde configure dosyamızı belirttik
			                   .addAnnotatedClass(Users.class) // Entity classımızı verdik
			                   .buildSessionFactory(); // Bu şekilde de build ediyoruz.
	  
	  Session session = factory.getCurrentSession();
	  
	  // işlerimizi try bloğu içinde yapıyoruz ve işlerimizin sonunda session ve factory nesnelerimizi sonlandırmalıyız
	  try {
		  
	  } finally {
			session.close();
			factory.close();
			}
	
  }
}






