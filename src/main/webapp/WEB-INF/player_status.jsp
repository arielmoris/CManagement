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
		<div class="page_title">Edit Player</div>
		<div class="tabs">
			<div class="tabs_table">
		        <table summary="" cellpadding="0" cellspacing="0" border="0">
			       <tbody>
			       	<tr>
						  	<td class="tabs0">&nbsp;&nbsp;</td>
						  	<td class="tabs3"><a href="${request_path}/changePlayerBalance" class="tabsmenu">Change&nbsp;Balance </a></td>
			            	<td class="tabs1">Lock/Unlock&nbsp;</td>
			            	<td class="tabs3"><a href="${request_path}/playerResetPassword" class="tabsmenu">Reset&nbsp;Password</a></td>
			            	<td class="tabs3"><a href="${request_path}/playerChangePassword" class="tabsmenu">Change&nbsp;Password</a></td>
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
				
				<form:form modelAttribute="playerChangeStatusDto" class="form-horizontal" action="${request_path}/processPlayerChangeStatus" method="post" name="agent_form" id="agent_form">      
       				<form:input path="targetUserID" type="hidden" />
       				<div class="form-group" style="padding-left:20px;">
       					Please select status to change.<br><br>
       					<c:forEach var="status" items="${playerChangeStatusDto.statusList}">
  							<c:if test = "${status.key == '0'}">
  								<div class="radio">
       								<label><form:radiobutton path="status" name="lock" id="lock" value="${status.key}"/>Activate <b>${playerChangeStatusDto.targetUserID}</b></label>
       							</div>
  							</c:if>
  							<c:if test = "${status.key == '1'}">
  								<div class="radio">
       								<label><form:radiobutton path="status" name="lock" id="lock" value="${status.key}"/>Lock <b>${playerChangeStatusDto.targetUserID}</b></label>
       							</div>
  							</c:if>
						</c:forEach>
						</div>
					<div class="button-group">
						<input type="button" class="button" value="  Cancel  " onclick="location.href='${request_path}/playersList'">&nbsp;
           				<input type="submit" name="submit_button" id="submit_button" class="button" value="  Save  ">
					</div>
	        	</form:form>
			</div>
		</div>
	</div>
	<%@ include file="_footer.jsp"%>
</body>
</html>