/**
 * 
 */
package com.sqli.echallenge.formation.web.formateur;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.SessionDocumentMetier;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class SessionDocumentDeleteAction extends SqliBasicAction {
	private static final long serialVersionUID = 2698352761053201458L;
	
	@Autowired
	public SessionDocumentMetier sessionDocumentMetier;
	
	private Long[] idSessionDocument;
	
	@Override
	public String execute() throws Exception {
		try{
			
			for(Long id : idSessionDocument){
				//check if sessionDocument is for the actual formateur
				
				//delete file from directory
				
				//remove document
				sessionDocumentMetier.deleteSessionDocument(id);
			}
			
			setSessionActionMessageText(getText("DeleteSessionDocument.message.delete.success"));
			return ActionSupport.SUCCESS;
			
		}catch(Exception e){
			setSessionActionMessageText(getText("DeleteSessionDocument.error.delete.fail"));
			return ActionSupport.ERROR;
		}
	}

	@RequiredFieldValidator(shortCircuit=true)
	public Long[] getIdSessionDocument() {
		return idSessionDocument;
	}

	public void setIdSessionDocument(Long[] idSessionDocument) {
		this.idSessionDocument = idSessionDocument;
	}
}
