<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>

<body>
<h1>List Seance</h1>

	<!-- My version of Action Notifications -->
	<s:if test="isSessionActionError()">
		Error: <s:property value="sessionActionErrorText" />
	</s:if>
	<s:if test="isSessionMessageError()">
		Message: <s:property value="sessionActionMessageText" />
	</s:if>
	<!-- End of Action Notifications -->
	<br>

<s:form action="updateSessionSeances" method="post">
	<s:hidden name="idSessionFormation" />

	<s:iterator value="seances">
		<h3><s:property value="dateSeance" /></h3>
		<input type="hidden" name="date" value='<s:property value="dateSeance" />' /><br>
		<input type="hidden" name="idSeance" value='<s:property value="idSeance" />' /><br>
		Titre: <input type="text" name="titre" value='<s:property value="titreSeance" />' /><br>
		Heure de debut: <input type="text" name="heureDebut" value='<s:property value="heureDebutSeance" />' /><br>
		Heure de debut: <input type="text" name="heureFin" value='<s:property value="heureFinSeance" />' /><br>
		Description: <textarea name="description" ><s:property value="descriptionSeance" /></textarea><br>
		<hr>
	</s:iterator>
	
	<s:submit value="Envoyer" />
</s:form>
</body>
</html>