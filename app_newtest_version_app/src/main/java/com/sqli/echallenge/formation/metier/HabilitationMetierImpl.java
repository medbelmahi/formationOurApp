/**
 * 
 */
package com.sqli.echallenge.formation.metier;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sqli.echallenge.formation.dao.HabilitationDao;
import com.sqli.echallenge.formation.model.Habilitation;
import com.sqli.echallenge.formation.model.HabilitationScore;

/**
 * @author Mouad
 *
 */
@Service
@Transactional
public class HabilitationMetierImpl implements HabilitationMetier {
	
	@Autowired
	private HabilitationDao dao;
	
	public Habilitation getHabilitation(Long idHabilitation) throws Exception {
		return dao.getHabilitation(idHabilitation);
	}

	public void addHabilitation(Habilitation habilitation) throws Exception {
		dao.addHabilitation(habilitation);
	}

	public void removeHabilitation(Long idHabilitation) throws Exception {
		dao.removeHabilitation(idHabilitation);
	}

	public void updateHabilitation(Habilitation habilitation) throws Exception {
		dao.updateHabilitation(habilitation);
	}

	public List<Habilitation> getAllHabilitations() throws Exception {
		return dao.getAllHabilitations();
	}

	public HabilitationDao getDao() {
		return dao;
	}

	public void setDao(HabilitationDao dao) {
		this.dao = dao;
	}
	
	
	/**
	 * list des habilitations qui n'existent pas dans la liste des habilitations d'un collaborateur
	 *	@param CollabHabilitationScoreList : liste des habilidations d'un collaborateur
	 */
	public List<Habilitation> getAllHabilitations_notInCollabList(List<HabilitationScore> collabHabilitationScoreList)
			throws Exception {
		//variable temporelle pour stocker la nouvelle liste
		List<Habilitation> temp = new ArrayList<Habilitation>();
		List<Habilitation> allHabilitations = dao.getAllHabilitations();
		List<Habilitation> collabHabilitationList = getListHabilitationFromHabilitationScore(collabHabilitationScoreList);
				
		for(Habilitation h : allHabilitations){
			if(!existeHabilitationInList(collabHabilitationList,h)){
				temp.add(h);
			}
		}
		
		return temp;
	}
	
	/**
	 * verification si l'habilitation exite dans la liste ou nn 
	 */
	private boolean existeHabilitationInList(List<Habilitation> collabHabilitationList, Habilitation habi){
		for(Habilitation h : collabHabilitationList){
			if(h.getIdHabilitation().compareTo(habi.getIdHabilitation()) == 0){
				return true;
			}
		}
		
		return false;
	}
	
	
	/**
	 * recevoir une liste des habilitation a partir d'une liste des habilitationScore 
	 * @return 
	 */
	private List<Habilitation> getListHabilitationFromHabilitationScore(List<HabilitationScore> collabHabilitationScoreList)
	{
		List<Habilitation> collabHabilitationList = new ArrayList<Habilitation>();
		
		for(HabilitationScore hScore : collabHabilitationScoreList){
			collabHabilitationList.add(hScore.getHabilitation());
		}
		
		return collabHabilitationList;
	}

}
