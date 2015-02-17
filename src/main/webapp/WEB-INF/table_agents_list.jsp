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
					 		<td class="tab_row1" align="center">${agent.status}</td>
					 		<td class="tab_row1" nowrap="nowrap" align="right">${agent.balance}</td>
					 		<td class="tab_row1">
					 			<a href="#" >
					 				<span class="cmt_edit" title="Edit"></span>
					 			</a>
					 		</td>
					 		<td class="tab_row1">
					 			<a href="#" onclick="">Login</a>
					 		</td>
					 	</tr>
				  	</c:forEach>
			</tbody>
		</table>
		<div class="tab_head" style="padding-top:10px; text-align: left;">
			Display 
			<select name="size" class="field">
				<c:forEach begin="10" end="100" step="5" var="val">
					<option ${val==agentsListDto.record.size?'selected':''}>${val}</option>
				</c:forEach>
			</select> entries per page&nbsp;&nbsp;&nbsp;
			<input type="submit" class="button" value="OK"></div>
		<div class="balance">
			<img src="/ClientManagementSystem/images/cmt_warning.gif" width="11" height="11" alt="">
			<b>Total agents: 28</b>
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
