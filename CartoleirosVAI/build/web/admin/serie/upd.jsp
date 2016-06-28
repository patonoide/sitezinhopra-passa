<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="modelo.Serie"%>
<%@page import="dao.SerieDAO"%>
<%@include file="../cabecalho-admin.jsp"%>

<%
     String id = request.getParameter("id");
     
    SerieDAO dao = new SerieDAO();
    Serie s = dao.buscarPorChavePrimaria(Integer.parseInt(id));
    CategoriaDAO cDAO = new CategoriaDAO();
    Categoria obj = cDAO.buscarPorChavePrimaria(Integer.parseInt(id));
    List<Categoria> cLista = cDAO.listar();
%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Serie - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" readonly  name="id" value="<%=s.getSerie()%>"/>
                        <label class="mdl-textfield__label" for="id">ID - Fornecido pelo sistema</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNome" value="<%=s.getNome()%>"/>
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"  name="txtDescricao" value="<%=s.getDescricao()%>"/>
                        <label class="mdl-textfield__label" for="txtDescricao">Descricao</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"  name="txtTemporada" value="<%=s.getTemporada()%>"/>
                        <label class="mdl-textfield__label" for="txtTemporada">Temporada</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input"    name="txtNota" value="<%=s.getNota()%>"/>
                        <label class="mdl-textfield__label" for="txtNota">Nota</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"  name="txtTempo" value="<%=s.getTempo()%>"/>
                        <label class="mdl-textfield__label" for="txtTempo">Tempo</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"  name="txtEpisodio" value="<%=s.getEpisodio()%>"/>
                        <label class="mdl-textfield__label" for="txtEpisodio">Episodio</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"  name="txtYoutube" value="<%=s.getYoutube()%>"/>
                        <label class="mdl-textfield__label" for="txtYoutube">Youtube</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"   name="txtImdb" value="<%=s.getImdb()%>"/>
                        <label class="mdl-textfield__label" for="txtImdb">Imdb</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col">
                    <select class="mdl-select__input" id="professsion" name="selCategoria">
                            <%                            
                    for (Categoria c : cLista) {
                %>
                             <option value="<%=c.getCategoria()%>"><%=c%></option> 
               <%} %>   
               
                 </select>

                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">clear</i></button>


                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape-admin.jsp"%>


