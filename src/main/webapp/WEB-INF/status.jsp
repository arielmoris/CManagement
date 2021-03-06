<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<meta charset="UTF-8" />
<title></title>
<%@ include file="_headerHead.jsp"%>
</head>
<body>
	<%@ include file="_headerBody.jsp"%>
	<div id="content">
		<div class="page_title">Edit Agent</div>
		<div class="tabs">
			<div class="tabs_table">
		        <table summary="" cellpadding="0" cellspacing="0" border="0">
			       <tbody>
			       	<tr>
			           	<td class="tabs0">&nbsp;&nbsp;</td>
						<td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3;">
						<a href="${request_path}/changeAgentBalance" class="tabsmenu">Change&nbsp;Balance </a></td>
			           	<td class="tabs1">Lock/Unlock&nbsp;</td>
			            <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
			            <a href="${request_path}/resetPassword" class="tabsmenu">Reset&nbsp;Password </a></td>
			            <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
			            <a href="${request_path}/updateAgent" class="tabsmenu">View&nbsp;Details </a></td>
			            <%-- <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
			            <a href="${request_path}/changeCommissionFee" class="tabsmenu">Commission&nbsp;Fee </a></td> --%>
						<td class="tabs4">&nbsp;</td>
			         </tr>
			        </tbody>
		        </table>
      		</div>
			<div class="box_tabs" style="position: relative;">
				<c:if test="${not empty requestStatusDto && requestStatusDto.code ne 0}">
					<div class="error-box">${requestStatusDto.message}</div><br />
				</c:if>
				<c:if test="${not empty requestStatusDto && requestStatusDto.code == 0}">
					<div class="success-box">${requestStatusDto.message}</div><br />
				</c:if>
				
				<form:form modelAttribute="changeAgentStatusDto" class="form-horizontal" action="${request_path}/processChangeAgentStatus" method="post" name="agent_form" id="agent_form">      
       				<div class="form-group" style="padding-left:20px;">
       					<label>Please select status to change: </label><br><br>
       					<c:forEach var="status" items="${changeAgentStatusDto.statusList}">
  							<c:if test = "${status.key == '0'}">
  								<div class="radio">
       								<label><form:radiobutton path="status" name="lock" id="lock" value="${status.key}"/>Activate <b>${changeAgentStatusDto.mgrFullName}</b> (${changeAgentStatusDto.targetUserID})</label>
       							</div>
  							</c:if>
  							<c:if test = "${status.key == '1'}">
  								<div class="radio">
       								<label><form:radiobutton path="status" name="lock" id="lock" value="${status.key}"/>Lock Agent <b>${changeAgentStatusDto.mgrFullName}</b> (${changeAgentStatusDto.targetUserID})</label>
       							</div>
  							</c:if>
  							<c:if test = "${status.key == '2'}">
  								<div class="radio">
       								<label><form:radiobutton path="status" name="lock" id="lock" value="${status.key}"/>Lock Agent <b>${changeAgentStatusDto.mgrFullName}</b> (${changeAgentStatusDto.targetUserID}) and all accounts</label>
       							</div>
  							</c:if>
  							<c:if test = "${status.key == '3'}">
  								<div class="radio">
       								<label><form:radiobutton path="status" name="lock" id="lock" value="${status.key}"/>Suspend the network - all players and stations will be locked</label>
       							</div>
  							</c:if>  							
  							<%-- <div class="radio">
       							<label><form:radiobutton path="status" name="lock" id="lock" value="${status.key}"/>${status.value}</label>
       						</div> --%>
						</c:forEach>
						</div>
					<div class="button-group">
						<input type="button" class="button" value="  Cancel  " onclick="location.href='${request_path}/agentsList'">&nbsp;
           				<input type="submit" name="submit_button" id="submit_button" class="button" value="  Save  ">
					</div>
	        	</form:form>
			</div>
		</div>
	</div>
	<%@ include file="_footer.jsp"%>
</body>
</html>