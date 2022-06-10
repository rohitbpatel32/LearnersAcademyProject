package com.Bean;

public class Course {

	private String cid;
	private String course;
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	@Override
	public String toString() {
		return "Course [cid=" + cid + ", course=" + course + "]";
	}
	
	
	
	
}
