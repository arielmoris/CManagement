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
							<td class="tabs1">Change&nbsp;Balance </td>
							<td class="tabs3" onmouseover="this.className='tabs2';"
								onmouseout="this.className='tabs3';"><a
								href="${request_path}/playerChangeStatus" class="tabsmenu">Lock/Unlock&nbsp;</a></td>
							<td class="tabs3" onmouseover="this.className='tabs2';"
								onmouseout="this.className='tabs3';"><a
								href="${request_path}/playerResetPassword" class="tabsmenu">Reset&nbsp;Password
			            	</a></td>
							<td class="tabs3" onmouseover="this.className='tabs2';"
								onmouseout="this.className='tabs3';"><a
								href="${request_path}/playerChangePassword" class="tabsmenu">Change&nbsp;Password
			            	</a></td>
			            
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
					Current balance of Player <b>${playerCreditTranDto.username}</b> is: <i><b>${playerCreditTranDto.balance}</b></i>
    				<br><br>
    				<form:form modelAttribute="playerCreditTranDto" class="form-horizontal"  method="post" id="change_player_balance_form" action="${request_path}/processChangePlayerBalance">
			        	<div class="form-group">
				       		<label for="" class="control-label col-sm-4 required">
				       			Transaction Type
				       		</label>
					       <div class="col-sm-8">
					       		<form:select path="tranType" class="field">
					       			<form:option value="CR">Load </form:option>
					       			<form:option value="DR">Withdraw</form:option>
					       		</form:select>
					       </div>
						</div>
						<div class="form-group">
				       		<label for="" class="col-sm-4 control-label required">
			       				Amount
				       		</label>
					        <div class="col-sm-8">
 								<form:input path="amount" id="amount" type="text" class="field required" style="width: 100px; text-align: right;" value="" disabled="disabled" />
                			<br>
						    </div>
						</div>
  						<div class="button-group">
  							<input type="button" class="button" value="  Cancel  " onclick="location.href='${request_path}/playersList'">&nbsp;
            				<input type="submit" class="button" name="submit_button" id="submit_button" value="  Save  ">
  						</div>
    				</form:form>
    			</div>
			</div>
		</div>
	</div>
	<%@ include file="_footer.jsp"%>
</body>
<script>
$.validator.addMethod('minAmount', function (value, el, param) {
    return value > param;
});

	$(function(){
		initFormValidation("#change_player_balance_form");
	})
</script>
</html>