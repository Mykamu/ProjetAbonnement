<%@ taglib uri ="/struts-tags" prefix="s"%>
<s:if test="%{type=='GSM'}">
<s:textfield name="fideleo" label="Fidelio"></s:textfield>
</s:if>
<s:elseif test="%{type=='INTERNET'}">
<s:textfield name="debit" label="Débit"></s:textfield>
</s:elseif>