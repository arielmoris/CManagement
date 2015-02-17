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
		<div class="page_title">Management Reports</div>
		<div class="tabs">
			<div class="tabs_table">
		        <table summary="" cellpadding="0" cellspacing="0" border="0">
			       <tbody>
			       	<tr>
            			<td class="tabs0">&nbsp;&nbsp;</td>
            			<td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
            				<a href="https://www.totalegame.net/update_player.php" class="tabsmenu">View&nbsp;Details </a>
            			</td>
            			<td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
            				<a href="https://www.totalegame.net/player_status.php" class="tabsmenu">Lock/Unlock&nbsp;</a>
            			</td>
            			<td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
            				<a href="https://www.totalegame.net/player_reset_password.php" class="tabsmenu">Reset&nbsp;Password </a>
            			</td>
            			<td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
            				<a href="https://www.totalegame.net/player_reset_attempts.php" class="tabsmenu">Reset&nbsp;Login Attempts&nbsp;</a>
            			</td>
            			<td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
            				<a href="https://www.totalegame.net/send_game.php" class="tabsmenu">Mobile&nbsp;Games </a>
            			</td>
            			<td class="tabs1">View&nbsp;Player Earnings&nbsp;</td>
            			<td class="tabs3" onmouseover="this.className='tabs2';" onmouseout="this.className='tabs3';">
            				<a href="https://www.totalegame.net/game_profitability_report_by_account.php" class="tabsmenu">Profit&nbsp;by Game&nbsp;Type </a>
            			</td>
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
			     <br>
					<div class="row">
					   	<div class="col-sm-6"><label>Summary Level</label></div>
					   	<div class="col-sm-6"><label>Timezone Type</label></div>
					</div>
					<div class="row">
				        <div class="col-sm-6">
				            <div class="col-sm-4" style="padding-left:0px;">
				               <select name="summary_level" id="summary_level" class="field" style="width:220px;" onchange="check_select(this);"><option value="Daily" title="">Daily</option><option value="Detailed" title="">Detailed</option><option value="Daterange" title="">Date Range Period</option></select>
				            </div>
				        </div>
				        <div class="col-sm-6">
				            <div class="col-sm-4" style="padding-left:0px;">
				               <select name="time_zone_type" id="time_zone_type" class="field" style="width:220px;"><option value="Own" title="">My Time Zone</option><option value="Parent" title="">Master Agent Time Zone</option></select>
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