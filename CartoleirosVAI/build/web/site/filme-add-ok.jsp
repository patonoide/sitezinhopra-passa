<%@page import="modelo.Categoria"%>
<%@page import="modelo.Filme"%>
<%@page import="dao.FilmeDAO"%>
<%@include file="cabecalho-site.jsp"%>
<%
    String msg ="";
    if(//request.getParameter("txtId")== null ||
            request.getParameter("txtNome") == null){
        response.sendRedirect("filme.jsp");
    }
    else{
        //String id = request.getParameter("txtId");
        String nome = request.getParameter("txtNome");
        String desc = request.getParameter("txtDescricao");
        String nota = request.getParameter("txtNota");
        String yt = request.getParameter("txtYoutube");
        String imdb = request.getParameter("txtImdb");
        String tempo= request.getParameter("txtTempo");
        Filme obj = new Filme();
        String cat=request.getParameter("selCategoria");
        FilmeDAO dao = new FilmeDAO();
         Categoria Ocategoria = new Categoria();
        Ocategoria.setCategoria(Integer.parseInt(cat));
        
       
        obj.setCategoria(Ocategoria);
        obj.setDescricao(desc);
         obj.setNome(nome);
        obj.setImdb(imdb);
      
        obj.setNota(nota.charAt(0));
        obj.setTempo(tempo);
        
        obj.setYoutube(yt);
        //obj.setId(Integer.parseInt(id));
        obj.setNome(nome);
        
        try{
            dao.incluir(obj);
            msg ="Registro cadastrado com sucesso";
        }
        catch(Exception ex){
            msg ="Erro ao cadastrar registro";
        }
    }
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Filme - Cadastrar</h4>
            <%=msg%>.
            <a href="index.jsp"><i class="material-icons">List</i></a>
            
        </div>

    </div>

</section>

<%@include file="rodape-site.jsp"%>

