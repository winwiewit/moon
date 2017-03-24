package com.saint.main.util;

import java.io.*;
import java.net.*;
import java.util.*;

import org.json.simple.*;
import org.json.simple.parser.*;

public class JsonGetData extends Thread {
	List<String> resultList = new ArrayList<String>();
	String managerid = "";
	String appkey = "";
	
	public JsonGetData( String m , String a ) {
		this.managerid = m;
		this.appkey = a;
	}
	
	@Override
	public void run() {
		String url="https://member.reco2.me/api/v1/managers/"+managerid+"/scan?appkey="+appkey;
		try {
		   URL object=new URL(url);
		 
		   HttpURLConnection con = (HttpURLConnection) object.openConnection();
		 
		   con.setDoOutput(true);
		   con.setDoInput(true);
		   con.setRequestProperty("Content-Type", "application/json");
		   con.setRequestMethod("GET");
		   con.setConnectTimeout(100000);

		   //display what returns the POST request
		   StringBuilder sb = new StringBuilder();  
		   int HttpResult =con.getResponseCode(); 
		   if(HttpResult ==HttpURLConnection.HTTP_OK){
		       BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(),"utf-8"));  
		       String line = null;  
		       while ((line = br.readLine()) != null) {  
		        sb.append(line + "\n");  
		       }  
		       br.close();  
		       
				JSONParser jsonParser = new JSONParser();
				//JSON데이터를 넣어 JSON Object 로 만들어 준다.
				JSONObject jsonObject = (JSONObject) jsonParser.parse(sb.toString());
				//data의 배열을 추출
				JSONArray dataInfoArray = (JSONArray) jsonObject.get("result");
				for(int i=0; i<dataInfoArray.size(); i++){
				    //배열 안에 있는것도 JSON형식 이기 때문에 JSON Object 로 추출
				JSONObject dataObject = (JSONObject) dataInfoArray.get(i);
				//JSON name으로 추출
				resultList.add(dataObject.get("macaddress").toString());
				}
		       
		   } else {
			   System.out.println(con.getResponseMessage());  
		   }
		   //con.disconnect();
		  } catch (Exception e) {
		   e.printStackTrace();
		  }
	}
	
	public List<String> getResult() {
		return resultList;
	}
}
