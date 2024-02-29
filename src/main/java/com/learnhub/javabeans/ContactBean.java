package com.learnhub.javabeans;

import java.io.Serializable;

public class ContactBean implements Serializable {
    
    private static final long serialVersionUID = 1L;
    private String name;
    private String id;
    private String email;
    private String message;
    
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String feedback) {
		this.message = feedback;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
    
}