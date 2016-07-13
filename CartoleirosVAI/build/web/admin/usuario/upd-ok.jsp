
<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%@include file="../cabecalho-admin.jsp"%>
<%
    if (request.getParameter("id") == null
            ){
        response.sendRedirect("list.jsp");
        return;
    }
    String email= request.getParameter("txtEmail");
    String senha = request.getParameter("txtSenha");
    String login=request.getParameter("txtLogin");
    String id= request.getParameter("id");
    
           UsuarioDAO dao = new UsuarioDAO();
        Usuario obj = dao.buscarPorChavePrimaria(Integer.parseInt(id));
     
      
        obj.setEmail(email);
        
        obj.setSenha(senha);
        obj.setLogin(login);
        
        dao.alterar(obj);
     if(obj==null){
        response.sendRedirect("list.jsp");
        return;
    }
       
    
    
    
   
    
   
    
   
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            <p>Registro atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape-admin.jsp"%>

