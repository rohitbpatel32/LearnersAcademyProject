package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Dbcon.DBUtil;
import com.Bean.Student;

public class StudentDao {

	public int insertstudent(Student s) throws ClassNotFoundException, SQLException {
		Connection con=DBUtil.getConn();
		String sql="insert into student values(?,?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,s.getStudid());
		ps.setString(2,s.getStudfname());
		ps.setString(3,s.getStudlname());
		ps.setString(4,s.getStuddob());
		ps.setString(5,s.getStudadd());
		ps.setString(6,s.getStudphone());
		ps.setString(7,s.getAssigncls());
		ps.setString(8,s.getClassid());

		return ps.executeUpdate();
	}
	
	
	public List<Student> getallstudents() throws ClassNotFoundException, SQLException{
		ArrayList<Student> list=new ArrayList<>();
		Connection con=DBUtil.getConn();
		String sql="select * from student";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Student s=new Student();
			
			s.setStudid(rs.getString(1));
			s.setStudfname(rs.getString(2));
			s.setStudlname(rs.getString(3));
			s.setStuddob(rs.getString(4));
			s.setStudadd(rs.getString(5));
			s.setStudphone(rs.getString(6));
			s.setAssigncls(rs.getString(7));
			s.setClassid(rs.getString(8));
			list.add(s);
			
		}
		return list;
	}
	
	 public int edit(Student s) throws ClassNotFoundException, SQLException {
	        Connection con=DBUtil.getConn();
	        String sql="update student set studfname=?,studlname=?,studdob=?,studadd=?,studphone=?,Course=?,Cid=? where studid=?";    
	        PreparedStatement ps=con.prepareStatement(sql);
	        
	        ps.setString(8,s.getStudid());
			ps.setString(1,s.getStudfname());
			ps.setString(2,s.getStudlname());
			ps.setString(3,s.getStuddob());
			ps.setString(4,s.getStudadd());
			ps.setString(5,s.getStudphone());
			ps.setString(6,s.getAssigncls());
			ps.setString(7,s.getClassid());
	        return ps.executeUpdate();
	    }
	 public int delete(Student s) throws ClassNotFoundException, SQLException {
	        Connection con=DBUtil.getConn();
	        String sql="delete from student where studid=?";    
	        PreparedStatement ps=con.prepareStatement(sql);
	        ps.setString(1,s.getStudid());
	        return ps.executeUpdate();
	    }
}
