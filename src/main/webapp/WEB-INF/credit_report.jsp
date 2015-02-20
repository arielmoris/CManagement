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
				<form action="" class="form-horizontal" id="addForm">
					<div class="row">
					   	<div class="col-sm-6"><label>From Date</label></div>
					   	<div class="col-sm-6"><label>To Date</label></div>
					</div>
					<div class="row">
				        <div class="col-sm-6">
				            <div class="col-sm-4" style="padding-left:0px;">
				                <div class="input-group date" id="dateFrom">
				                    <input type="text" name="from_date" id="from_date" class="date_input" readonly="readonly" data-date-format="YYYY-MM-DD HH:mm:ss">
				                    <span class="input-group-addon"><span style="line-height:5px !important; height: 5px !important;" class="glyphicon-calendar glyphicon"></span>
				                    </span>
				                </div>
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
				            	 pickTime: false,
				            	 showToday: true
				            });
				            $('#dateFrom').data("DateTimePicker").setDate(date);
				        });
				        </script>
				        <div class="col-sm-6">
				            <div class="col-sm-4" style="padding-left:0px;">
				                <div class="input-group date" id="dateTo">
				                   <input type="text" name="to_date" id="to_date" class="date_input" readonly="readonly" data-date-format="YYYY-MM-DD HH:mm:ss">
				                    <span class="input-group-addon"><span style="line-height:5px !important; height: 5px !important;" class="glyphicon-calendar glyphicon"></span>
				                    </span>
				                </div>
				            </div>
				        </div>
				        <script type="text/javascript">
				        $(function () {
				            var date = new Date();
				            date.setHours(23);
				            date.setMinutes(59);
				            date.setSeconds(59);
				            $('#dateTo').datetimepicker({
				            	 pickTime: false,
				            	 showToday: true
				            });
				            $('#dateTo').data("DateTimePicker").setDate(date);
				        });
				        </script>
				     </div>
				     <br />
				     <div class="row">
					   	<div class="col-sm-6"><label>Transaction Type</label></div>
					   	<div class="col-sm-6"><label>Summary Level</label></div>
					  </div>
					 <div class="row">
				        <div class="col-sm-6">
				            <div class="col-sm-4" style="padding-left:0px;">
				                <select id="summary_level" name="transactionType" style="width:220px;" class="field">
				            		
				            			<option value="FromAgentToStation" selected="">Station Transaction</option>
									
				            			<option value="FromAgentToPlayer">Player Transaction</option>
									
				            			<option value="MemberIn">Master Agent Transaction</option>
									
				                </select>
				            </div>
				        </div>
				        <div class="col-sm-6">
				            <div class="col-sm-4" style="padding-left:0px;">
				                <select id="summary_level1" name="summaryLevel" style="width:220px;" class="field">
				                	
				            			<option value="Daily" selected="">Daily</option>
									
				            			<option value="Detailed">Detailed</option>
									
				                </select>
				            </div>
				        </div>
				     </div>
				     <div class="row">
					 	<div class="col-sm-6">
					 		<input id="btnSearch" name="btnSearch" style="margin-top: 23px;" type="button" class="button" value="Submit">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@ include file="_footer.jsp"%>
</body>
</html>