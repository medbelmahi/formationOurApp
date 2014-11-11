package com.sqli.echallenge.formation.dao;

import java.util.List;

import com.sqli.echallenge.formation.model.Action;


public interface ActionDao {
	public Action getAction(Long idAction) throws Exception;
	public void addAction(Action action) throws Exception;
	public void removeAction(Long idAction) throws Exception;
	public void updateAction(Action action) throws Exception;
	public List<Action> getAllActions() throws Exception;
}
