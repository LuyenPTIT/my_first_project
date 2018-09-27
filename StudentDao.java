package com.savis.soft.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.savis.soft.Commom.DatabaseConnection;
import com.savis.soft.Model.Student;

public class StudentDao {
	private PreparedStatement ps;
	
	public List<Student> findAll(){
		List<Student> students = new ArrayList<>();
		Connection dbConnect = DatabaseConnection.openConnection();
		try {
			ps=dbConnect.prepareStatement("SELECT * FROM Persones");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Student student = new Student();
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setAddress(rs.getString("address"));
				student.setEmail(rs.getString("email"));
				student.setPhone(rs.getString("phone"));
				students.add(student);
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}
		
		return students;
		
	}
	
	public Student findOne(int id) {
		Student student = new Student();
		Connection dbconnect = DatabaseConnection.openConnection();
		try {
			ps=dbconnect.prepareStatement("SELECT * FROM Persones WHERE id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setAddress(rs.getString("address"));
				student.setEmail(rs.getString("email"));
				student.setPhone(rs.getString("phone"));
				
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// TODO: handle exception
		}
		
		return student;
		
	}
	public int createStudent(Student student) {
		Connection dbConnect=DatabaseConnection.openConnection();
		
		try {
			ps=dbConnect.prepareStatement("INSERT INTO Persones VALUES(?,?,?,?");
			ps.setString(1, student.getName());
			ps.setString(2, student.getAddress());
			ps.setString(3, student.getEmail());
			ps.setString(4, student.getPhone());

			ps.executeQuery();
			return 1;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return 0;
			// TODO: handle exception
		}
		
	}
	public int edit(int id) {
		Student student = new Student();
		Connection dbConnect = DatabaseConnection.openConnection();
		try {
			ps=dbConnect.prepareStatement("UPDATE Persones SET name=?, address=?, email=?, phone=? WHERE id=?");
			ps.setString(1, student.getName());
			ps.setString(2, student.getAddress());
			ps.setString(3, student.getEmail());
			ps.setString(4, student.getPhone());
			ps.setInt(5, student.getId());
			ps.executeQuery();
			return 1;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return 0;
			// TODO: handle exception
		}
		
	}
	
	public int remove(int id) {
		Connection dbConnect = DatabaseConnection.openConnection();
		try {
			ps=dbConnect.prepareStatement("DELETE FROM Persones WHERE id=?");
			ps.setInt(1, id);
			ps.executeQuery();
			return 1;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return 0;
			// TODO: handle exception
		}
	}
	
	
}
