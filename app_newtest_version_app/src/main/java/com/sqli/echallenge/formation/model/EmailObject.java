package com.sqli.echallenge.formation.model;

public class EmailObject {
	private String object;
	private String msg;
	private Collaborateur collaborateur;
	
	
	
	public EmailObject(String object, String msg, Collaborateur collaborateur) {
		super();
		this.object = object;
		this.msg = msg;
		this.collaborateur = collaborateur;
	}
	
	
	public EmailObject() {
		super();
	}
	public String getObject() {
		return object;
	}
	public void setObject(String object) {
		this.object = object;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Collaborateur getCollaborateur() {
		return collaborateur;
	}
	public void setCollaborateur(Collaborateur collaborateur) {
		this.collaborateur = collaborateur;
	}
	
	
}
