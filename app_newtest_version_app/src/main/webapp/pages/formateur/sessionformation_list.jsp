<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Formateur</title>
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

<!-- table des session de formations du formateur -->
<table width="100%" border="1">
	<tr>
		<td>Titre</td>
		<td>Date de debut</td>
		<td>Date de Fin</td>
		<td>Lieu</td>
		<td>Options</td>
	</tr>
	
	<!-- iterate throwt sessions -->
	<s:iterator value="sessionFormations">
		<tr>
			<td><s:property value="titreSessionFormation" /></td>
			<td><s:property value="dateDebutSessionFormation" /></td>
			<td><s:property value="dateFinSessionFormation" /></td>
			<td><s:property value="lieuSessionFormation" /></td>
			<td>
				<ul>
					<li><a href='<s:url action="sessionDocuments" ><s:param name="idSessionFormation"><s:property value="idSessionFormation"/></s:param></s:url>'>Documents</a></li>
					<li><a href='<s:url action="sessionSeances" ><s:param name="idSessionFormation"><s:property value="idSessionFormation"/></s:param></s:url>'>Seances</a></li>
					<li><a href='<s:url action="sessionSeances" ><s:param name="idSessionFormation"><s:property value="idSessionFormation"/></s:param></s:url>'>Absences</a></li>
				</ul>
			</td>
		</tr>
	</s:iterator>
	
</table>

</body>
</html>