package kr.or.ddit.file.controller;

import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import kr.or.ddit.util.PartUtil;

import org.slf4j.LoggerFactory;


/**
 * Servlet implementation class FileUploadServlet
 */
//@WebServlet("/fileUpload")

// 5MB = 5 * 1MB = 5 * 1024KB = 5 * 1024 * 1024BYTE
@MultipartConfig(maxFileSize=5*1024*1024, maxRequestSize= 5*5*1024*1024)
public class FileUploadServlet extends HttpServlet {
	private static final String UPLOAD_PATH = "d:\\picture\\";
	
	// logger객체 생성.
	private org.slf4j.Logger logger = LoggerFactory.getLogger(FileUploadServlet.class);
	
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("jsp/fileUpload.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contentType = request.getContentType();
		String userId = request.getParameter("userId");
		String uploadFile = request.getParameter("uploadFile");
		
//		System.out.println("userId : " + userId);
//		System.out.println("uploadFile : " + uploadFile);
		// sysout 되도록 쓰지 않기. mvn - logback - pom파일
		// 개발할때는 log 단계를 낮춰서 사용.
		
		// 하위 레벨은 상위 레벨을 포함하는 개념. 로깅 레벨이 info : logger.info(...),
		// ~ logger.error(...)
		// low level -     -     - high level
		// trace, debug, info, warn, error 순
		logger.debug("userId : " + userId);
		logger.debug("uploadFile : " + uploadFile);
		logger.debug("contentType : " + contentType);
		
		// 17:19:17.739 [http-nio-80-exec-3] DEBUG k.o.d.f.controller.FileUploadServlet - userId : brown
		// 17:19:17.741 [http-nio-80-exec-3] DEBUG k.o.d.f.controller.FileUploadServlet - uploadFile : Be There - CHEEZE.jpg
		
		
		// part 정보 확인.
//		request.getPart(name);
//		request.getParts();
		
//		Collection<Part> parts = request.getParts();
//		for(Part part : parts){
//			logger.debug("partName : {}", part.getName()); // {}안에 인자를 추가해서 출력.
//			logger.debug("Content-Disposition : {}", part.getHeader("Content-Disposition"));
//		}
		
		Part uploadFilePart = request.getPart("uploadFile");
		String contentDisposition = uploadFilePart.getHeader("Content-Disposition");
		logger.debug("contentDisposition : {}", contentDisposition);
		
		
		// application -> localhost/upload의 물리적 경로를 확인하는 메서드.
		ServletContext application = getServletContext();
		String path = application.getRealPath("/upload");
		logger.debug("path : {}", path);
		
		
		if(uploadFilePart.getSize() > 0){
			// 첨부파일 파일명 가져오기.
			String fileName = PartUtil.getFileNameFromPart(contentDisposition);
			
			// universally unique identifier (UUID).
			String uuidFileName = UUID.randomUUID().toString();
			
			uploadFilePart.write(path + File.separator + uuidFileName);		
			uploadFilePart.delete();
		}
		
		
		doGet(request, response);
	}

}
















