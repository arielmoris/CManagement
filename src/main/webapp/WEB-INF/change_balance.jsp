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
		<div class="page_title">Edit Agent</div>
		<div class="tabs">
			<div class="tabs_table">
		        <table summary="" cellpadding="0" cellspacing="0" border="0">
			       <tbody>
			       	<tr>
			            <td class="tabs0">&nbsp;&nbsp;</td><td class="tabs1">Change&nbsp;Balance </td>
			            <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
			            <a href="${request_path}/changeAgentStatus" class="tabsmenu">Lock/Unlock&nbsp;</a></td>
			            <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
			            <a href="${request_path}/resetPassword" class="tabsmenu">Reset&nbsp;Password </a></td>
			            <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
			            <a href="${request_path}/updateAgent" class="tabsmenu">View&nbsp;Details </a></td>
			            <td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
			            <a href="${request_path}/changeCommissionFee" class="tabsmenu">Commission&nbsp;Fee </a></td><td class="tabs4">&nbsp;</td>
			          </tr>
			        </tbody>
		        </table>
      		</div>
			<div class="box_tabs" style="position: relative;">
				<c:if test="${not empty requestStatusDto && requestStatusDto.code ne 0}">
					<div class="error-box">${requestStatusDto.message}</div><br />
				</c:if>
				<div>
					<span id="error"></span><br>
					Current Casino balance of Agent <b>${changeAgentBalanceDto.mgrFullName}</b> (${changeAgentBalanceDto.targetUserID}) is: <i><b>${changeAgentBalanceDto.balance}</b></i>
    				<br><br>
    				<form:form modelAttribute="changeAgentBalanceDto" class="form-horizontal"  method="post" id="change_balance_form" action="${request_path}/processChangeAgentBalance">
			        	<div class="form-group">
					       <div class="col-sm-4">
					       		<div class="radio">
								  <label><form:radiobutton path="direction" id="direction" value="+" onclick="check_amount_fields(this,'increase');" disabled="disabled" />Increase Agent's balance</label>
								</div>
					       </div>
    					   <div class="col-sm-8">
 								<form:input path="increaseAmount" id="increaseAmount" type="text" class="field" style="width: 100px; text-align: right;" value="" disabled="disabled" />
                			<br>
						    </div>
						</div>
         				<div class="form-group">
					       <div class="col-sm-4">
					     	   <div class="radio">
								  <label><form:radiobutton path="direction" id="direction" value="-" onclick="check_amount_fields(this,'decrease');" disabled="disabled" />Decrease Agent's balance</label>
								</div>
					       </div>
						   <div class="col-sm-8">
						 		<input name="decrease_amount" id="decrease_amount" type="text" class="field" style="width: 100px; text-align: right;" value="" disabled="disabled">
								<br>
						   </div>
				 	 	</div>
  						<div class="button-group">
  							<input type="button" class="button" value="  Cancel  " onclick="location.href='agents_list.php'">&nbsp;
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
	$(function(){
		initFormValidation("#change_balance_form");
	})
</script>
</html>