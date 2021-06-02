
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <%
      String[] classes = {"C0221H1","C0221H2","C0221H3","C0221H4"};
      request.setAttribute("abc", classes);
    %>
    <c:forEach var="a" items="${abc}" >
      <h1>
        Đây là lớp
        <c:out value="${a}">
      </c:out>
      </h1>
    </c:forEach>
  </body>
</html>
