<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<nav>
	<a href="${pageContext.request.contextPath}/homePage">Home</a>
	<a href="${pageContext.request.contextPath}/aboutPage">About</a>
	<a href="${pageContext.request.contextPath}/expenseForm">Create Expense</a>
	<a href="${pageContext.request.contextPath}/allExpenses">Expense Report</a>
<!-- 	If the current user's userRole is not "admin" then the link to AdminPage.jsp won't appear in the menu.-->	
 	<c:if test="${currentUser.userRole == 'admin'}">
		<a href="${pageContext.request.contextPath}/adminPage">Admin Page</a>
	</c:if>
	<a href="${pageContext.request.contextPath}/logout">Logout</a>
</nav>