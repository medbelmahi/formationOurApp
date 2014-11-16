/**
 * 
 */
package com.sqli.echallenge.formation.web.formateur;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.sqli.echallenge.formation.metier.SessionDocumentMetier;
import com.sqli.echallenge.formation.model.SessionDocument;
import com.sqli.echallenge.formation.util.SqliRandomGenerator;
import com.sqli.echallenge.formation.web.SqliBasicAction;

/**
 * @author Mouad
 *
 */
@Controller
public class SessionDocumentUploadAction extends SqliBasicAction implements ServletRequestAware  {
	private static final long serialVersionUID = 2698352761053201458L;
	
	public static final String SAVE_DIR = "session_document";
	
	private HttpServletRequest servletRequest;
	
	@Autowired
	public SessionDocumentMetier sessionDocumentMetier;
	
	private Long idSessionFormation;
	
	private File[] fileUpload;
	private String[] fileUploadContentType;
	private String[] fileUploadFileName;
	private String[] descriptionFile;
	
	@SuppressWarnings("deprecation")
	@Override
	public String execute() throws Exception {
		try{
			String serverRealPath = servletRequest.getRealPath("/");
			String contextPath = servletRequest.getContextPath();
			File saveDirContext = new File(contextPath, SAVE_DIR);
			File saveDirReal = new File(serverRealPath, SAVE_DIR);
			
			for(int i=0; i<fileUpload.length; i++){
				SessionDocument sd = new SessionDocument();
				sd.setIdSessionFormation(idSessionFormation);
				sd.setNomDocument(fileUploadFileName[i]);
				sd.setDescriptionDocument(descriptionFile[i]);
				
				//extract extension ".txt"
				String fileExtension = fileUploadFileName[i].substring(fileUploadFileName[i].lastIndexOf("."));
				
				//generate file name + extension
				String filename = new SqliRandomGenerator().generateRandomString() + fileExtension;
				
				File fileToSaveReal = new File(saveDirReal, filename);
				File fileToSaveContext = new File(saveDirContext, filename);
				
				//save file to directory
				FileUtils.copyFile(fileUpload[i], fileToSaveReal);
				
				System.out.println("real: " + fileToSaveReal);
				System.out.println("context: " + fileToSaveContext);
				
				//setUrlDocument
				sd.setUrlDocument(fileToSaveContext.toString());
				
				//save to db
				sessionDocumentMetier.addSessionDocument(sd);
			}
			
			setSessionActionMessageText(getText("sessionDocumentUpload.message.upload.success"));
			return ActionSupport.SUCCESS;
			
		}catch(Exception e){
			setSessionActionMessageText(getText("essionDocumentUpload.error.upload.fail"));
			return ActionSupport.ERROR;
		}
	}
	

	public File[] getFileUpload() {
		return fileUpload;
	}



	public void setFileUpload(File[] fileUpload) {
		this.fileUpload = fileUpload;
	}



	public String[] getFileUploadContentType() {
		return fileUploadContentType;
	}



	public void setFileUploadContentType(String[] fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}



	public String[] getFileUploadFileName() {
		return fileUploadFileName;
	}



	public void setFileUploadFileName(String[] fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	@RequiredFieldValidator(shortCircuit=true)
	public String[] getDescriptionFile() {
		return descriptionFile;
	}

	public void setDescriptionFile(String[] descriptionFile) {
		this.descriptionFile = descriptionFile;
	}
	@RequiredFieldValidator(shortCircuit=true)
	public Long getIdSessionFormation() {
		return idSessionFormation;
	}

	public void setIdSessionFormation(Long idSessionFormation) {
		this.idSessionFormation = idSessionFormation;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}
	
}
