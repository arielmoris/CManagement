<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			            	<td class="tabs3"><a href="${request_path}/playerChangeStatus" class="tabsmenu">Lock/Unlock&nbsp;</a></td>
			            	<td class="tabs3"><a href="${request_path}/playerResetPassword" class="tabsmenu">Reset&nbsp;Password</a></td>
			            	<td class="tabs1">Change&nbsp;Password</td>
			            	<%-- <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
			            	<a href="${request_path}/changeCommissionFee" class="tabsmenu">Commission&nbsp;Fee </a></td> --%>
							<td class="tabs4">&nbsp;</td>
			          </tr>
			        </tbody>
		        </table>
      		</div>
			<div class="box_tabs" style="position: relative;">
				<c:if test="${not empty requestStatusDto}">
					<c:choose>
						<c:when test="${requestStatusDto.code eq 0}">
							<div class="success-box">${requestStatusDto.message}</div>
						</c:when>
						<c:otherwise>
							<div class="error-box">${requestStatusDto.message}</div>
						</c:otherwise>
					</c:choose>
					<br />
				</c:if>
				<div>
				Change password for player <b>${changePasswordDto.accountId}</b>
    				<br><br>
    				<form:form modelAttribute="changePasswordDto" class="form-horizontal"  method="post" id="change_password_form" action="${request_path}/processPlayerChangePassword">
			        		<form:input type="hidden" path ="accountId"/> 
			        	<div class="form-group" id="passwordTR"">
						<label for="password" class="col-sm-3 control-label">New Password</label>
						<div class="col-sm-9">
							<form:password path="newPassword" class="field required" value="" id="password" maxlength="10" minlength="4" />
						</div>
					</div>

					<div class="form-group" id="confirmPasswordTR">
						<label for="confirmPassword" class="col-sm-3 control-label">Confirm
							Password</label>
						<div class="col-sm-9">
							<input type="password" class="field" value="" name="confirmPassword" id="confirmPassword" maxlength="10" minlength="4">
							<br>
							<font style="font-size: 11px;"><i><strong>Note:</strong> 4-10 alphanumeric characters. If empty, the password will not be changed</i></font>
						</div>
					</div>					
					
  						<div class="button-group">
  							<input type="button" class="button" value="< Back" onclick="location.href='${request_path}/playersList'">&nbsp;
            				<input type="submit" class="button" name="submit_button" id="submit_button" value="Submit >">
  						</div>
    				</form:form>
    			</div>
			</div>
		</div>
	</div>
	<%@ include file="_footer.jsp"%>
</body>
<script>
	$(function(){
		initFormValidation("#change_password_form");
	});
</script>
</html>