package com.saint.main.controller;


import java.io.*;
import java.text.*;
import java.util.*;

import javax.annotation.*;
import javax.servlet.http.*;
import javax.validation.*;

import org.apache.commons.io.*;
import org.json.*;
import org.springframework.http.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import com.saint.main.domain.*;
import com.saint.main.persistence.*;
import com.saint.main.services.*;
import com.saint.main.util.*;

/**
 * Handles requests for the application home page.
 */

@Controller(value="MonitorController")
public class MonitorController {
	
	@Resource(name="MonitorService")
	private MonitorService monitorService;
	
	@RequestMapping(value = "/image", method = RequestMethod.GET,produces = MediaType.IMAGE_JPEG_VALUE)
	@ResponseBody
	public byte[] showImage( @RequestParam("virtname") String virtname
	                      ,HttpServletResponse response
	                      ,HttpServletRequest request) throws Exception  {
	 
	   // CheckListVO checkVO = deviceService.getCheckListByCheckId(check_id);
	    
	 //  if(checkVO != null && checkVO.getVirtname() != null && !checkVO.getVirtname().equals("") ) {
		boolean isNo = false;
		File file = null;
		    try {
		    	
		    	if(virtname != null && !virtname.equals("")) {		       
		    		file = new File(FileWriterUtil.path + "//" + virtname);
		    		if(!file.exists()  )
		    			isNo = true; 
		    	}else {
		    		 isNo = true;
		    	}	
		    	
		    	if(isNo) 
		    		file = new File(FileWriterUtil.path + "//" + "noimage.png");
		    	
		        InputStream is = new FileInputStream(file);
		        try {
					return IOUtils.toByteArray(is);
				} finally {
					IOUtils.closeQuietly(is);
				}
	
		    } catch (IOException e) { throw new RuntimeException(e);   }
		 
	    
	}
	

	@RequestMapping(value = "/push_url", method = RequestMethod.GET)
	@ResponseBody
	public void push_url( HttpServletResponse response,
	                      HttpServletRequest request,
	                      @RequestParam("url") String url,
	                      @RequestParam("cctv_no") int cctv_no) throws Exception  {
		
		WorkerVO vo = new WorkerVO();
		
		if(cctv_no == 1){
			vo.setId(1);
		}else{
			vo.setId(3);
		}
		
		vo.setImg_cctv(url);
		
		monitorService.updateCCTVImg(vo);
	}
	
	@RequestMapping(value = {"/set"})
	public String set(Locale locale, HttpSession session , Model model,	
			@RequestParam("status") int status) throws Exception  {
		if(status == 99){
			//http://192.168.43.26:8000/alarm
			return "set";
		}
	
		
		WorkerVO vo = new WorkerVO();
		
	
		vo.setId(3);	
		vo.setStatus(status);
		monitorService.updateWorker(vo);
		
		return "btn";
	}
	
	@RequestMapping(value = "/worker/update", method = RequestMethod.GET)
	@ResponseBody
	public void updateWorker( HttpServletResponse response,
	                      HttpServletRequest request,
	                      @RequestParam("id") int id,
	                      @RequestParam("status") int status
	                     // @RequestParam("img_cctv") String img_cctv,
	                     // @RequestParam("helmet") int helmet
	                      ) throws Exception  {
		
		WorkerVO vo = new WorkerVO();
		vo.setId(id);
		vo.setStatus(status);
		//vo.setImg_cctv(img_cctv);
		//vo.setHelmet(helmet);
		
		monitorService.updateWorker(vo);
	}
	
	@RequestMapping("alarm")
	public void alarm( HttpSession session, HttpServletRequest request, Model model) {
		
	}
	@RequestMapping("monitor")
	public void monitor( HttpSession session, HttpServletRequest request, Model model) {
	
	}
	
	@RequestMapping("btn")
	public void btn( HttpSession session, HttpServletRequest request, Model model) {
		
	}
	
	@RequestMapping("/json/workerList")
	public void workerList( HttpSession session, HttpServletRequest request, 	HttpServletResponse response, Model model) {
		List<WorkerVO> workerList =  monitorService.getWorkerList();			
		JSONObject jo = new JSONObject();		
		if (workerList != null && workerList.size() > 0) {
			jo.put("result", "true");
			JSONArray ja = new JSONArray();
			for (WorkerVO vo : workerList) {
				JSONObject jo2 = new JSONObject();
				jo2.put("id", vo.getId());
				jo2.put("team_no", vo.getTeam_no());
				jo2.put("name", vo.getName());
				jo2.put("job", vo.getJob());
				jo2.put("phone", vo.getPhone());				
				jo2.put("status", vo.getStatus());
				jo2.put("etc", vo.getEtc());
				jo2.put("lat", vo.getLat());
				jo2.put("lng", vo.getLng());
				jo2.put("img_profile", vo.getImg_profile());
				jo2.put("img_cctv", vo.getImg_cctv());
				jo2.put("helmet", vo.getHelmet());
				jo2.put("address", vo.getAddress());
				
				ja.put(jo2);
			}
			jo.put("worker_item", ja);

		} else {
			jo.put("result", "false");
		}

		try {
			response.getWriter().print(jo.toString());

		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	@RequestMapping("base")
	public void base( HttpSession session, HttpServletRequest request, Model model) {
		
	
	}
	

}
