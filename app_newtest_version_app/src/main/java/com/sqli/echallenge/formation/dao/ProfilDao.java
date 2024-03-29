package com.sqli.echallenge.formation.dao;

import java.util.List;

import com.sqli.echallenge.formation.model.Profil;


public interface ProfilDao {
	public Profil getProfil(Long idProfil) throws Exception;
	public Profil getProfil(String nomProfil) throws Exception;
	public void addProfil(Profil profil) throws Exception;
	public void removeProfil(Long idProfil) throws Exception;
	public void updateProfil(Profil profil) throws Exception;
	public List<Profil> getAllProfils() throws Exception;
}
