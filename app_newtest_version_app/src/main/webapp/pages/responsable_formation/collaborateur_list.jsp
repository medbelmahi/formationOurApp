<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
function jsonGetCollaborateur(idCollaborateur){
	$.getJSON('<s:url action="getCollaborateur" namespace="/ajax" />', {idCollaborateur : idCollaborateur}, function(jsonResponse) {
		if(jsonResponse.status === "success"){
			//get update SessionFormation Form			
			var detailForm = document.getElementById("form_collaborateur_details");
			
			//set inputs value from jsonResponse
			detailForm.fullname.value = jsonResponse.fullname;
			detailForm.email.value = jsonResponse.email;
			detailForm.sexe.value = jsonResponse.sexeString;
			detailForm.dateNaissance.value = jsonResponse.dateNaissance;
			detailForm.telephone.value = jsonResponse.telephone;
			detailForm.adresse.value = jsonResponse.adresse;

			detailForm.habilitations.value = "";
			$.each(jsonResponse.habilitationScores, function(key, value) {
				detailForm.habilitations.value += key + "( " + value + " ), ";
	        });
			
		}
  	});		
}

function jsonInscrireCollaborateur(idCollaborateur, idSessionFormation){
	$.getJSON('<s:url action="inscrireCollaborateur" namespace="/ajax" />', {idCollaborateur : idCollaborateur, idSessionFormation : idSessionFormation}, function(jsonResponse) {
		if(jsonResponse.status === "success"){
			//affichage d'un message ou une popup sghiwra de success
			alert("success");
			//supprimer le champs de la table
		}else {
			//affichage d'un message ou popup de failure
			alert("not success");
		}
  	});		
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

<h3>Collaborateur Inscrit  (Tab)</h3>
<table border="1" width="100%">
	<tr>
		<td>Nom</td>
		<td>Email</td>
		<td>Telephone</td>
		<td>Sexe</td>
		<td>Status</td>
	</tr>
	<s:iterator value="collaborateursInscrit">
		<tr>
			<td><s:property value="collaborateur.fullname" /></td>
			<td><s:property value="collaborateur.emailCollaborateur" /></td>
			<td><s:property value="collaborateur.telephoneCollaborateur" /></td>
			<td><s:property value="collaborateur.sexeString" /></td>
			<td><s:property value="status" /></td>
		</tr>
	</s:iterator>
</table>

<hr>
<h3>Collaborateur non Inscrit (Tab)</h3>
<!-- Hna onclick affichi modal bloquant -->
<a href='<s:url action="inscrireCollaborateurs" ><s:param name="idSessionFormation"><s:property value="idSessionFormation"/></s:param></s:url>'>Inscrire tous les collaborateurs</a><br>
<table border="1" width="100%">
	<tr>
		<td>Nom</td>
		<td>Email</td>
		<td>Telephone</td>
		<td>Sexe</td>
		<td>Option</td>
	</tr>
	<s:iterator value="collaborateursNotInscrit">
		<tr>
			<td><s:property value="fullname" /></td>
			<td><s:property value="emailCollaborateur" /></td>
			<td><s:property value="telephoneCollaborateur" /></td>
			<td><s:property value="sexeString" /></td>
			<td>
				<ul>
					<li><a href="javascript:void(0);" onclick="jsonInscrireCollaborateur(<s:property value="idCollaborateur" />, <s:property value="idSessionFormation" />)">Inscrire</a></li>
					<li><a href="javascript:void(0);" onclick="jsonGetCollaborateur(<s:property value="idCollaborateur" />)">Details</a></li>
				</ul>
			</td>
		</tr>
	</s:iterator>
</table>

<hr>
<h3>Detail Collaborateur (Modal)</h3>
<s:form id="form_collaborateur_details">
	Nom: <s:textfield name="fullname" disabled="true" /><br>
	Email: <s:textfield name="email" disabled="true" /><br>
	Sexe: <s:textfield name="sexe" disabled="true" /><br>
	DateNaissance: <s:textfield name="dateNaissance" disabled="true" /><br>
	Telephone: <s:textfield name="telephone" disabled="true" /><br>
	Adresse: <s:textfield name="adresse" disabled="true" /><br>
	Habilitations: <s:textarea name="habilitations" disabled="true" /><br>
</s:form>

</body>
</html>