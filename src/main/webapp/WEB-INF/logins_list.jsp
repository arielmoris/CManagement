<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
		<c:choose>
			<c:when test="${userDto.accountType eq 'H'}">
					<div class="page_title">Manage Cashiers</div>
					<br />
					<div id="add_entity_block" class="clearfix">
						<div style="float:left">
							<input type="button" class="button" value="Add Cashier" onclick="window.location.href='${request_path}/addLogin'">
						</div>
						<span class="button_note">To add a new cashier, click the
							"Add Cashier" button. To edit an existing cashier details, click
							"edit" in the table below.</span>
					</div>
					<br />
			</c:when>
			<c:otherwise>
					<div class="page_title">Manage Representative</div>
					<br />
					<div id="add_entity_block" class="clearfix">
						<div style="float:left">
							<input type="button" class="button" value="Add Login" onclick="window.location.href='${request_path}/addLogin'">
						</div>
						<span class="button_note">To add a new representative, click the
							"Add Representative" button. To edit an existing cashier details, click
							"edit" in the table below.</span>
					</div>
					<br />
			</c:otherwise>
		</c:choose>
		<div class="tab_head">
			<form action="" id="logins_list_form">
				<table summary="" cellpadding="0" cellspacing="0" border="0"width="60%">
					<tbody>
						<tr style="display: none;">
							<td colspan="4" id="ag_error">&nbsp;</td>
						</tr>
					</tbody>
				</table>
				<div id="list" align="center"></div>
				<div id="loading-wrapper" style="display:none">
					<div class="loading-overlay-gray">
						<div class="loading-gif"></div>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<form id='edit_login_form' action="${request_path}/editLogin"  method="post">
		<input type='hidden' name='loginId'>
	</form>
	
	<%@ include file="_footer.jsp"%>
</body>
<script>
$(function(){
	initFormValidation($("#addForm"));
	getAgentsList();
	function getAgentsList(){
		var form_data = $("#logins_list_form").serialize();
		$("#list").html($("#loading-wrapper").html());
		$.ajax({
			url 	 : "${request_path}/table/loginsList",
			type     : "post",
			data	 :  form_data,
			dataType : "html",
			success  : function(data){
				$("#list").html(data);
			},
			error : function(e){
				$("#list").html("<div class='error-box'>Something went wrong.</div>");
			}
		})
		
	}
	
	var validationRules = {
			debug: true,
			errorElement:"li",
			errorLabelContainer:"#errorContainer",
			submitHandler : function(form){
				getAgentsList();
			},
		}
	
	$("#logins_list_form").validate(validationRules);
	
})

function editLogin(loginId){
		var form = $("#edit_login_form");
		form.find("input[name='loginId']").val(loginId);
		form.submit();
		return false;
}
</script>
</html>