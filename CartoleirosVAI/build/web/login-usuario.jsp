<%@include file="cabecalho-index.jsp"%>

<%
    //Tentativa de login
    String mensagem = "";
    if(request.getParameter("txtEntrarLogin")!=null &&
            request.getParameter("txtEntrarSenha")!=null)
    {
        UsuarioDAO dao = new UsuarioDAO();
        Usuario usuario; //variável com o usuário logado
        String login = request.getParameter("txtEntrarLogin");
        String senha = request.getParameter("txtEntrarSenha");
        
        usuario = dao.realizarLogin(login, senha);
        if(usuario !=null)
        {
            //Criar uma Sessão para o jogador
            //Vou pra tela inicial do jogo
            session.setAttribute("usuario", usuario);
            //Vou para tela de jogo
            response.sendRedirect("index.jsp");
        }
        else
        {
            mensagem = "Login errado";
        }
    }
%>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">

        <div class="mdl-card__supporting-text">

            <form action="site/index.jsp" method="post">
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
            <div class="centralizar">
                <hr/>
                ou
                <a href="index.jsp?txtEntrarLogin=anonimo;txtEntrarSenha=anonimo">Entrar Anonimo</a>
                <hr/>
            </div>
            <h4>Cadastre-se</h4>
            
            <form action="cadastrar-ok.jsp" method="post">
                </br>
                <label>Login:</label>
                <input type="text" name="txtCadastrarLogin"
                       /><br/>
                <label>Senha</label>
                <input type="text" name="txtCadastrarSenha"
                       /><br/>
                <label>Email</label>
                <input type="text" name="txtCadastrarEmail"
                       /><br/>
                <input type="submit" value="Cadastrar" />
                
            </form>
        </div>
        </div>
    </div>

</section>

<%@include file="rodape-index.jsp"%>
