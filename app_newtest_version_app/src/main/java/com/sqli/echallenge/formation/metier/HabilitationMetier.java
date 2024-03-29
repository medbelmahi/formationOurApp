/**
 * 
 */
package com.sqli.echallenge.formation.metier;

import java.util.List;

import com.sqli.echallenge.formation.model.Habilitation;
import com.sqli.echallenge.formation.model.HabilitationScore;

/**
 * @author Mouad
 *
 */
public interface HabilitationMetier {
	public Habilitation getHabilitation(Long idHabilitation) throws Exception;
	public void addHabilitation(Habilitation habilitation) throws Exception;
	public void removeHabilitation(Long idHabilitation) throws Exception;
	public void updateHabilitation(Habilitation habilitation) throws Exception;
	public List<Habilitation> getAllHabilitations() throws Exception;
	public List<Habilitation> getAllHabilitations_notInCollabList(List<HabilitationScore> collabHabilitationScoreList) throws Exception;
}
