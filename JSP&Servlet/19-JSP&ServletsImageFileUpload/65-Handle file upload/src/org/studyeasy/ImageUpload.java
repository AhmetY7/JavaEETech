package org.studyeasy;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/ImageUpload")
public class ImageUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
      ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory()); // Bu şekilde upload değişkeni oluşturuyoruz
      
      try {
		List<FileItem> images = upload.parseRequest(request);  // upload dosyalarımızı fileitem olarak listeye ekliyoruz çünkü upload elementimiz çoklu dosya seçebiliyor
		for(FileItem image: images) {
			String name = image.getName(); // resmin full adresini alıyoruz burada
			try{name = name.substring(name.lastIndexOf("\\")+1);} catch(Exception e) {} // sadece resmin ismini almak için substring yapıyoruz.
		}
		
		
	} catch ( Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
      
      
      
      
      
	}

}
