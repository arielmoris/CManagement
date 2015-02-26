<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%-- <c:choose>
	<c:when test="${requestStatus.code eq 0}"> --%>
		<input type="hidden" name="orderBy"/>
		<input type="hidden" name="orderType"/>
		<input type="hidden" name="page"/>
		<table class="tab_body" summary="" cellpadding="0" cellspacing="1" border="0">
			<thead>
				<tr>
				     <td class="tab_head1 sortable" align="center">
				         <a class="tablink" style="cursor:pointer;" data-column="0" data-order="desc">Transfer Date</a>
				     </td>
				     <td class="tab_head1 sortable" align="center">
				         <a class="tablink" style="cursor:pointer;" data-column="1" data-order="desc">Transfer By</a>
				     </td>
				     <td class="tab_head1 sortable" align="center">
				         <a class="tablink" style="cursor:pointer;" data-column="2" data-order="desc">Transfer From/To</a>
				     </td>
				     <td class="tab_head1" align="center" nowrap="nowrap">
				         <a class="tablink" style="cursor:pointer;" data-column="3" data-order="desc">Increase Balance</a>
				     </td>
				     <td class="tab_head1" align="center" nowrap="nowrap">
				         <a class="tablink" style="cursor:pointer;" data-column="3" data-order="desc">Decrease Balance</a>
				     </td>
				     <td class="tab_head1" align="center" nowrap="nowrap">
				         <a class="tablink" style="cursor:pointer;" data-column="3" data-order="desc">Balance</a>
				     </td>
				</tr>
			</thead>
		 	 <tbody>
		 	 	<c:if test="${fn:length(dataTableDto.data) eq 0}">
		 	 		<tr>
		 	 			<td colspan="7" align="center">No data to display</td>
		 	 		</tr>
		 	 	</c:if>
		  		<c:forEach var="data" items="${dataTableDto.data}">
				  		<tr>
					 		<td class="tab_row1" align="left" nowrap="nowrap">
					 			<fmt:formatDate value="${data.transferDate}" pattern="MMM dd, yyyy HH:mm"/>
					 		</td>
					 		<td class="tab_row1" align="center" nowrap="nowrap">${data.transferBy}</td>
					 		<td class="tab_row1" align="center" nowrap="nowrap">${data.fromTo}</td>
					 		<td class="tab_row1" align="right">
					 			<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2"  minIntegerDigits="1" value="${data.increaseBalance==null? 0:data.increaseBalance}" />
					 		</td>
					 		<td class="tab_row1" align="right">
					 			<fmt:formatNumber type="number" maxFractionDigits="2" minFractionDigits="2"  minIntegerDigits="1" value="${data.decreaseBalance==null? 0:data.decreaseBalance}" />
					 		</td>
					 		<td class="tab_row1" nowrap="nowrap" align="right">${data.balance}</td>
					 	</tr>
			  	</c:forEach>
			  	
			</tbody>
		</table>
		<div class="navigation">
		</div>
		<div class="balance">
			<img src="/ClientManagementSystem/images/cmt_warning.gif" width="11" height="11" alt="">
			<b>Total records: ${fn:length(dataTableDto.data)}</b>
		</div>
		<script>
			$(function(){
				createPaging('1','${dataTableDto.size}','${fn:length(dataTableDto.data)}');
				var orderBy 	= "${dataTableDto.orderBy}";
				var orderType 	= "${dataTableDto.orderType}";
				$(".tab_body").find("a.tablink")
								.filter("[data-column='"+orderBy+"']")
								.data("order",orderType=="asc"?"desc":"asc")
								.closest("td.sortable")
								.addClass(orderType);
				
				$(".sortable .tablink").click(function(){
					var form = $(this).closest("form");
					$("[name='orderBy']").val($(this).data("column"));
					$("[name='orderType']").val($(this).data("order"));
					form.find("[name='isSearch']").val("false");
					form.submit();
				});
				
				function createPaging(currentPage, pageSize, total){
					var noOfPages  = Math.ceil(total / pageSize);
					var noOfDisplayedPageItems = 2;
					var $backButton = $('<input type="button" class="button" value="< Back">')
					var $nextButton = $('<input type="button" class="button" value="Next >">');
					var $container  = $('.navigation');
					var $item;
					for (var i = 1; i <= noOfPages; i++) {
						if(i == currentPage){
							$item=$('<span>'+i+'</span>');
						}else{
							$item=$('<a href="#">'+i+'</a>');
						}
						$item.addClass("page-item");
						$container.append($item);
					}
					if(noOfPages == 1){
						$backButton.prop("disabled", true);
						$nextButton.prop("disabled", true);
					}
					$container.prepend($backButton)
							  .append($nextButton);
				}
			})
			
		</script>
<%-- 	</c:when>
	<c:otherwise>
		<div class="error-box">${requestStatus.message}</div>
	</c:otherwise>
</c:choose> --%>