<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-jquery-tags" prefix="sj" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Abonnements</title>
<sj:head/>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript">
$(function(){
	getSubForm($("#typeAB").val());
});
function getSubForm(type){
	$.get("getSubForm?type="+type,function(data){$("#subForm").html(data)})
}
</script>
</head>
<body>
	<div class="cadre">
		<s:form action="save" method="post">
			<s:textfield name="idAbonnement" label="ID AB"></s:textfield>
			<sj:datepicker name="dateAbonnement" label="Date AB"></sj:datepicker>
			<s:textfield name="solde" label= "Solde"></s:textfield>
			<s:checkbox name="actif" label="Actif"></s:checkbox>
			<s:select id ="typeAB" list="typesAb" name="type" label="Type AB" onchange ="getSubForm(this.value)"></s:select>
			<tbody id ="subForm"></tbody>
			<s:submit value="Save"></s:submit>		
		</s:form>
	</div>
		<div class ="cadre">
	<table class="table1">
		<tr>
			<th>ID</th><th>Date</th><th>Solde</th><th>Type</th><th>Actif</th>
			<th>Fidelio</th><th>D�dit</th>
		</tr>
		<s:iterator value="abonnements">
			<tr> 
				<td><s:property value="idAbonnement"/></td>
				<td><s:property value="dateAbonnement"/></td>
				<td><s:property value="solde"/></td>
				<td><s:property value="class.simpleName"/></td>
				<td><s:property value="actif"/></td>
				<td><s:property value="fideleo"/></td>
				<td><s:property value="debit"/></td>	
			</tr>
		</s:iterator>
	</table>
</div>
</body>
</html>