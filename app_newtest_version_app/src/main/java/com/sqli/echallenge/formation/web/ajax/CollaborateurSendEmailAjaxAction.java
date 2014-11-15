/**
 * 
 */
package com.sqli.echallenge.formation.web.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.CollaborateurMetier;
import com.sqli.echallenge.formation.model.Collaborateur;
import com.sqli.echallenge.formation.model.EmailObject;
import com.sqli.echallenge.formation.util.SqliMail;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class CollaborateurSendEmailAjaxAction extends SqliBasicAction {
	private static final long serialVersionUID = -4990092682111233905L;

	@Autowired
	public CollaborateurMetier collaborateurMetier;
	
	@Autowired
	public SqliMail sqliMail;
	
	private Long id;
	private String object;
	private String msg;
	private String status;
	
	@Override
	public String execute() throws Exception {
		
		try{
			Collaborateur collaborateur = collaborateurMetier.getCollaborateur(id);
			
			EmailObject emailObject = new EmailObject(object,msg,collaborateur);
			
			//Send Email
			sqliMail.sendMail(collaborateur.getEmailCollaborateur(), "com/sqli/echallenge/formation/web/mail/config-collaborateur-email-template.vm", emailObject);
//			sqliMail.sendMail(collaborateur.getEmailCollaborateur(), "com/sqli/echallenge/formation/web/mail/config-collaborateur-email-template.vm", collaborateur);
			setSessionActionMessageText(getText("sendEmailToCollaborateurAction.error.send.success"));
			
			
			status =  ActionSupport.SUCCESS;
			
		}catch(Exception e){
			//AddErrorMessage
			setSessionActionErrorText(getText("sendEmailToCollaborateurAction.error.send.fail"));
			status = ActionSupport.ERROR;
		}
		
		return ActionSupport.NONE;
	}

	@RequiredFieldValidator(shortCircuit=true)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

}
