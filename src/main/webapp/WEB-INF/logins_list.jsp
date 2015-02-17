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
					<form action="add_agent.php" method="post" style="float: left">
						<input type="submit" class="button" value="Add Cashier" /> <input
							type="hidden" value="4" name="agentTypeId" />
					</form>
					<span class="button_note">To add a new cashier, click the
						"Add Cashier" button. To edit an existing cashier details, click
						"edit" in the table below.</span>
				</div>
				<br />
		</c:when>
		<c:otherwise>
				<div class="page_title">Manage Cashiers</div>
				<br />
				<div id="add_entity_block" class="clearfix">
					<form action="add_agent.php" method="post" style="float: left">
						<input type="submit" class="button" value="Add Cashier" /> <input
							type="hidden" value="4" name="agentTypeId" />
					</form>
					<span class="button_note">To add a new cashier, click the
						"Add Cashier" button. To edit an existing cashier details, click
						"edit" in the table below.</span>
				</div>
				<br />
		</c:otherwise>
	</c:choose>
	<div class="tab_head">
		<table summary="" cellpadding="0" cellspacing="0" border="0"width="60%">
			<tbody>
				<tr style="display: none;">
					<td colspan="4" id="ag_error">&nbsp;</td>
				</tr>
				<tr>
					<td class="tab_head" align="right" colspan="4"><input
						type="button" class="button" value="  View Passwords  "
						onclick="location.href='agents_list.php'"></td>
				</tr>
			</tbody>
		</table>
		<div id="list" align="center"></div>
	</div>
	</div>

	<%@ include file="_footer.jsp"%>
</body>
<script>
	$(function(){
		$.ajax({
			url : "/CMS/table_logins_list.jsp",
			type: "get",
			dataType : "html",
			success : function(data){
				$("#list").html(data);
			}
		})
	})
</script>
</html>