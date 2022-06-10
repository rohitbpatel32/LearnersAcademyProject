package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Bean.teacherandsubject;
import com.Dbcon.DBUtil;

public class SUBTEACHDAO {
	
	public int insert(teacherandsubject s) throws ClassNotFoundException, SQLException {
		Connection con=DBUtil.getConn();
		String sql="insert into teacherandsubject values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,s.getTid());
		ps.setString(2,s.getSub());
		ps.setString(3,s.getTeacher());
		ps.setString(4, s.getCourse());
		return ps.executeUpdate();
	}
	
	
	public List<teacherandsubject> getallsubteach() throws ClassNotFoundException, SQLException{
		ArrayList<teacherandsubject> list=new ArrayList<>();
		Connection con=DBUtil.getConn();
		String sql="select * from teacherandsubject";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			teacherandsubject s=new teacherandsubject();
			
			s.setTid(rs.getString(1));
			s.setSub(rs.getString(2));
			s.setTeacher(rs.getString(3));
			s.setCourse(rs.getString(4));
			
			list.add(s);
			
		}
		return list;
	}
	
	 public int edit(teacherandsubject s) throws ClassNotFoundException, SQLException {
	        Connection con=DBUtil.getConn();
	        String sql="update teacherandsubject set sub=?, Teacher=?, Course=? where Tid=?";    
	        PreparedStatement ps=con.prepareStatement(sql);
	        
	        ps.setString(4,s.getTid());
			ps.setString(1,s.getSub());
			ps.setString(2,s.getTeacher());
			ps.setString(3,s.getCourse());
			
	        return ps.executeUpdate();
	    }
	 public int delete(teacherandsubject s) throws ClassNotFoundException, SQLException {
	        Connection con=DBUtil.getConn();
	        String sql="delete from teacherandsubject where Tid=?";    
	        PreparedStatement ps=con.prepareStatement(sql);
	        ps.setString(1,s.getTid());
	        return ps.executeUpdate();
	    }

}
