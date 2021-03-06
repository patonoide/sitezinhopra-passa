<%@page import="modelo.Categoria"%>
<%@page import="modelo.Serie"%>
<%@page import="dao.SerieDAO"%>
<%@include file="cabecalho-site.jsp"%>
<%
    String msg ="";
    if(//request.getParameter("txtId")== null ||
            request.getParameter("txtNome") == null){
        response.sendRedirect("serie.jsp");
    }
    else{
        //String id = request.getParameter("txtId");
        String nome = request.getParameter("txtNome");
        String desc = request.getParameter("txtDescricao");
        String nota = request.getParameter("txtNota");
        String yt = request.getParameter("txtYoutube");
        String imdb = request.getParameter("txtImdb");
        String tempo= request.getParameter("txtTempo");
        String temporada = request.getParameter("txtTemporada");
        String episodio =request.getParameter("txtEpisodio");
        String cat=request.getParameter("selCategoria");
        SerieDAO dao = new SerieDAO();
         Categoria Ocategoria = new Categoria();
        Ocategoria.setCategoria(Integer.parseInt(cat));
        
       Serie obj = new Serie();
        obj.setCategoria(Ocategoria);
        
        //obj.setId(Integer.parseInt(id));
        obj.setNome(nome);
        obj.setCategoria(Ocategoria);
        obj.setDescricao(desc);
        obj.setEpisodio(episodio);
        obj.setImdb(imdb);
        obj.setNota(nota.charAt(0));
        obj.setTempo(tempo);
        obj.setTemporada(temporada);
        obj.setYoutube(yt);
        
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
            <h4>Serie - Cadastrar</h4>
            <%=msg%>.
            <a href="index.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="rodape-site.jsp"%>

