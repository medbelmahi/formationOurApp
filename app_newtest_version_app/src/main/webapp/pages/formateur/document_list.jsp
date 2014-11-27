<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<!-- My version of Action Notifications -->
	<s:if test="isSessionActionError()">
		Error: <s:property value="sessionActionErrorText" />
	</s:if>
	<s:if test="isSessionMessageError()">
		Message: <s:property value="sessionActionMessageText" />
	</s:if>
	<!-- End of Action Notifications -->
	<br>
	
	<h1>List Documents</h1>
	<s:form action="deleteDocument" method="post">
	<table border="1" width="100%">
		<tr>
			<td>Nom</td>
			<td>Description</td>
			<td>Supprimer</td>
		</tr>	
		<s:iterator value="sessionDocuments">
		<tr>
			<td><a target="_blank" href="<s:property value="urlDocument"/>"><s:property value="nomDocument"/></a></td>
			<td><s:property value="DescriptionDocument"/></td>
			<td><input type="checkbox" name="idSessionDocument" value="<s:property value="idSessionDocument"/>" /></td>
		</tr>
		</s:iterator>
	</table>
	
	<s:submit value="Supprimer" />
	</s:form>
	
	<!-- Form addDocuments -->
	<hr>
	<h1>Add Documents</h1>
	<s:form action="uploadDocument" method="post" enctype="multipart/form-data">
		<s:hidden name="idSessionFormation" />
		<!-- File 1 -->
		<s:file name="fileUpload" />
		<s:textarea name="descriptionFile" /><br>
		<!-- File 2 -->
		<s:file name="fileUpload" />
		<s:textarea name="descriptionFile" /><br>
		
		<s:submit value="Upload" />
	</s:form>
</body>
</html>