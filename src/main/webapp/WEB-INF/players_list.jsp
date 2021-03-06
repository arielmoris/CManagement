<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="UTF-8" />
<title></title>
<%@ include file="_headerHead.jsp"%>
</head>
<body>
	<%@ include file="_headerBody.jsp"%>

	<div id="content">
		<div class="page_title">
			<!--Manage agent account-->
			Players List
		</div>
		<br>
		<div id="add_entity_block" class="clearfix">
			<div style="float:left">
				<input type="button" class="button" value="Add Player" onclick="window.location.href='${request_path}/addPlayer'">
			</div>
			<span class="button_note">To add a new station or to automatically generate a bulk of stations, click the "Add Station" button To edit an existing station, click "edit" in the table below.</span>
		</div>
		<br>
		<div class="tab_head">
			<form id="agents_list_form">
				<ul id="errorContainer" class="error-box" style="display:none"></ul>
				<table summary="" cellpadding="0" cellspacing="0" border="0" width="60%">
					<tbody>
						<tr style="display: none;">
							<td colspan="4" id="ag_error">&nbsp;</td>
						</tr>
						<tr>
							<td class="tab_head" align="right" colspan="4">&nbsp;</td>
						</tr>
						<tr>
							<td class="tab_head">Player Username</td>
							<!--td class="tab_head">Status</td-->
							<td></td>
						</tr>
						<tr>
							<td><input type="text" class="field" value="" style="width: 150px;" id="username" name="username">
							&nbsp;&nbsp;<input type="submit" class="button" value="Search" ></td>
						</tr>
					</tbody>
				</table>
				<div id="list" align="center">
				</div>
				<div id="loading-wrapper" style="display:none">
					<div class="loading-overlay-gray">
						<div class="loading-gif"></div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<form id='edit_player_form' action="${request_path}/editPlayer"  method="post">
		<input type='hidden' name='playerId'>
		<input type='hidden' name='action'>
	</form>
	<%@ include file="_footer.jsp"%>
</body>
<script>
	$(function(){
		initFormValidation($("#addForm"));
		getAgentsList();
		function getAgentsList(){
			var form_data = $("#agents_list_form").serialize();
			$("#list").html($("#loading-wrapper").html());
			$.ajax({
				url 	 : "${request_path}/table/playersList",
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
		
		$("#agents_list_form").validate(validationRules);
	})
	
	function editPlayer(loginId, action){
		var form = $("#edit_player_form");
		form.find("input[name='playerId']").val(loginId);
		form.find("input[name='action']").val(action);
		form.submit();
		return false;
	}
	
</script>
</html>