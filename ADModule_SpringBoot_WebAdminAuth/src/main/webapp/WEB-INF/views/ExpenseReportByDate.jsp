<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expense Report By Date Range</title>
</head>
<body>
	<h1>Expense Report By Date Range</h1>
	<%@ include file="Navigation.jsp"%>
	<fieldset>
	
		<legend>Expenses</legend>
		<form action="${pageContext.request.contextPath }/customDateRangeReport" method="get">
		<div>
			<label>Begin Date:</label>
			<input type="date" name="begDate" />
		</div>
		<div>
			<label>End Date:</label>
			<input type="date" name="endDate" />
		</div>
		<div>
			<input type="submit" value="Submit" />
		</div>
		</form>
		<table>
			<tr>
				<td>Title</td>
				<td>Category</td>
				<td>Amount</td>
			</tr>
			<c:forEach items="${expensesByDateRange}" var = "expense">
				<tr>
					<td>${expense.title}</td>
					<td>${expense.expenseCategory.expenseCategoryName}</td>
					<td>${expense.amount}</td>
				</tr>
			</c:forEach>
		</table>
		
	</fieldset>
</body>
</html>