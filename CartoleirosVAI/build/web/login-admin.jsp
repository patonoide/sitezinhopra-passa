<%@include file="cabecalho-index.jsp"%>

<% 
    if(request.getParameter("sair")!=null)
    {
        session.setAttribute("usuarioAdmin",null);
    }
    
    if(request.getParameter("txtLogin")!=null && request.getParameter("txtSenha")!=null)
    {
     
    
    String login = request.getParameter("txtLogin").toString();
    String senha = request.getParameter("txtSenha").toString();
    if(login.equals("Admin")&& senha.equals("Admin"))
    {
        session.setAttribute("usuarioAdmin", login);
    }
    else 
    {
        response.sendRedirect("index.jsp");
    }
     String mensagem = "";
}
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">

        <div class="mdl-card__supporting-text">

            <form action="admin/index.jsp" method="post">
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" name="txtLogin" required  id="txtLogin" />
                        <label class="mdl-textfield__label" for="txtLogin">Login</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="password" name="txtSenha" required  id="txtSenha" />
                        <label class="mdl-textfield__label" for="txtSenha">Senha</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col">

                    <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                        Entrar
                    </button>

                    <button type="reset" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
                        Limpar
                    </button>
                </div>
            </form>
        </div>
    </div>

</section>

<%@include file="rodape-index.jsp"%>
