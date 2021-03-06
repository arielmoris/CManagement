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
		<c:set var="loginTxt" value="Representative" />
		<c:if test="${userDto.accountType eq 'H'}">
			<c:set var="loginTxt" value="Cashier" />
		</c:if>
		<div class="page_title">Edit ${loginTxt}</div>
		<div class="tabs">
			<div class="tabs_table">
				<table summary="" cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr>
							<td class="tabs0">&nbsp;&nbsp;</td>
							<td class="tabs1">Edit&nbsp;${loginTxt}</td>
							<td class="tabs4">&nbsp;</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="box_tabs" style="position: relative;">
				<c:if test="${not empty requestStatusDto}">
					<c:choose>
						<c:when test="${requestStatusDto.code == 0}">
							<div class="success-box">${requestStatusDto.message}</div>
						</c:when>
						<c:otherwise>
							<div class="error-box">${requestStatusDto.message}</div>
						</c:otherwise>
					</c:choose>
					<br />
				</c:if>
				<form:form action="${request_path}/processUpdateLogin" method="post" modelAttribute="managerDto" class="form-horizontal" id="addForm" autocomplete="false">
					<!-- To remove auto complete add hidden password field-->
					<input type="password" style="display:none">
					<div class="form-group">
						<label for="firstName" class="col-sm-3 control-label">
							Username
						</label>
						<div class="col-sm-9">
							<label class="control-label">${managerDto.username}</label> 
						</div>
					</div>
					<div class="form-group">
						<label for="firstName" class="col-sm-3 control-label">
							First Name *
						</label>
						<div class="col-sm-9">
							<form:input path="firstName" class="field required success alpha" value="" maxlength="15" id="firstName"/> 
						</div>
					</div>

					<div class="form-group">
						<label for="lastName" class="col-sm-3 control-label">
							Last Name *
						</label>
						<div class="col-sm-9">
							<form:input path="lastName" class="field required alpha" value="" maxlength="15" id="lastName" />
						</div>
					</div>
					
					<div class="form-group">
						<label for="email" class="col-sm-3 control-label">E-mail</label>
						<div class="col-sm-9">
							<form:input path="email" class="field email" value="" id="email" />
						</div>
					</div>
					
					<div class="form-group">
						<label for="mobileNum" class="col-sm-3 control-label">
						Mobile Number</label>
						<div class="col-sm-9">
							<form:input path="mobileNum" class="field digits" value="" id="mobileNum" /> 
							<br> 
							<font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number not including country code.</i></font>
						</div>
					</div>
					
					<div class="form-group">
						<label for="station_name" class="col-sm-3 control-label"></label>
						<div class="col-sm-9">
							<input type="checkbox" class="field" value="1" name="autoPassword" id="autoPassword" onclick="togglePasswordFields(this, true)">
							Change password
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
							<input type="button" class="button" name="backButton" value="  < Back  " onclick="location.href='${request_path}/loginsList';">&nbsp;
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