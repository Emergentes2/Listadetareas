<%@page import="com.emergentes.modelo.Lista"%>
<%
    Lista item = (Lista) request.getAttribute("miTarea");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= (item.getId() == 0) ? "Nuevo registro":"Editar registro" %></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId() %>"/>
            <table>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea" value="<%= item.getTarea() %>" /> </td>
                </tr>
                <tr>
                    <td>Prioridad</td>
                    <td><input type="text" name="prioridad" value="<%= item.getPrioridad() %>" /></td>
                </tr>
                <tr>
                    <td>Completado</td>
                    <td><input type="texto" name="completado" value="<%= item.getCompletado() %>"</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
