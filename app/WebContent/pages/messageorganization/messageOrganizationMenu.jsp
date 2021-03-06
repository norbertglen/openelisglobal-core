<%@ page language="java"
	contentType="text/html; charset=utf-8"
	import="java.util.Date,
	java.util.Hashtable,
	us.mn.state.health.lims.common.action.IActionConstants" %>

<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<%@ taglib uri="/tags/labdev-view" prefix="app" %>

<bean:define id="formName" value='<%= (String)request.getAttribute(IActionConstants.FORM_NAME) %>' />


<table width="100%" border=2">
	<tr>
	   <th>
	     <bean:message key="label.form.select"/>
	   </th>
	   <th>
	   	  <bean:message key="messageorganization.organization"/>
	   </th>
	   <th>
	   	  <bean:message key="messageorganization.description"/>
	   </th>
	   <th>
	   	  <bean:message key="messageorganization.isActive"/>
	   </th>

	</tr>
	<logic:iterate id="mo" indexId="ctr" name="<%=formName%>" property="menuList" type="us.mn.state.health.lims.messageorganization.valueholder.MessageOrganization">
	<bean:define id="moID" name="mo" property="id"/>
	  <tr>
	   <td class="textcontent">
	      <html:multibox name="<%=formName%>" property="selectedIDs">
	         <bean:write name="moID" />
	      </html:multibox>
     
   	   </td>
	   <td class="textcontent">
	   	 <logic:notEmpty name="mo" property="organization.organizationName">
	        <bean:write name="mo" property="organization.organizationName"/>
	     </logic:notEmpty>
	   </td>
	   <td class="textcontent">
	   	  <bean:write name="mo" property="description"/>
	   </td>
       <td class="textcontent">
	   	  <bean:write name="mo" property="isActive"/>
	   </td>
       </tr>
	</logic:iterate>
</table>
