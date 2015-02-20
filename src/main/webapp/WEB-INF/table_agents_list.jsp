<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:choose>
	<c:when test="${requestStatus.code eq 0}">
		<input type="hidden" name="orderBy"/>
		<input type="hidden" name="orderType"/>
		<input type="hidden" name="page"/>
		<table class="tab_body" summary="" cellpadding="0" cellspacing="1" border="0">
			<thead>
				<tr>
				     <td class="tab_head1 sortable" align="center">
				         <a class="tablink" style="cursor:pointer;" data-column="0" data-order="desc">First Name</a>
				     </td>
				     <td class="tab_head1 sortable" align="center">
				         <a class="tablink" style="cursor:pointer;" data-column="1" data-order="desc">Last Name</a>
				     </td>
				     <td class="tab_head1 sortable" align="center">
				         <a class="tablink" style="cursor:pointer;" data-column="2" data-order="desc">Mobile Number</a>
				     </td>
				     <td class="tab_head1 sortable" align="center" nowrap="nowrap">
				         <a class="tablink" style="cursor:pointer;" data-column="3" data-order="desc">Status</a>
				     </td>
				     <td class="tab_head1" align="center">
				         <span>Casino Balance</span>
				     </td>
				     <td class="tab_head1" align="center">
				         <a class="tablink" style="cursor:pointer;"></a>
				     </td>
				     <td class="tab_head1">&nbsp;</td>
				</tr>
			</thead>
		 	 <tbody>
		 	 	<c:if test="${fn:length(agentsListDto.agentListResponseDataTable) eq 0}">
		 	 		<tr>
		 	 			<td colspan="7" align="center">No data to display</td>
		 	 		</tr>
		 	 	</c:if>
		  		<c:forEach var="agent" items="${agentsListDto.agentListResponseDataTable}">
				  		<tr>
					 		<td class="tab_row4" align="left" nowrap="nowrap">${agent.firstName}</td>
					 		<td class="tab_row4" align="left" nowrap="nowrap">${agent.lastName}</td>
					 		<td class="tab_row1" align="left" nowrap="nowrap">${agent.mobileNo}</td>
					 		<td class="tab_row1" align="center">
					 			<c:choose>
					 				<c:when test="${agent.status eq 0}">
					 					Active
					 				</c:when>
					 				<c:when test="${agent.status eq 1}">
					 					Locked
					 				</c:when>
					 				<c:when test="${agent.status eq 2}">
					 					Suspended
					 				</c:when>
					 				<c:otherwise>"${agent.status eq 3}">
					 					Locked due to retries
					 				</c:otherwise>
					 			</c:choose>
					 		</td>
					 		<td class="tab_row1" nowrap="nowrap" align="right">
					 			<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2"  minIntegerDigits="1" value="${agent.balance==null? 0:agent.balance}" />
					 		</td>
					 		<td class="tab_row1">
					 			<a href="#" onclick="return editAgent('${agent.mgrUserID}')" >
					 				<span class="cmt_edit" title="Edit"></span>
					 			</a>
					 		</td>
					 		<td class="tab_row1">
					 			<a href="#" onclick="return softLogin('${agent.mgrUserID}')" >Login</a>
					 		</td>
					 	</tr>
				  	</c:forEach>
			</tbody>
		</table>
		<div class="balance">
			<img src="/ClientManagementSystem/images/cmt_warning.gif" width="11" height="11" alt="">
			<b>Total agents: ${agentsListDto.record.totalRecords}</b>
		</div>
		<script>
			$(function(){
				var orderBy 	= "${agentsListDto.record.orderBy}";
				var orderType 	= "${agentsListDto.record.orderType}";
				$(".tab_body").find("a.tablink")
								.filter("[data-column='"+orderBy+"']")
								.data("order",orderType=="asc"?"desc":"asc")
								.closest("td.sortable")
								.addClass(orderType);
				
				$(".tablink").click(function(){
					$("[name='orderBy']").val($(this).data("column"));
					$("[name='orderType']").val($(this).data("order"));
					$(this).closest("form").submit();
				});
			})
			
		</script>
	</c:when>
	<c:otherwise>
		<div class="error-box">${requestStatus.message}</div>
	</c:otherwise>
</c:choose>
