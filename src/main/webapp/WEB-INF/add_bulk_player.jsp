<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8" />
<title></title>
<%@ include file="_headerHead.jsp"%>
</head>
<body>
	<%@ include file="_headerBody.jsp"%>
	<div id="content">
		<div class="page_title">Add Bulk Player</div>
		<div class="tabs">
			<div class="tabs_table">
				<table summary="" cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr>
							<td class="tabs0">&nbsp;&nbsp;</td>
							<td class="tabs3"><a href="${request_path}/addPlayer" class="tabsmenu">Add&nbsp;Player </a></td>
							<td class="tabs1">Add&nbsp;Bulk&nbsp;Player</td>
							<td class="tabs4">&nbsp;</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="box_tabs" style="position: relative;">
				<c:if test="${not empty requestStatusDto && requestStatusDto.code ne 0}">
					<div class="error-box">${requestStatusDto.message}</div><br />
				</c:if>
				<form:form action="${request_path}/processAddBulkPlayer" method="post" modelAttribute="addPlayerDto" class="form-horizontal" id="addForm" autocomplete="false">
					<!-- To remove auto complete add hidden password field-->
					<input type="password" style="display:none">
					
					<div class="form-group">
						<label for="firstName" class="col-sm-3 control-label required">
							Prefix
						</label>
						<div class="col-sm-9">
							<form:input path="prefix" class="field required" value="" maxlength="15" id="prefix"/> 
						</div>
					</div>
					<div class="form-group">
						<label for="firstName" class="col-sm-3 control-label required">
							Player Count
						</label>
						<div class="col-sm-9">
							<form:input path="playerCount" class="field required digits" value="" maxlength="2" id="playerCount" style="width:50px"/> 
						</div>
					</div>
					<div class="form-group">
						<label for="station_name" class="col-sm-3 control-label"></label>
						<div class="col-sm-9">
							<input type="checkbox" class="field" checked="checked" value="1" name="autoPassword" id="autoPassword" onclick="togglePasswordFields(this)">
							Auto generated password
						</div>
					</div>
					
					<div class="form-group" id="passwordTR" style="display: none;">
						<label for="password" class="col-sm-3 control-label">Password</label>
						<div class="col-sm-9">
							<form:password path="password" class="field required" value="" id="password" maxlength="10" minlength="6" disabled="" />
						</div>
					</div>

					<div class="form-group" id="confirmPasswordTR" style="display: none;">
						<label for="confirmPassword" class="col-sm-3 control-label">Confirm
							Password</label>
						<div class="col-sm-9">
							<input type="password" class="field" value="" name="confirmPassword" id="confirmPassword" maxlength="10" minlength="6" disabled>
							<br>
							<font style="font-size: 11px;"><i><strong>Note:</strong>6-10 alphanumeric characters. If empty, the password will be generated automaticaly</i></font>
						</div>
					</div>					
					
					<div class="form-group">
						<div class="col-sm-3"></div>
						<div class="col-sm-9">
							<input type="button" class="button" name="backButton" value="  < Back  " onclick="location.href='/ClientManagementSystem/agentsList';">&nbsp;
							<input type="submit" class="button" value="  Submit >  ">
						</div>
					</div>
				</form:form>
				<font style="font-size: 11px;"><i>* Indicates mandatory field.</i></font>
			</div>
		</div>
	</div>

	<%@ include file="_footer.jsp"%>
</body>
<script>
	$(function(){
		initFormValidation("#addForm");
	})
</script>
</html>