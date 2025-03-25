package com.itap.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.HashMap;

public class DAO {

	private Connection c;
public DAO() throws SQLException, ClassNotFoundException{
	Class.forName("com.mysql.cj.jdbc.Driver");
	c= DriverManager.getConnection("jdbc:mysql://localhost:3306/itap","root","Nikhil@727537");
}
public void close() throws SQLException {
	c.close();
}
public String login(String userid, String Password) throws SQLException {
	PreparedStatement  p = c.prepareStatement("select * from users where user_id=? and password=?");
	p.setString(1, userid);
	p.setString(2, Password);
	ResultSet r = p.executeQuery();
	if(r.next())
		return r.getString("user_name");
	else
		return null;
	
}
public String register(String userid, String name , String Password, String contact) throws SQLException{
	PreparedStatement p;
	try {
		p = c.prepareStatement("insert into users (user_id, user_name, contact , password) values(?,?,?,?)");
		p.setString(1, userid);
		p.setString(2, name);
		p.setString(3, contact);
		p.setString(4, Password);
		p.executeUpdate();
		return "Success";
	} catch (SQLIntegrityConstraintViolationException e) {
		e.printStackTrace();
		return "fail";
	}
	
	
}
public boolean UserCheck(String userid)throws SQLException {
	PreparedStatement p = c.prepareStatement("select * from users where user_id=?");
	p.setString(1, userid);
	ResultSet rs = p.executeQuery();
	if(rs.next())
		return true;
	else
		return false;
}
public String addJob(String post, String cname, String location, String minsal, String maxsal, String exp, String type , String desc) throws SQLException{
	PreparedStatement p;
	try {
		p = c.prepareStatement("insert into jobs (post, cname, location , minsalery, maxsalery, experience, type, description) values(?,?,?,?,?,?,?,?)");
		p.setString(1, post);
		p.setString(2, cname);
		p.setString(3, location);
		p.setString(4, minsal);
		p.setString(5, maxsal);
		p.setString(6, exp);
		p.setString(7, type);
		p.setString(8, desc);
		p.executeUpdate();
		return "Success";
	} catch (SQLIntegrityConstraintViolationException e) {
		e.printStackTrace();
		return "fail";
	}	
}
public String ChangePassword(String userid , String password)throws SQLException{
	PreparedStatement  p = c.prepareStatement("update users set password=? where user_id=?");
	p.setString(1, password);
	p.setString(2, userid);
	p.executeUpdate();
	return "Success";
}
public ArrayList<HashMap<String, Object>> allJobs() throws SQLException {
	PreparedStatement  p = c.prepareStatement("select * from jobs");
	ResultSet r = p.executeQuery();
	ArrayList<HashMap<String, Object>> jobs = new ArrayList<HashMap<String,Object>>();
	while(r.next()) {
		HashMap<String, Object> jobd = new HashMap<String, Object>();
		jobd.put("post", r.getString("post"));
		jobd.put("cname", r.getString("cname"));
		jobd.put("location", r.getString("location"));
		jobd.put("minsal", r.getString("minsalery"));
		jobd.put("maxsal", r.getString("maxsalery"));
		jobd.put("exp", r.getString("experience"));
		jobd.put("type", r.getString("type"));
		jobs.add(jobd);
	}
		return jobs;	
}
public ArrayList<HashMap<String, Object>> fresherJobs(String type) throws SQLException {
	PreparedStatement  p = c.prepareStatement("select * from jobs where experience=?");
	p.setString(1, type);
	ResultSet r = p.executeQuery();
	ArrayList<HashMap<String, Object>> jobs = new ArrayList<HashMap<String,Object>>();
	while(r.next()) {
		HashMap<String, Object> jobd = new HashMap<String, Object>();
		jobd.put("post", r.getString("post"));
		jobd.put("cname", r.getString("cname"));
		jobd.put("location", r.getString("location"));
		jobd.put("minsal", r.getString("minsalery"));
		jobd.put("maxsal", r.getString("maxsalery"));
		jobd.put("exp", r.getString("experience"));
		jobd.put("type", r.getString("type"));
		jobs.add(jobd);
	}
		return jobs;	
}
public ArrayList<HashMap<String, Object>> getJobByType(String type) throws SQLException {
	PreparedStatement  p = c.prepareStatement("select * from jobs where type like ?");
	p.setString(1, "%"+type+"%");
	ResultSet r = p.executeQuery();
	System.out.println();
	ArrayList<HashMap<String, Object>> jobs = new ArrayList<HashMap<String,Object>>();
	while(r.next()) {
		HashMap<String, Object> jobd = new HashMap<String, Object>();
		jobd.put("post", r.getString("post"));
		jobd.put("cname", r.getString("cname"));
		jobd.put("location", r.getString("location"));
		jobd.put("minsal", r.getString("minsalery"));
		jobd.put("maxsal", r.getString("maxsalery"));
		jobd.put("exp", r.getString("experience"));
		jobd.put("type", r.getString("type"));
		jobs.add(jobd);
	}
		return jobs;	
}
public ArrayList<HashMap<String, Object>> search(String post, String location, String exp) throws SQLException {
	PreparedStatement  p = c.prepareStatement("select * from jobs where post like ? and location like ? and experience like ? ");
	p.setString(1, "%"+post+"%");
	p.setString(2, "%"+location+"%");
	p.setString(3, "%"+exp+"%");
	ResultSet r = p.executeQuery();
	System.out.println();
	ArrayList<HashMap<String, Object>> jobs = new ArrayList<HashMap<String,Object>>();
	while(r.next()) {
		HashMap<String, Object> jobd = new HashMap<String, Object>();
		jobd.put("post", r.getString("post"));
		jobd.put("cname", r.getString("cname"));
		jobd.put("location", r.getString("location"));
		jobd.put("minsal", r.getString("minsalery"));
		jobd.put("maxsal", r.getString("maxsalery"));
		jobd.put("exp", r.getString("experience"));
		jobd.put("type", r.getString("type"));
		jobs.add(jobd);
	}
		return jobs;	
}
public HashMap<String, Object> getJobByName(String Name) throws SQLException {
	PreparedStatement  p = c.prepareStatement("select * from jobs where post like ?");
	p.setString(1, "%"+ Name+"%");
	ResultSet r = p.executeQuery();
	HashMap<String, Object> jobd = new HashMap<String, Object>();
	if(r.next()) {
//		HashMap<String, Object> jobd = new HashMap<String, Object>();
		System.out.println(r.getString("post"));
		jobd.put("post", r.getString("post"));
		jobd.put("cname", r.getString("cname"));
		jobd.put("location", r.getString("location"));
		jobd.put("minsal", r.getString("minsalery"));
		jobd.put("maxsal", r.getString("maxsalery"));
		jobd.put("exp", r.getString("experience"));
		jobd.put("type", r.getString("type"));
		jobd.put("desc", r.getString("description"));
//		jobs.add(jobd);
	}
		return jobd;	
}
public boolean addPdf(String name, InputStream pdf) throws SQLException{
	PreparedStatement  p = c.prepareStatement("insert into resume (pdf_name, pdf_value) value(?,?)");
	p.setString(1, name);
	p.setBlob(2, pdf);
	int r = p.executeUpdate();
	if(r>0) {
		return true;
	}
	else 
		return false;
}
}
