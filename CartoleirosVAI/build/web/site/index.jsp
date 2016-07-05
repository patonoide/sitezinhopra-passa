<%@include file="cabecalho-site.jsp"%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">

        <div class="mdl-card__supporting-text">

            <center>
                <div class="mdl-cell--12-col">
                    <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" 
                            onclick="document.location.href = 'serie.jsp'">
                        Cadastrar uma série
                    </button>

                    <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"
                            onclick="document.location.href = 'checar.jsp'">
                        Checar suas séries e filmes
                    </button>

                    <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"
                            onclick="document.location.href = 'filme.jsp'">
                        Cadastrar um filme
                    </button>
                </div>
            </center>
        </div>
    </div>
</section>
<script>
</script>

<%@include file="rodape-site.jsp"%>
