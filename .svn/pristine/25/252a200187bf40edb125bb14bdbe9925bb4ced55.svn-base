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
			            <td class="tabs1">Casino&nbsp;Gross Win&nbsp;Analysis </td>
			            <td class="tabs4">&nbsp;</td>
			        </tr>
			        </tbody>
		        </table>
      		</div>
			<div class="box_tabs" style="position: relative;">
			   <div class="row">
			   	<div class="col-sm-3"><input type="radio" id="timePeriod_daily" checked="checked" name="timePeriod" onclick="checkTimePeriod(this);">Daily (up to 2 months)</div>
			   	<div class="col-sm-6"><input type="radio" id="timePeriod_monthly" name="timePeriod" onclick="checkTimePeriod(this);">Monthly</div>
			  </div>
			  <br>
			  <div id="dailyDateFields" style="display: inline;">
			  	<div class="row">
				   	<div class="col-sm-6"><label>From Date</label></div>
				   	<div class="col-sm-6"><label>To Date</label></div>
				</div>
			  	<div class="row">
			        <div class="col-sm-6">
			         	<div class="col-sm-4" style="padding-left:0px;">
			                <div class="input-group date" id="dateFrom">
			               
			                    <input type="text" name="fromDate" id="fromDate" class="date_input dateCompare dateFormatValidate required" readonly="readonly" data-date-format="YYYY-MM-DD">
			                    
			                    <span class="input-group-addon"><span style="line-height:5px !important; height: 5px !important;" class="glyphicon glyphicon-calendar"></span>
			                    </span>
			                </div>
		            	</div>
			        </div>
			        <script type="text/javascript">
			        $(function () {
			            $('#dateFrom').datetimepicker({
			            	 pickTime: false,
			            	 showToday: true
			            });
			        });
			        </script>
			        <div class="col-sm-6">
			            <div class="col-sm-4" style="padding-left:0px;">
			                <div class="input-group date" id="dateTo">
			                 	
			                   <input path="toDate" type="text" name="toDate" id="toDate" class="date_input dateCompare required dateFormatValidate" readonly="readonly" data-date-format="YYYY-MM-DD">
			                    <span class="input-group-addon"><span style="line-height:5px !important; height: 5px !important;" class="glyphicon glyphicon-calendar"></span>
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
			        });
			        </script>
				     </div>
			     </div>
			     <div id="monthlyDateFields" style="display: none;">
			     	<div class="row">
					   	<div class="col-sm-6"><label>From Date</label></div>
					   	<div class="col-sm-6"><label>To Date</label></div>
					  </div>
				      <div class="row">
				        <div class="col-sm-6">
				            <div class="col-sm-4" style="padding-left:0px;">
				                <select name="from_date_month" id="from_date_month" class="field" style="width:70px;"><option value="1" title="Jan">Jan</option><option value="2" title="Feb" selected="selected">Feb</option><option value="3" title="Mar">Mar</option><option value="4" title="Apr">Apr</option><option value="5" title="May">May</option><option value="6" title="Jun">Jun</option><option value="7" title="Jul">Jul</option><option value="8" title="Aug">Aug</option><option value="9" title="Sep">Sep</option><option value="10" title="Oct">Oct</option><option value="11" title="Nov">Nov</option><option value="12" title="Dec">Dec</option></select>&nbsp;<select name="from_date_year" id="from_date_year" class="field" style="width:70px;"><option value="2010" title="2010">2010</option><option value="2011" title="2011">2011</option><option value="2012" title="2012">2012</option><option value="2013" title="2013">2013</option><option value="2014" title="2014">2014</option><option value="2015" title="2015" selected="selected">2015</option><option value="2016" title="2016">2016</option><option value="2017" title="2017">2017</option><option value="2018" title="2018">2018</option><option value="2019" title="2019">2019</option><option value="2020" title="2020">2020</option></select>
				            </div>
				        </div>
				        <div class="col-sm-6">
				            <div class="col-sm-4" style="padding-left:0px;">
				                <select name="to_date_month" id="to_date_month" class="field" style="width:70px;"><option value="1" title="Jan">Jan</option><option value="2" title="Feb" selected="selected">Feb</option><option value="3" title="Mar">Mar</option><option value="4" title="Apr">Apr</option><option value="5" title="May">May</option><option value="6" title="Jun">Jun</option><option value="7" title="Jul">Jul</option><option value="8" title="Aug">Aug</option><option value="9" title="Sep">Sep</option><option value="10" title="Oct">Oct</option><option value="11" title="Nov">Nov</option><option value="12" title="Dec">Dec</option></select>&nbsp;<select name="to_date_year" id="to_date_year" class="field" style="width:70px;"><option value="2010" title="2010">2010</option><option value="2011" title="2011">2011</option><option value="2012" title="2012">2012</option><option value="2013" title="2013">2013</option><option value="2014" title="2014">2014</option><option value="2015" title="2015" selected="selected">2015</option><option value="2016" title="2016">2016</option><option value="2017" title="2017">2017</option><option value="2018" title="2018">2018</option><option value="2019" title="2019">2019</option><option value="2020" title="2020">2020</option></select>
				            </div>
				        </div>
				     </div>
		     	</div>
		     	<br>
		     	<div class="row">
				   <div class="col-sm-6"><label>Agent</label></div>
				   <div class="col-sm-6"><label>Summary Level</label></div>
				</div>
				<div class="row">
			        <div class="col-sm-6">
			            <div class="col-sm-4" style="padding-left:0px;">
			                <select name="summary_level" id="summary_level" class="field" style="width:220px;" onchange="checkSummary2(this)"><option value="GameCategory" title="">Game Category</option><option value="Agent" title="">Agent</option><option value="GameClientType" title="">Game Client Type</option></select>
			            </div>
			        </div>
			        <div class="col-sm-6">
			            <div class="col-sm-4" style="padding-left:0px;">
			                <select name="summary_level" id="summary_level" class="field" style="width:220px;" onchange="checkSummary2(this)"><option value="GameCategory" title="">Game Category</option><option value="Agent" title="">Agent</option><option value="GameClientType" title="">Game Client Type</option></select>
			            </div>
			        </div>
			     </div>
				<br>
				<div class="row">
			     	<div class="col-sm-6"><label>Game Client Type</label></div>
			    </div>
			    <div class="row">
			        <div class="col-sm-6">
			            <div class="col-sm-4" style="padding-left:0px;">
			                <select name="summary_level" id="summary_level" class="field" style="width:220px;" onchange="checkSummary2(this)"><option value="GameCategory" title="">Game Category</option><option value="Agent" title="">Agent</option><option value="GameClientType" title="">Game Client Type</option></select>
			            </div>
			    	</div>
			    </div>
			    <br>
			    <div class="row">
				 	<div class="col-sm-6">
				 	 	<input type="button" class="button" value="Submit" onclick="document.getElementById('error').innerHTML = '';SubmitReport();">
				 	</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="_footer.jsp"%>
</body>
</html>