<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta charset="UTF-8" />
<title></title>
<%@ include file="_headerHead.jsp"%>
</head>
<body>
	<%@ include file="_headerBody.jsp"%>
	<div id="content">
		<div class="page_title">Financial Reports</div>
		<div class="tabs">
			<div class="tabs_table">
		        <table summary="" cellpadding="0" cellspacing="0" border="0">
			       <tbody>
			       	<tr>
			            <td class="tabs0">&nbsp;&nbsp;</td>
			            <td class="tabs1">Credit&nbsp;Transfer&nbsp;Report </td>
			            <td class="tabs4">&nbsp;</td>
			        </tr>
			        </tbody>
		        </table>
      		</div>
			<div class="box_tabs" style="position: relative;">
				<form:form id="credit_report_form" modelAttribute="creditTransactionReportFilter" method="post">
					${creditTransactionReportFilter.toDate}
					<input type="hidden" name="isSearch" value="true">
					<div class="row">
					   	<div class="col-sm-6">
						   	<label>From Date</label>
					   		<div style="padding-left:0px;">
				                <div class="input-group date" id="dateFrom">
				                    <form:input path="fromDate" class="date_input" readonly="readonly" data-date-format="YYYY-MM-DD HH:mm:ss" />
				                    <span class="input-group-addon"><span style="line-height:5px !important; height: 5px !important;" class="glyphicon-calendar glyphicon"></span>
				                    </span>
				                </div>
				            </div>
				            <script type="text/javascript">
						        $(function () {
						            var date = new Date();
						            date.setDate(1);
						            date.setHours(0);
						            date.setMinutes(0);
						            date.setSeconds(0);
						            $('#dateFrom').datetimepicker({
						            	 pickTime: true,
						            	 showToday: true
						            });
						        });
				       		</script>
					   	</div>
					   	<div class="col-sm-6">
						   	<label>To Date</label>
						   	<div style="padding-left:0px;">
				                <div class="input-group date" id="dateTo">
				                   <form:input path="toDate"  class="date_input" readonly="readonly" data-date-format="YYYY-MM-DD HH:mm:ss" />
				                    <span class="input-group-addon"><span style="line-height:5px !important; height: 5px !important;" class="glyphicon-calendar glyphicon"></span>
				                    </span>
				                </div>
				            </div>
				            <script type="text/javascript">
					        $(function () {
					            var date = new Date();
					            date.setHours(23);
					            date.setMinutes(59);
					            date.setSeconds(59);
					            $('#dateTo').datetimepicker({
					            	 pickTime: true,
					            	 showToday: true
					            });
					        });
					        </script>
					   	</div>
					</div>
				     <br />
				     <div class="row">
					   	<div class="col-sm-6">
						   	<label>Transaction Type</label>
						   	<div style="padding-left:0px;">
						   		<form:select path="transactionType"  style="width:220px;" class="field">
						   			<form:options items="${creditTransactionReportFilter.transactionTypeList}"/>
						   		</form:select>
				            </div>
					   	</div>
					   	<div class="col-sm-6">
						   	<label>Summary Level</label>
						   	<div style="padding-left:0px;">
							   	<form:select path="summaryLevel" style="width:220px;" class="field">
							   		<form:options items="${creditTransactionReportFilter.summaryLevelList}"/>
							   	</form:select>
				            </div>
					   	</div>
					  </div>
					  <br>
					  <div class="row">
					   	<c:if test="${userDto.accountType eq 'M' or userDto.accountType eq 'T'}">
						   	<div class="col-sm-6 select-wrap">
							   	<label>Agent</label>
							   	<div style="padding-left:0px;">
					                <select id="selectedAgentId" name="selectedAgentId" style="width:220px;" class="field">
					                	<option value="">-All-</option>
					                </select>
					            </div>
					            <br>
						   	</div>
					   	</c:if>
					  	<c:if test="${userDto.accountType eq 'A' or userDto.accountType eq 'M' or userDto.accountType eq 'T'}">
						   	<div class="col-sm-6 select-wrap">
							   	<label>Shop</label>
							   	<div style="padding-left:0px;">
					                <select id="selectedShopId" name="selectedShopId" style="width:220px;" class="field">
					                	<option value="">-All-</option>
					                </select>
					            </div>
					            <br>
						   	</div>
					   	</c:if>
					   	<c:if test="${userDto.accountType eq 'M'}">
					   		</div><div class="row">
					   	</c:if>
					   	<div class="col-sm-6 select-wrap">
						   	<label>Player</label>
						   	<div style="padding-left:0px;">
				                <select id="selectedPlayerId" name="selectedPlayerId" style="width:220px;" class="field">
				                	<option value="">-All-</option>
				                	<option value="1">1</option>
				                </select>
				            </div>
				            <br>
					   	</div>
					 </div>
				     <div class="row">
					 	<div class="col-sm-6">
					 		<input id="btnSearch" name="btnSearch" style="margin-top: 23px;" type="submit" class="button" value="Submit">
						</div>
					</div>
					<div id="list" align="center">
					</div>
					<div id="loading-wrapper" style="display:none">
						<div class="loading-overlay-gray">
							<div class="loading-gif"></div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<%@ include file="_footer.jsp"%>
</body>
<script>
	$(function(){
		function getList(){
			var form_data = $("#credit_report_form").serialize();
			$("#list").html($("#loading-wrapper").html());
			$.ajax({
				url 	 : "${request_path}/table/creditReport",
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
		selectTransactionType("${userDto.accountType}");
		function selectTransactionType(accountType){
			master = {
				init : function(){
					master.loadDropdowns($("#transactionType").val());
					$("#transactionType").on("change", function(){
						var val = $(this).val();
						master.loadDropdowns(val);
					})
				},
				loadDropdowns : function(val){
					var selectedAgentId = $("#selectedAgentId");
					var selectedShopId  = $("#selectedShopId");
					var selectedPlayerId = $("#selectedPlayerId");
					
					if(val == "MemberIn"){
						showSelectBox(selectedAgentId);
						hideSelectBox(selectedShopId);
						hideSelectBox(selectedPlayerId);
					}else if(val == "MemberOut"){
						showSelectBox(selectedAgentId);
						showSelectBox(selectedShopId);
						hideSelectBox(selectedPlayerId);
					}else if(val == "FromAgentToPlayer"){
						showSelectBox(selectedAgentId);
						showSelectBox(selectedShopId);
						showSelectBox(selectedPlayerId);
					}
				},
			}
			
			agent = {
				init : function(){
					agent.loadDropdowns($("#transactionType").val());
					$("#transactionType").on("change", function(){
						var val = $(this).val();
						agent.loadDropdowns(val);
					})
				},
				loadDropdowns : function(val){
					var selectedShopId  = $("#selectedShopId");
					var selectedPlayerId = $("#selectedPlayerId");
					
					if(val == "MemberIn"){
						showSelectBox(selectedShopId);
						hideSelectBox(selectedPlayerId);
					}else if(val == "FromAgentToPlayer"){
						showSelectBox(selectedShopId);
						showSelectBox(selectedPlayerId);
					}
				},
			}
			
			
			function showSelectBox(selectBox){
				var wrap = selectBox.closest(".select-wrap");
				selectBox.prop("disabled",false);
				wrap.show();
			}
			
			function hideSelectBox(selectBox){
				var wrap = selectBox.closest(".select-wrap");
				selectBox.prop("disabled",false);
				wrap.hide();
			}
			
			if(accountType == "M"){
				master.init();
			}else if(accountType == "A"){
				agent.init();
			}
			
		}
		
		var validationRules = {
				debug: true,
				errorElement:"li",
				errorLabelContainer:"#errorContainer",
				submitHandler : function(form){
					getList();
				},
			}
		
		$("#credit_report_form").validate(validationRules);
		$("#btnSearch").click(function(){
			$(this).closest("form").find("[name='isSearch']").val("true");
		});
	})
</script>
</html>