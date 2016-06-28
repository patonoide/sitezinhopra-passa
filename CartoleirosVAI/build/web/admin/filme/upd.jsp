<%@page import="java.util.List"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Filme"%>
<%@page import="dao.FilmeDAO"%>
<%@include file="../cabecalho-admin.jsp"%>

<%
    
    String id = request.getParameter("id");
    FilmeDAO dao = new FilmeDAO();
    Filme f = dao.buscarPorChavePrimaria(Integer.parseInt(id));
    CategoriaDAO cDAO = new CategoriaDAO();
   
    List<Categoria> cLista = cDAO.listar();
%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Filme - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- área que ocupará o campo de formulário
                    segunda div -- campo de texto e label 
                -->
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input"  type="text" readonly  name="id" value="<%=f.getFilme()%>" />
                        <label class="mdl-textfield__label" for="id">ID - Fornecido pelo sistema</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtNome" value="<%=f.getNome()%>" />
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"  name="txtDescricao" value="<%=f.getDescricao()%>"/>
                        <label class="mdl-textfield__label" for="txtDescricao">Descricao</label>
                    </div>
                </div>
               
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input"    name="txtNota" value="<%=f.getNota()%>"/>
                        <label class="mdl-textfield__label" for="txtNota">Nota</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"  name="txtTempo" value="<%=f.getTempo()%>"/>
                        <label class="mdl-textfield__label" for="txtTempo">Tempo</label>
                    </div>
                </div>
                
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"  name="txtYoutube" value="<%=f.getYoutube()%>"/>
                        <label class="mdl-textfield__label" for="txtYoutube">Youtube</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text"   name="txtImdb" value="<%=f.getImdb()%>"/>
                        <label class="mdl-textfield__label" for="txtImdb">Imdb</label>
                    </div>
                </div>
                
                <select class="mdl-select__input" id="professsion" name="selCategoria">
                            <%                            
                    for (Categoria c : cLista) {
                %>
                             <option value="<%=c.getCategoria()%>"><%=c%></option> 
               <%} %>   
               
                 </select>
                <div class="mdl-cell--12-col">

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