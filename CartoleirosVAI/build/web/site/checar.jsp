<%@include file="cabecalho-site.jsp"%>
<%@page import="modelo.Filme"%>
<%@page import="dao.FilmeDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Serie"%>
<%@page import="dao.SerieDAO"%>
<%
    SerieDAO daos = new SerieDAO();
    List<Serie> listas = daos.listar();

    FilmeDAO daof = new FilmeDAO();
    List<Filme> listaf = daof.listar();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
        <div>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
            </head>
            <br/>
            <body>
                Série
                <table class="mdl-data-table mdl-js-data-table">
                    <thead>
                        <tr>

                            <th>ID</th>
                            <th>Nome</th>
                            <th>Descrição</th>
                            <th>Temporada</th>
                            <th>Nota</th>
                            <th>Tempo</th>
                            <th>Episódio</th>
                            <th>Youtube</th>
                            <th>IMDB</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Serie item : listas) {
                        %>
                        <tr>
                            <td><%=item.getSerie()%></td>
                            <td><%=item.getNome()%></td>
                            <td><%=item.getDescricao()%></td>
                            <td><%=item.getTemporada()%></td>
                            <td><%=item.getNota()%></td>
                            <td><%=item.getTempo()%></td>
                            <td><%=item.getEpisodio()%></td>
                            <td><%=item.getYoutube()%></td>
                            <td><%=item.getImdb()%></td>
                            <%}%>

                    </tbody>
                </table>
            </body>
            
            <br/>
            <div>
                <body>
                    Filme
                    <table class="mdl-data-table mdl-js-data-table">
                        <thead>
                            <tr>

                                <th>ID</th>
                                <th>Nome</th>
                                <th>Descrição</th>
                                <th>Nota</th>
                                <th>Tempo</th>
                                <th>Youtube</th>
                                <th>IMDB</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Filme itef : listaf) {
                            %>
                            <tr>
                                <td><%=itef.getFilme()%></td>
                                <td><%=itef.getNome()%></td>
                                <td><%=itef.getDescricao()%></td>
                                <td><%=itef.getNota()%></td>
                                <td><%=itef.getTempo()%></td>
                                <td><%=itef.getYoutube()%></td>
                                <td><%=itef.getImdb()%></td>
                                <td>
                                    <%}%>
                        </tbody>
                    </table>
                </body>
            </div>
        </div>
</html>
<%@include file="rodape-site.jsp"%>