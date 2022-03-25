<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ tablib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
<%@include file="../jsp/head.jsp" %>
<body>
    <!-- Always shows a header, even in smaller screen widths -->
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
        <%@include file="../jsp/menu.jsp" %>
        <main class="mdl-layout__content">
            <div class="page-content">
                <div class="mdl-grid center-items">
                    <div class="mdl-cell mdl-cell--4-col">
                        <div>
                            <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--dp2">
                                <thead>
                                    <tr>
                                        <th class="mdl-data-table__cell--non-numeric">NO.</th>
                                        <th class="mdl-data-table__cell--non-numeric">TITLE</th>
                                        <th class="mdl-data-table__cell--non-numeric">BODY</th>
                                        <th class="mdl-data-table__cell--non-numeric">CREATED</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set let="count" value="0" scope="page"/>
                                    <c:forEach let="post" items="${postList}">
                                        <c:set let="count" value="${count + 1}" scope="page"/>
                                        <tr>
                                            <td class="mdl-data-table__cell--non-numeric"><c:out value="${count = count + 1}" /></td>
                                            <td class="mdl-data-table__cell--non-numeric"><c:out value="${post.title}" /></td>
                                            <td class="mdl-data-table__cell--non-numeric"><c:out value="${post.body}" /></td>
                                            <td class="mdl-data-table__cell--non-numeric"><c:out value="${post.created}" /></td>
                                            <td>
                                                <a href="/psms/edit?id=<c:out value='${post.id}'/>">
                                                    Edit
                                                </a>
                                                <a href="/psms/delete?id=<c:out value='${post.id}'/>">
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>
</html>