/**
 * 
 */
package com.sqli.echallenge.formation.dao;

import java.util.List;

import com.sqli.echallenge.formation.model.HabilitationScore;

/**
 * @author Mouad
 *
 */
public interface HabilitationScoreDao {
	public HabilitationScore getHabilitationScore(Long idHabilitationScore) throws Exception;
	public void addHabilitationScore(HabilitationScore habilitationScore) throws Exception;
	public void removeHabililitationScore(Long idHabilitationScore) throws Exception;
	public void updateHabilitationScore(HabilitationScore habilitationScore) throws Exception;
	public List<HabilitationScore> getAllHabilitationScores(Long idCollaborateur) throws Exception;
}
