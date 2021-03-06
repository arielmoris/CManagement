<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:choose>
	<c:when test="${requestStatus.code eq 0}">
		<input type="hidden" name="orderBy"/>
		<input type="hidden" name="orderType"/>
		<input type="hidden" name="page"/>
		<table class="tab_body" summary="" cellpadding="0" cellspacing="1" border="0">
			<thead>
				<tr>
				     <td class="tab_head1" align="center">
				         <span>Login Name</span>
				     </td>
				     <td class="tab_head1 sortable" align="center">
				         <a class="tablink" style="cursor:pointer;" data-column="0" data-order="desc">First Name</a>
				     </td>
				     <td class="tab_head1 sortable" align="center" nowrap="nowrap">
				         <a class="tablink" style="cursor:pointer;" data-column="1" data-order="desc">Last Name</a>
				     </td>
				     <td class="tab_head1 sortable" align="center" nowrap="nowrap">
				         <a class="tablink" style="cursor:pointer;" data-column="2" data-order="desc">MobileNo</a>
				     </td>
				     <td class="tab_head1 sortable" align="center">
				         <a class="tablink" style="cursor:pointer;" data-column="3" data-order="desc">Status</a>
				     </td>
				     <td class="tab_head1" align="center">
				         <span>Type</span>
				     </td>
				     <td class="tab_head1">&nbsp;</td>
				</tr>
			</thead>
		 	 <tbody>
		 	 	<c:if test="${fn:length(agentManagerListDto.list) eq 0}">
		 	 		<tr>
		 	 			<td colspan="7" align="center">No data to display</td>
		 	 		</tr>
		 	 	</c:if>
		  		<c:forEach var="login" items="${agentManagerListDto.list}">
				  		<tr>
					 		<td class="tab_row4" align="left" nowrap="nowrap">${login.mgrUserID}</td>
					 		<td class="tab_row4" align="left" nowrap="nowrap">${login.firstName}</td>
					 		<td class="tab_row4" align="left" nowrap="nowrap">${login.lastName}</td>
					 		<td class="tab_row4" align="left" nowrap="nowrap">${login.mobileNo}</td>
					 		<td class="tab_row1" align="center">
					 			<c:choose>
					 				<c:when test="${login.status eq 0}">
					 					Active
					 				</c:when>
					 				<c:when test="${login.status eq 1}">
					 					Locked
					 				</c:when>
					 				<c:when test="${login.status eq 2}">
					 					Suspended
					 				</c:when>
					 				<c:when test="${login.status eq 3}">
					 					Locked due to retries
					 				</c:when>
					 				<c:otherwise>
					 				</c:otherwise>
					 			</c:choose>
					 		</td>
					 		<td class="tab_row1" nowrap="nowrap" align="right">
					 			<c:choose>
					 				<c:when test="${login.isSuperUser eq 1}">
						 				SuperUser;
						 			</c:when>
						 			<c:otherwise>
						 				<c:choose>
							 				<c:when test="${userDto.accountType eq 'H'}">
							 					Cashier
							 				</c:when>
							 				<c:otherwise>
							 					Representative
							 				</c:otherwise>
							 			</c:choose>
						 			</c:otherwise>
					 			</c:choose>
					 		</td>
					 		<td class="tab_row1">
					 			<a href="#" onclick="return editLogin('${login.mgrUserID}')">
					 				<span class="cmt_edit" title="Edit"></span>
					 			</a>
					 		</td>
					 	</tr>
				  	</c:forEach>
			</tbody>
		</table>
		<div class="balance">
			<img src="/ClientManagementSystem/images/cmt_warning.gif" width="11" height="11" alt="">
			<b>Total records: ${agentManagerListDto.record.totalRecords}</b>
		</div>
		<script>
			$(function(){
				var orderBy 	= "${agentManagerListDto.record.orderBy}";
				var orderType 	= $.trim("${agentManagerListDto.record.orderType}".toLowerCase());
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
