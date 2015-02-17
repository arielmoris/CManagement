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
		<div class="page_title">Game Play Reports</div>
		<div class="tabs">
			<div class="tabs_table">
		        <table summary="" cellpadding="0" cellspacing="0" border="0">
			       <tbody>
			       	<tr>
			            <td class="tabs0">&nbsp;&nbsp;</td>
			            <td class="tabs1">Casino&nbsp;Profit by&nbsp;Game Type&nbsp;</td>
			            <td class="tabs4">&nbsp;</td>
			        </tr>
			        </tbody>
		        </table>
      		</div>
			<div class="box_tabs" style="position: relative;">
				<div class="row">
				   <div class="col-sm-6"><label>From Date</label></div>
				   <div class="col-sm-6"><label>To Date</label></div>
				</div>
				<div class="row">
			        <div class="col-sm-6">
			            <div class="col-sm-4" style="padding-left:0px;">
			                <div class="input-group date" id="dateFrom">
			                    <input type="text" name="from_date" id="from_date" class="date_input" readonly="readonly" data-date-format="YYYY-MM-DD">
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
			                   <input type="text" name="to_date" id="to_date" class="date_input" readonly="readonly" data-date-format="YYYY-MM-DD">
			                    <span class="input-group-addon"><span style="line-height:5px !important; height: 5px !important;" class="glyphicon-calendar glyphicon"></span>
			                    </span>
			                </div>
			            </div>
			        </div>
			        <script type="text/javascript">
			        $(function () {
			            $('#dateTo').datetimepicker({
			            	 pickTime: false,
			            	 showToday: true
			            });
			            $('#dateTo').data("DateTimePicker").setDate(new Date());
			        });
			        </script>
			     </div>
			     <br>
			     <div class="row">
			   		<div class="col-sm-6"><label>Show Profit for</label></div>
			   		<div class="col-sm-6"><label>Group By</label></div>
			 	 </div>
			 	 <div class="row">
			        <div class="col-sm-6">
			            <div class="col-sm-4" style="padding-left:0px;">
			               <select name="summary_level" id="summary_level" class="field" style="width:220px;" onchange="check_select(this);"><option value="" title="" selected="selected">All</option><option value="2" title="">Players</option><option value="1" title="">Stations</option></select>
			            </div>
			        </div>
			        <div class="col-sm-6">
			            <div class="col-sm-4" style="padding-left:0px;">
			                <select name="group_by" id="group_by" class="field" style="width:220px;" onchange="check_select(this);"><option value="Gametype" title="">Game Type</option><option value="AccountNo" title="">Account Number</option></select>
			            </div>
			        </div>
			     </div>
			     <div class="row">
				 	<div class="col-sm-6">
				 		<input style="margin-top: 23px;" type="button" class="button" value="Submit" onclick="document.getElementById('error').innerHTML = '';SubmitReport();">
					</div>
				</div>
				<br>
				<b>Note:</b>Only first 500 rows results will be displayed
			</div>
		</div>
	</div>

	<%@ include file="_footer.jsp"%>
</body>
</html>