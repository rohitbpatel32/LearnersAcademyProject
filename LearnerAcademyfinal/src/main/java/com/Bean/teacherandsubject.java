package com.Bean;

public class teacherandsubject {

	private String tid;
	private String sub;
	private String teacher;
	private String Course;
	public String getTid() {
		return tid;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public String getCourse() {
		return Course;
	}
	public void setCourse(String course) {
		Course = course;
	}
	@Override
	public String toString() {
		return "teacherandsubject [tid=" + tid + ", sub=" + sub + ", teacher=" + teacher + ", Course=" + Course + "]";
	}
	
	
}
