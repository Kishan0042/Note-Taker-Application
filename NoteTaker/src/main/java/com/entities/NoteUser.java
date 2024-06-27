package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class NoteUser {


	@Id
	private int id;
	private String title;
	@Column(length = 5000)
	private String content;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
		public NoteUser( String title, String content, Date addedDate) {
		super();
		this.id = id=new Random().nextInt(100000);
		this.title = title;
		this.content = content;
		
	}
	
//	public Note(int id, String title, String content, Date addedDate) {
//		super();
//		this.id = id;
//		this.title = title;
//		this.content = content;
//		this.addedDate = addedDate;
//	}
}
