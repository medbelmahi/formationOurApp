/**
 * 
 */
package com.sqli.echallenge.formation.web.formateur;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.SeanceMetier;
import com.sqli.echallenge.formation.model.Seance;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class SessionSeanceListAction extends SqliBasicAction {
	private static final long serialVersionUID = -9048136154497987979L;
	
	@Autowired
	public SeanceMetier seanceMetier;
	
	private Long idSessionFormation;
	
	List<Seance> seances;
	
	@Override
	public String execute() throws Exception {
		try {
			//check if idSessionFormation is for formateur
			
			//get list seance
			seanceMetier.getAllSeancesOfSession(idSessionFormation);
			
			System.out.println("seanceMetier " + seances);
			
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

	public List<Seance> getSeances() {
		return seances;
	}

	public void setSeances(List<Seance> seances) {
		this.seances = seances;
	}
}
