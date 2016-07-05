<%@page import="dao.UsuarioDAO"%>
<%@page import="modelo.Usuario"%>
<%
    //buscar as informacoes do formulario
    String login=request.getParameter("txtCadastrarLogin");
    String senha=request.getParameter("txtCadastrarSenha");
    String email=request.getParameter("txtCadastrarEmail");
    String foto=request.getParameter("txtFoto");
    //criar meu objeto modelo
    Usuario usuario = new Usuario();
    //Adiciono os valores enviados 
    //jogador.setNome(nome);
    usuario.setLogin(login);
    usuario.setSenha(senha);
    usuario.setEmail(email);
    usuario.setFoto(foto);
    //instanciar minha classe de acesso  a dados
    UsuarioDAO dao= new UsuarioDAO();
    //manda inserir
    dao.incluir (usuario);
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar</title>
    </head>
    <body>
        <h1>Cadastro feito com sucesso</h1>
        <a href="login-usuario.jsp">Voltar</a>
    </body>
</html>
