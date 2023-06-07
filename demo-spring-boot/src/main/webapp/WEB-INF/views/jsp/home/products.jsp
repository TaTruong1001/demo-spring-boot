<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<style>
    <%@include file="/resources/css/main.css" %>
</style>
    <jsp:include page="Header.jsp" />

<body>
<div class="contain pt-10">

    <div class="mt-10">
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <th scope="col">productId</th>
                <th scope="col">productName</th>
                <th scope="col">productDesciption</th>
                <th scope="col">Price</th>
                <th scope="col">Date</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="products" items="${products}" varStatus="e">
                <tr>
                    <td>${products.id}</td>
                    <td>${products.name}</td>
                    <td>${products.description}</td>
                    <td><fmt:formatNumber value="${products.price}" type="currency"/></td>
                    <td><fmt:formatDate value="${products.create_At}" pattern="dd/MM/yyyy"/></td>
                </tr>
            </c:forEach>

            </tbody>
        </table>


        </div>
        </div>
</body>

</html>