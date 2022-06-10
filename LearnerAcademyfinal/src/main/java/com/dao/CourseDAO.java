package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Dbcon.DBUtil;

import com.Bean.Course;

public class CourseDAO {

		public int insertcourse(Course c) throws ClassNotFoundException, SQLException {
			Connection con=DBUtil.getConn();
			String sql="insert into Course values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,c.getCid());
			ps.setString(2,c.getCourse());
			
			return ps.executeUpdate();
		}
		
		
		public List<Course> getallCourses() throws ClassNotFoundException, SQLException{
			ArrayList<Course> list=new ArrayList<>();
			Connection con=DBUtil.getConn();
			String sql="select * from Course";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Course c=new Course();
				c.setCid(rs.getString(1));
				c.setCourse(rs.getString(2));
				list.add(c);
				
			}
			return list;
		}
		
		 public int edit(Course c) throws ClassNotFoundException, SQLException {
		        Connection con=DBUtil.getConn();
		        String sql="update Course set Course=? where cid =?";    
		        PreparedStatement ps=con.prepareStatement(sql);
		        
		        ps.setString(2,c.getCid());
		       ps.setString(1, c.getCourse());
		        
		       
		        return ps.executeUpdate();
		    }
		 public int delete(Course c) throws ClassNotFoundException, SQLException {
		        Connection con=DBUtil.getConn();
		        String sql="delete from Course where cid=?";    
		        PreparedStatement ps=con.prepareStatement(sql);
		        ps.setString(1,c.getCid());
		        return ps.executeUpdate();
		    }
		 

}
