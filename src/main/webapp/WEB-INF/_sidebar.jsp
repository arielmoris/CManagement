<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div id="sidebar" class="table-col">
	<div class="welcome">
		<span id="balance">
			<div class="balance_casino">
				<b>Credit Balance 
					<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2"  minIntegerDigits="1" value="${userDto.balance==null? 100000:userDto.balance}" /> 
					${userDto.currencyCode}
				</b>
			</div>
		</span>
		Welcome, <strong>${userDto.fullName}</strong> 
		
		<!-- Subtype -->
		<c:choose>
			<c:when test="${userDto.isSuperUserFlag}">
				<br>Agent<br>
			</c:when>
			<c:otherwise>
				<br>Representative<br>
			</c:otherwise>
		</c:choose>
		
		<em>
			<font size="1px">
			<span id="gmt_time"></span><br>
			Time zone: GMT +9:00 (Daylight: Off) 
			</font>
		</em><br> 
		<input type="hidden" id="time_diff" value="9.0000">
		<script type="text/javascript">
			function RefreshTime(){
				var today = new Date();
				daylight = 0;
				var loc_tz = document.getElementById('time_diff').value;
				today.setMinutes(today.getMinutes() + Number(loc_tz)*60 + daylight*60 + today.getTimezoneOffset())
				var hour = today.getHours();
				if (hour < 10) { 
					hour = '0' + hour;
				}
				var minute = today.getMinutes();
				if (minute < 10) {
					minute = '0' + minute;
				}
				document.getElementById('gmt_time').innerHTML = today.toLocaleDateString() + ' ' + hour + ':' + minute;
				setTimeout('RefreshTime()', 1000);
			}
			RefreshTime();
		</script>
		<form action="${context}/changePassword" style="margin: 0px;" method="get">
			<input type="button" class="logout" value="Logout" onclick="location.href=logout.jsp" style="cursor: pointer;">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<input type="submit" class="logout" style="width: 120px;" value="Change Password">
		</form>
	</div>
	<div id="menus">
	     <div class="menu"></div>
	     <c:if test="${userDto.accountType ne 'H' }">
	     	<div class="menu"><a href="${context}/agentsList" class="leftmenu">» Manage Agents Account</a></div>
	     	<div class="menu"><a href="${context}/loginsList" class="leftmenu">» Manage Representative</a></div>
	     </c:if>
	     
	     <c:if test="${userDto.accountType eq 'H' }">
	     	<div class="menu">
		     	<a onclick="if(document.getElementById('stations_submenu').style.display=='none') document.getElementById('stations_submenu').style.display='block'; else document.getElementById('stations_submenu').style.display='none';" href="#" class="leftmenu">» Manage Stations</a>
		     	<div id="stations_submenu" style="display:none;">
		     		<div class="submenu"><a href="${context}/stationsList" class="leftsubmenu">» Manage Stations</a></div>
		     		<div class="submenu"><a href="${context}/deleteStations" class="leftsubmenu">» Delete Stations</a></div>
		     	</div>
		     </div>
		     <div class="menu">
		     	<a href="#" class="leftmenu" onclick="if(document.getElementById('players_submenu').style.display=='none') document.getElementById('players_submenu').style.display='block'; else document.getElementById('players_submenu').style.display='none';">» Manage Players Accounts</a>
		     	<div id="players_submenu" style="display:none;">
		     		<div class="submenu"><a href="${context}/playersList" class="leftsubmenu">» Manage Players</a></div>
		     		<div class="submenu"><a href="${context}/deletePlayers" class="leftsubmenu">» Delete Players</a></div>
		     	</div>
		     </div>
		      <div class="menu"><a href="${context}/loginsList" class="leftmenu">» Manage Cashiers</a></div>
	     </c:if>
	     <div class="menu"><a href="#" class="leftmenu" onclick="if(document.getElementById('financial_reports').style.display=='none') document.getElementById('financial_reports').style.display='block'; else document.getElementById('financial_reports').style.display='none';">» Financial Reports</a>
	     	<div id="financial_reports" style="display: none;">
	     		<div class="submenu"><a href="${context}/commissionReport" class="leftsubmenu">» Commission Report</a></div>
	     		<div class="submenu"><a href="${context}/creditReport" class="leftsubmenu">» Credit Transfer</a></div>
	     		<div class="submenu"><a href="${context}/agentEarningReportByDay" class="leftsubmenu">» Casino Earnings Report</a></div>
	     		<div class="submenu"><a href="${context}/cashierReport" class="leftsubmenu">» Cashier Report</a></div>
	     	</div>
	     </div>
	    
	     <div class="menu"><a href="#" class="leftmenu" onclick="if(document.getElementById('game_play_reports').style.display=='none') document.getElementById('game_play_reports').style.display='block'; else document.getElementById('game_play_reports').style.display='none';">» Game Play Reports</a>
	     	<div id="game_play_reports" style="display:none;">
	     		<div class="submenu"><a href="${context}/agentGameProfitabilityReport" class="leftsubmenu">» Profit by Game Type</a></div>
	     	    
	     	     <!-- For top start -->
	    		<div class="submenu"><a href="${context}/playcheckReport" class="leftsubmenu">» PlayCheck Report</a></div>
	   		<div class="submenu"><a href="${context}/progGameplayReport" class="leftsubmenu">» Progressive Game Play</a></div>
	   		<div class="submenu"><a href="${context}/progWinsReport" class="leftsubmenu">» Progressive Wins</a></div>
	   		<!--  for top end -->
	     	
	     	</div>
	     </div>
	     <c:if test="${userDto.accountType eq 'H'}">
	     	<div class="menu"><a href="${context}/manageSettings" class="leftmenu">» Manage My Settings</a></div>
	     </c:if>
	     
	     <div class="menu"><a href="${context}/contactUs" class="leftmenu">» Contact Us</a></div>
	     <div class="menu"><a href="#" class="leftmenu" onclick="if(document.getElementById('help_submenu').style.display=='none') document.getElementById('help_submenu').style.display='block'; else document.getElementById('help_submenu').style.display='none';">» Help</a>
	     	<div id="help_submenu" style="display:none;">
			<div class="submenu"><a href="https://www.totalegame.net/help/en/WebHelp_AG/index.php" class="leftsubmenu" target="_blank">» Help</a></div>
			<div class="submenu"><a style="cursor:pointer;" class="leftsubmenu">» Mobile game direct download<br>&nbsp;&nbsp;&nbsp;instructions</a></div>
		</div>
	  </div>
	</div>
</div>
