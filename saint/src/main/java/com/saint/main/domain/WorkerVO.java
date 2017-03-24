package com.saint.main.domain;

import java.io.*;

public class WorkerVO  implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private int team_no;
	private String name;
	private int job;
	private String phone;	
	private int status;
	private String etc;
	private double lat;
	private double lng;
	private String img_profile;
	private String img_cctv;
	private int helmet;
	private String address;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTeam_no() {
		return team_no;
	}
	public void setTeam_no(int team_no) {
		this.team_no = team_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getJob() {
		return job;
	}
	public void setJob(int job) {
		this.job = job;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	public String getImg_profile() {
		return img_profile;
	}
	public void setImg_profile(String img_profile) {
		this.img_profile = img_profile;
	}
	public String getImg_cctv() {
		return img_cctv;
	}
	public void setImg_cctv(String img_cctv) {
		this.img_cctv = img_cctv;
	}
	public int getHelmet() {
		return helmet;
	}
	public void setHelmet(int helmet) {
		this.helmet = helmet;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
