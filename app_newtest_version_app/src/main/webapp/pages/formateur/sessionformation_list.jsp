<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Formateur</title>
</head>
<body>

<!-- table des session de formations du formateur -->
<table width="100%" border="1">
	<tr>
		<td>Titre</td>
		<td>Date de debut</td>
		<td>Date de Fin</td>
		<td>Lieu</td>
	</tr>
	
	<!-- iterate throwt sessions -->
	<s:iterator value="sessionFormations">
		<tr>
			<td><s:property value="titreSessionFormation" /></td>
			<td><s:property value="dateDebutSessionFormation" /></td>
			<td><s:property value="dateFinSessionFormation" /></td>
			<td><s:property value="lieuSessionFormation" /></td>
		</tr>
		<!-- iterate throwt seances -->
		<s:iterator value="sceances">
		<tr>
			<td><s:property value="titreSeance" /></td>
			<td><s:property value="dateDebutSessionFormation" /></td>
			<td><s:property value="dateFinSessionFormation" /></td>
			<td><s:property value="lieuSessionFormation" /></td>
		</tr>
		</s:iterator>
	</s:iterator>
	
</table>

</body>
</html>