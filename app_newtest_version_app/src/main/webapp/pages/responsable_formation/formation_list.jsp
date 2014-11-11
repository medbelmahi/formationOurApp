<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-2.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
function jsonGetFormation(idFormation){
	$.getJSON('<s:url action="getFormation" namespace="/ajax" />', {idFormation : idFormation}, function(jsonResponse) {
		if(jsonResponse.status === "success"){
			//get update Form			
			var updateForm = document.getElementById("update_formation");
			
			//set inputs value from jsonResponse
			updateForm.idFormation.value = jsonResponse.idFormation;
			updateForm.titreFormation.value = jsonResponse.titreFormation;
			updateForm.descriptionFormation.value = jsonResponse.descriptionFormation;
			
		}
  	});
}	

function updateSessionForm(idFormation){
	var addSessionForm = document.getElementById("add_session_formation");
	addSessionForm.idFormation.value = idFormation;
}
</script>
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

<table border="1" width="100%">
	<tr>
		<td>Titre</td>
		<td>Description</td>
		<td>Date Creation</td>
		<td>Options</td>
	</tr>
	<s:iterator value="formations">
		<tr>
			<td><s:property value="titreFormation" /></td>
			<td><s:property value="descriptionFormation" /></td>
			<td><s:property value="dateCreationFormation" /></td>
			<td>
				<ul>
					<li><a href='javascript:void(0);' onclick="jsonGetFormation(<s:property value="idFormation"/>);">Modifier</a></li>
					<li><a href='<s:url action="deleteFormation" ><s:param name="idFormation"><s:property value="idFormation"/></s:param></s:url>'>Supprimer</a></li>
					
					<li><a href='javascript:void(0);' onclick="updateSessionForm(<s:property value="idFormation"/>);">Add Sessions (+) </a></li>					
				</ul>
			</td>
		</tr>
		
		<s:iterator value="sessionFormations">
		<tr style="background-color:#eee;">
			<td><s:property value="titreSessionFormation" /></td>
			<td><s:property value="desciptionSessionFormation" /></td>
			<td><s:property value="dateCreateionSessionFormation" /></td>
			<td></td>
		</tr>
		</s:iterator>
		
	</s:iterator>
</table>

<hr>
<h3>Add Formation</h3>
<s:form action="addFormation" method="post">
	titre: <s:textfield name="titreFormation" />
	<br>
	description: <s:textarea name="descriptionFormation" />
	<br>
	<s:submit value="Add" />
</s:form>

<hr>
<h3>Update Formation</h3>
<s:form id="update_formation" action="updateFormation" method="post">
	<s:hidden name="idFormation" />
	<br>
	titre: <s:textfield name="titreFormation" />
	<br>
	description: <s:textarea name="descriptionFormation" />
	<br>
	<s:submit value="Update" />
</s:form>

<hr>
<h3>Add Session</h3>
<s:form id="add_session_formation" action="addSessionFormation" method="post">
	<s:hidden name="idFormation" />
	<br>
	titre: <s:textfield name="titreSessionFormation" />
	<br>
	lieu: <s:textfield name="lieuSessionFormation" />
	<br>
	dateDebut: <s:textfield name="dateDebutSessionFormation" />
	<br>
	dateFin: <s:textfield name="dateFinSessionFormation" />
	<br>
	Formateur: 
	<select name="idFormateur" >
		<s:iterator value="formateurs">
			<option value='<s:property value="idUtilisateur" />'><s:property value="fullname" /></option>
		</s:iterator>
	</select>
	<br>
	description: <s:textarea name="desciptionSessionFormation" />
	<br>
	<s:submit value="Update" />
</s:form>
</body>
</html>