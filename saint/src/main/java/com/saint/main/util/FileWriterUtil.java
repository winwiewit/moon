package com.saint.main.util;

import java.io.*;

import org.springframework.web.multipart.*;

public class FileWriterUtil {
	public static FileWriterUtil INSTANCE = new FileWriterUtil();
	private FileOutputStream fos;
	public static final String path = "C:\\server\\upload";

	public void writeFile(MultipartFile file, String fileName){
	         
	        try{	         
	            byte fileData[] = file.getBytes();	             
	           
	            fos = new FileOutputStream(path + "/" + fileName);    	
	            fos.write(fileData);	         
	        }catch(Exception e){	             
	            e.printStackTrace();	             
	        }finally{	             
	            if(fos != null){	                 
	                try{
	                    fos.close();
	                }catch(Exception e){}
	                 
	                }
	        }// try end;
	         

	}
	

	
	
}
