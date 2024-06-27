package com.servlet;

import com.mysql.cj.xdevapi.Statement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import java.sql.Statement.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

class jdbcConnectror{

    Connection con;
    public jdbcConnectror() {
        
         try{
         Class.forName("com.mysql.cj.jdbc.Driver");
             con =DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","123456");
        
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
    }
    
}
class jdbcConnectroruser{

    Connection con;
    public jdbcConnectroruser() {
        
         try{
             Class.forName("com.mysql.cj.jdbc.Driver");
             con =DriverManager.getConnection("jdbc:mysql://localhost:3306/note","root","123456");
        
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
    }
    
}
class createTable
{
     java.sql.Statement statement;
     public createTable() {
        
         try{
        
        	 jdbcConnectror jd = new jdbcConnectror();
             String s = "create table registration(username varchar(50),password varchar(50),mobile varchar(50))";
             statement = jd.con.createStatement();
             statement.executeUpdate(s);
         
             System.out.println("create table");
             jd.con.close();
            
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
    }
    
}


class login
{
    PreparedStatement pst;
    
    public login()
    {
        
        try{
           jdbcConnectror jd = new jdbcConnectror();
           String s = "select*from registration where username=? and password=?";
           pst=jd.con.prepareStatement(s);
             
            
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
    }
    
}
class Registrer
{
     PreparedStatement pst;
     Connection con;
    public Registrer()
    {
        try{
          jdbcConnectror jd = new jdbcConnectror();
          String query="insert into registration values(?,?,?)";
          pst=jd.con.prepareStatement(query);
            
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
    }
    
}
class updatePasswordUser
{
    PreparedStatement ps;
 
    public updatePasswordUser()
    {
        try{
             jdbcConnectror jd = new jdbcConnectror();
             String query="update registration set password=?  where username=? ";
             ps = jd.con.prepareStatement(query);
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
    }
    
}
class FetchLoginData
{
    PreparedStatement ps;
    ResultSet rs;
    public FetchLoginData()
    {
        try{
             jdbcConnectror jd = new jdbcConnectror();
             String query="select * from registration ";
             ps = jd.con.prepareStatement(query);
             rs = ps.executeQuery();
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
    }
    
}
class CreateUserTable
{
    PreparedStatement ps;
    ResultSet rs;
    static String user ;
    java.sql.Statement statement;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(true);	
		this.user=(String)session.getAttribute("Username");
		
    }
    
    public CreateUserTable(HttpServletRequest request, HttpServletResponse response)
    {
    
    	System.out.println(" user name : "+user);
        try{
        	HttpSession session = request.getSession(true);
			
    		this.user=(String)session.getAttribute("Username");
    		
    		jdbcConnectroruser jd = new jdbcConnectroruser();
             
            String s = "create table "+user+"(id int AUTO_INCREMENT ,title varchar(500),content varchar(1000))";
            statement = jd.con.createStatement();
            statement.executeUpdate(s);
         
            System.out.println("create user table");
            jd.con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
    }
    
}

class NewUserNote
{
     PreparedStatement pst;
     Connection con;
    public NewUserNote()
    {
        try{
        	jdbcConnectroruser jd = new jdbcConnectroruser();
            String query="insert into "+CreateUserTable.user+" values(?,?)";
            pst=jd.con.prepareStatement(query);
            
        }
        catch(Exception e)
        {
            System.out.println(e);
            
        }
    }
    
}

public class MysqlConnectorData {
    
    public static void main(String[] args) {
        
       

        jdbcConnectror jc = new jdbcConnectror();
        
        
    }
   
}


