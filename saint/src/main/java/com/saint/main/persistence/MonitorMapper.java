package com.saint.main.persistence;

import java.util.*;

import org.springframework.jca.work.*;
import org.springframework.stereotype.*;

import com.saint.main.domain.*;

@Repository(value="MonitorMapper")
public interface MonitorMapper {

	public List<WorkerVO> getWorkerList();
	public void updateWorker(WorkerVO vo);
	public void updateCCTVImg(WorkerVO vo);

}