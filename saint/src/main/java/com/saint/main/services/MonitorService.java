package com.saint.main.services;

import java.util.*;

import javax.annotation.*;

import org.springframework.stereotype.*;

import com.saint.main.domain.*;
import com.saint.main.persistence.*;


@Service(value="MonitorService")
public class MonitorService {

	
	@Resource(name="MonitorMapper")
	private MonitorMapper monitorMapper;
	
	public List<WorkerVO> getWorkerList(){
		return monitorMapper.getWorkerList();
	}


	public void updateWorker(WorkerVO vo){
		monitorMapper.updateWorker(vo);
	}
	public void updateCCTVImg(WorkerVO vo){
		monitorMapper.updateCCTVImg(vo);
	}
	
}
