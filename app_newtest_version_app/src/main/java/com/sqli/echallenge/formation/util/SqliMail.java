/**
 * 
 */
package com.sqli.echallenge.formation.util;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.ui.velocity.VelocityEngineUtils;


/**
 * @author Mouad
 *
 */
public class SqliMail {
	public static final String EMAIL_TYPE_CONFIGURATION = "email_type_configuration";
	public static final String EMAIL_TYPE_PASSWORD_RESET= "email_type_password_reset";
	public static final String EMAIL_TYPE_CUSTOM = "email_type_custom";
	
	private JavaMailSender mailSender;
	private VelocityEngine velocityEngine;
	 
	public void sendMail(final String to, final String template, final Object model) throws Exception {
		
	        MimeMessagePreparator preparator = new MimeMessagePreparator() {
	        	
	            public void prepare(MimeMessage mimeMessage) throws Exception {
	            	
	                MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
	                message.setTo(to);
	                
	                Map<String, Object> map = new HashMap<String, Object>();
	                map.put("model", model);
	                
	                @SuppressWarnings("deprecation")
					String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, template, map);
	                message.setText(text, true);
	            }
	        };
	        this.mailSender.send(preparator);
	}
	
	public JavaMailSender getMailSender() {
		return mailSender;
	}

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	public VelocityEngine getVelocityEngine() {
		return velocityEngine;
	}

	public void setVelocityEngine(VelocityEngine velocityEngine) {
		this.velocityEngine = velocityEngine;
	}
}
