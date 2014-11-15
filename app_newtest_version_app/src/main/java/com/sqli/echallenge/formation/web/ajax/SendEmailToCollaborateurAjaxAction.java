/**
 * 
 */
package com.sqli.echallenge.formation.web.ajax;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sqli.echallenge.formation.metier.CollaborateurMetier;
import com.sqli.echallenge.formation.model.Collaborateur;
import com.sqli.echallenge.formation.util.SqliMail;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class SendEmailToCollaborateurAjaxAction extends SqliBasicAction {
	private static final long serialVersionUID = 5033218013153478951L;

	@Autowired
	public CollaborateurMetier collaborateurMetier;
	
	@Autowired
	public SqliMail sqliMail;
	
	private Long idCollaborateur;
	private String subjet, body;
	private String emailType;;
	private String status;
	
	@Override
	public String execute() throws Exception {
		try {
			Collaborateur collaborateur = collaborateurMetier.getCollaborateur(idCollaborateur);
			
			if(emailType.equals(SqliMail.EMAIL_TYPE_CONFIGURATION)){
				sqliMail.sendMail(collaborateur.getEmailCollaborateur(), 
								"com/sqli/echallenge/formation/web/mail/config-collaborateur-email-template.vm", 
								collaborateur);
			}
			else if(emailType.equals(SqliMail.EMAIL_TYPE_CUSTOM)){
				sqliMail.sendMail(collaborateur.getEmailCollaborateur(), 
								"com/sqli/echallenge/formation/web/mail/custom-email-template.vm", 
								body);
			}
			
			status = ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			status = ActionSupport.ERROR;
		}
		
		return ActionSupport.NONE;
	}
	
	public Long getIdCollaborateur() {
		return idCollaborateur;
	}

	public void setIdCollaborateur(Long idCollaborateur) {
		this.idCollaborateur = idCollaborateur;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEmailType() {
		return emailType;
	}

	public void setEmailType(String emailType) {
		this.emailType = emailType;
	}

	public String getSubjet() {
		return subjet;
	}

	public void setSubjet(String subjet) {
		this.subjet = subjet;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

}
