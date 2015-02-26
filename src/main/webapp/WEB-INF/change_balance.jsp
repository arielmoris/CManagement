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
					Current Casino balance of Agent <b>${changeAgentBalanceDto.mgrFullName}</b> (${changeAgentBalanceDto.targetUserID}) is: <i><b>${changeAgentBalanceDto.balance}</b></i>
    				<br><br>
    				<form:form modelAttribute="changeAgentBalanceDto" class="form-horizontal"  method="post" id="change_balance_form" action="${request_path}/processChangeAgentBalance">
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
 								<form:input path="tranAmount" id="tranAmount" type="text" class="field required number" style="width: 100px;" value="" disabled="disabled" />
                			<br>
						    </div>
						</div>
  						<div class="button-group">
  							<input type="button" class="button" value="< Back" onclick="location.href='${request_path}/agentsList'">&nbsp;
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
		initFormValidation("#change_balance_form");
	})
</script>
</html>