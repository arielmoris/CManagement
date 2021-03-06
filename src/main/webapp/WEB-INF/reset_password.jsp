<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		<div class="page_title">Edit Agent</div>
		<div class="tabs">
			<div class="tabs_table">
				<table summary="" cellpadding="0" cellspacing="0" border="0">
					<tbody>
						<tr>
						  	<td class="tabs0">&nbsp;&nbsp;</td>
						  	<td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3;">
						  	<a href="${request_path}/changeAgentBalance" class="tabsmenu">Change&nbsp;Balance </a></td>
			            	<td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
			            	<a href="${request_path}/changeAgentStatus" class="tabsmenu">Lock/Unlock&nbsp;</a></td>
			            	<td class="tabs1">Reset&nbsp;Password </td>
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
				
				<form:form modelAttribute="resetPasswordDto" autocomplete="off" action="${request_path}/processResetAccountPassword" class="form-horizontal" method="post" name="reset_password_form" id="reset_password_form">
					<table summary="" cellpadding="0" cellspacing="10" border="0" id="block_1" style="display: block;">
						<tbody>
							<tr>
								<td>Click the Reset Password button to change the password.</td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td align="center">
									<input type="button" class="button" value=" Cancel  "  onclick="location.href='${request_path}/agentsList'">&nbsp;
									<input type="button" class="button" value=" Reset Password  " onclick="showNotificationBox();">
								</td>
							</tr>
						</tbody>
					</table>
					<div id="notification_block" style="display: none;">
						Send account password to:<br>
						<br>
						<form:input type="hidden" path="sendToChannel" id="sendToChannel" disabled=""/>
						<form:input type="hidden" path="sendToValue" id="sendToValue" disabled=""/>
						<div class="form-group">
							<div class="col-sm-3">
								<input type="radio" value="notify_email" value="email" name="send_to_channel">E-mail address&nbsp;
							</div>
							<div class="col-sm-10">
								<input type="text" class="field email required" name="notify_email" id="notify_email" disabled=""/>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-3">
								<input type="radio" value="notify_sms" name="send_to_channel">SMS to&nbsp;
							</div>
							<div class="col-sm-10">
								<input type="text" class="field digits required" name="notify_sms" id="notify_sms" disabled="disabled"/><br>
								<font style="font-size: 11px;"><i><b>Note:</b> Please enter phone number including country code.</i></font>
							</div>
						</div>
						<input type="button" class="button" name="back_button" id="back_button" value="  Cancel  " onclick="location.href='${request_path}/agentsList'">&nbsp;
						<input type="submit" name="submit_button" id="submit_button" class="button" value="  Submit  ">
					</div>
				</form:form>
			</div>
		</div>
	</div>

	<%@ include file="_footer.jsp"%>
</body>
<script type="text/javascript">
	$(function(){
		initFormValidation($("#reset_password_form"));
		
		$("input:radio[name='send_to_channel']").click(function(){
			if($('input[name=send_to_channel]:checked', '#reset_password_form').val() == 'notify_sms'){
				$('#sendToChannel').val('sms');
				$("#notify_sms").prop("disabled",false);
				
				$("#notify_email").prop("disabled",true).val("").removeClass("error");
				$("#notify_email").next("span.error").remove();
			}else{
				$('#sendToChannel').val('email');
				$("#notify_email").prop("disabled",false);
				$("#notify_sms").prop("disabled",true).val("").removeClass("error");
				$("#notify_sms").next("span.error").remove();
			}
		});
	})
	
	$('#submit_button').click(function() {
		if ($('#notify_email').val() != '') {
			$('#sendToValue').val($('#notify_email').val());
		} else {
			$('#sendToValue').val($('#notify_sms').val());
		}
	});
	
	function showNotificationBox() {
		$("#block_1").hide();
		$("#notification_block").show();
	}
</script>
</html>