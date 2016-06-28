
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%@include file="../cabecalho-admin.jsp"%>
<%      
        String msg="";
        String senha = request.getParameter("txtSenha");
        String login = request.getParameter("txtLogin");
        String email = request.getParameter("txtEmail");
        String foto = request.getParameter("txtFoto");
        UsuarioDAO dao = new UsuarioDAO();
        
        Usuario obj = new Usuario();
        //obj.setId(Integer.parseInt(id));
        obj.setEmail(email);
        obj.setFoto(foto);
        obj.setSenha(senha);
        obj.setLogin(login);
        
        dao.incluir(obj);
    
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Usuario - Cadastrar</h4>
            <%%>.
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape-admin.jsp"%>

