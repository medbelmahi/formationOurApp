/**
 * 
 */
package com.sqli.echallenge.formation.web.responsableformation;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class CollaborateurListAction extends SqliBasicAction {
	private static final long serialVersionUID = 3050958981198816432L;

	
	
	private Long idSessionFormation;
	
	@Override
	public String execute() throws Exception {
		try {
			
			setSessionActionMessageText(getText(""));
			return ActionSupport.SUCCESS;
			
		} catch (Exception e) {
			setSessionActionErrorText(getText(""));
			return ActionSupport.ERROR;
		}
	}

	public Long getIdSessionFormation() {
		return idSessionFormation;
	}

	public void setIdSessionFormation(Long idSessionFormation) {
		this.idSessionFormation = idSessionFormation;
	}
}
