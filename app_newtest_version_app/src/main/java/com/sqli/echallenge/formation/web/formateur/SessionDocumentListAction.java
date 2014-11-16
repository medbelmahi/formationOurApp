/**
 * 
 */
package com.sqli.echallenge.formation.web.formateur;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.SessionDocumentMetier;
import com.sqli.echallenge.formation.model.SessionDocument;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class SessionDocumentListAction extends SqliBasicAction {
	private static final long serialVersionUID = -9048136154497987979L;
	
	@Autowired
	public SessionDocumentMetier sessionDocumentMetier;
	
	private Long idSessionFormation;
	
	List<SessionDocument> sessionDocuments;
	
	@Override
	public String execute() throws Exception {
		try {
			//check if idSessionFormation is for formateur
			
			//get list documents
			sessionDocuments = sessionDocumentMetier.getAllDocumentsOfSession(idSessionFormation);
			
			return ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			setSessionActionErrorText(getText("sessionDocumentList.error.loading.fail"));
			return ActionSupport.ERROR;
		}
	}

	@RequiredFieldValidator(shortCircuit=true)
	public Long getIdSessionFormation() {
		return idSessionFormation;
	}

	public void setIdSessionFormation(Long idSessionFormation) {
		this.idSessionFormation = idSessionFormation;
	}

	public List<SessionDocument> getSessionDocuments() {
		return sessionDocuments;
	}

	public void setSessionDocuments(List<SessionDocument> sessionDocuments) {
		this.sessionDocuments = sessionDocuments;
	}

}
