<%@page import="org.muffin.muffin.servlets.SessionKeys" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="m" tagdir="/WEB-INF/tags" %>
<m:base>
    <jsp:attribute name="title">${sessionScope.get(SessionKeys.CINEMA_BUILDING_OWNER).name}  | Home</jsp:attribute>
    <jsp:body>
        <div class="container">
            Hello, ${sessionScope.get(SessionKeys.CINEMA_BUILDING_OWNER).name}
        </div>
    </jsp:body>
</m:base>