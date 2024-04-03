<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.calificaciones.Session"%>
<%
    if (session.getAttribute("listases") == null) {
        ArrayList<Session> lisaux = new ArrayList<Session>();
        session.setAttribute("listases", lisaux);
    }
    ArrayList<Session> lista = (ArrayList<Session>) session.getAttribute("listases");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <h1>Registro de Calificaciones</h1>
        <%@include file="menu.jsp"%>
        <a href="MainServlet?op=nuevo">Nuevo</a>
        <table border="1" cellspacing="0">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>EF(40)</th>
                <th>Nota</th>
                <th></th>
                <th></th>
            </tr>
            <%                
                if (lista != null) {
                    for (Session item : lista) {
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombres()%></td>
                <td><%= item.getP1() %></td>
                <td><%= item.getP2() %></td>
                <td><%= item.getEf() %></td>
                <td><%= (item.getP1()+item.getP2()+item.getEf()) %></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a>
                </td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>

<h1>PRIMER PARCIAL TEM-742</h1>
<h2>Nombre: BRAHAN JULIO</h2>
<h2>Paterno: CONDORI</h2>
<h2>Materno: QUISPE</h2>
<h2>Carnet: 13376293</h2>
