<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Lista"%>
<%
    ArrayList<Lista> lista = (ArrayList<Lista>) session.getAttribute("listarea");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTA DE TAREAS</h1>
        <a href="MainController?op=nuevo">Nuevo registro</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Prioridad</th>
                <th>Completado</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null){
                    for (Lista item : lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getTarea() %> </td>
                <td><%= item.getPrioridad() %></td>
                <td><%= item.getCompletado() %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Modificar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                       onclick="return confirm('Está seguro de eliminar el registro ?');">Elimnar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
