package org.apache.jsp.site;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/site/cabecalho-site.jsp");
    _jspx_dependants.add("/site/rodape-site.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html lang=\"pt-br\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"utf-8\">\r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        <meta name=\"description\" content=\"A front-end template that helps you build fast, modern mobile web apps.\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("        <title>Gerenciamento de Sistemas</title>\r\n");
      out.write("\r\n");
      out.write("        <!-- Add to homescreen for Chrome on Android -->\r\n");
      out.write("        <meta name=\"mobile-web-app-capable\" content=\"yes\">\r\n");
      out.write("        <link rel=\"icon\" sizes=\"192x192\" href=\"images/touch/chrome-touch-icon-192x192.png\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Add to homescreen for Safari on iOS -->\r\n");
      out.write("        <meta name=\"apple-mobile-web-app-capable\" content=\"yes\">\r\n");
      out.write("        <meta name=\"apple-mobile-web-app-status-bar-style\" content=\"black\">\r\n");
      out.write("        <meta name=\"apple-mobile-web-app-title\" content=\"Material Design Lite\">\r\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"apple-touch-icon-precomposed.png\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Tile icon for Win8 (144x144 + tile color) -->\r\n");
      out.write("        <meta name=\"msapplication-TileImage\" content=\"images/touch/ms-touch-icon-144x144-precomposed.png\">\r\n");
      out.write("        <meta name=\"msapplication-TileColor\" content=\"#3372DF\">\r\n");
      out.write("\r\n");
      out.write("        <!-- SEO: If your mobile URL is different from the desktop URL, add a canonical link to the desktop page https://developers.google.com/webmasters/smartphone-sites/feature-phones -->\r\n");
      out.write("        <!--\r\n");
      out.write("        <link rel=\"canonical\" href=\"http://www.example.com/\">\r\n");
      out.write("        -->\r\n");
      out.write("\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en\" rel=\"stylesheet\">\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\"\r\n");
      out.write("              rel=\"stylesheet\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../mdl/material.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../mdl/styles.css\">\r\n");
      out.write("       \r\n");
      out.write("    </head>\r\n");
      out.write("    \r\n");
      out.write("<body class=\"mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base\">\r\n");
      out.write("    <div class=\"mdl-layout mdl-js-layout mdl-layout--fixed-header\">\r\n");
      out.write("      <header class=\"mdl-layout__header mdl-layout__header--scroll mdl-color--primary\">\r\n");
      out.write("        <div class=\"mdl-layout__header-row\">\r\n");
      out.write("        </div>\r\n");
      out.write("          <div class=\"mdl-layout--large-screen-only mdl-layout__header-row\">\r\n");
      out.write("            <p>Usuario - <a href=\"../index.jsp?sair=ok\">Sair</a></p>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"mdl-layout--large-screen-only mdl-layout__header-row\">\r\n");
      out.write("          <h3>Site</h3>\r\n");
      out.write("        </div>\r\n");
      out.write("      </header>\r\n");
      out.write("      <main class=\"mdl-layout__content\">\r\n");
      out.write("        <div class=\"mdl-layout__tab-panel is-active\" id=\"overview\">\r\n");
      out.write("<script src=\"../mdl/material.min.js\"></script>\r\n");
      out.write("<script src=\"../mdl/jquery-2.1.4.min.js\"></script>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<section class=\"section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp\">\r\n");
      out.write("    <div class=\"mdl-card mdl-cell mdl-cell--12-col\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"mdl-card__supporting-text\">\r\n");
      out.write("\r\n");
      out.write("            <center>\r\n");
      out.write("                <div class=\"mdl-cell--12-col\">\r\n");
      out.write("                    <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\" \r\n");
      out.write("                            onclick=\"document.location.href = 'serie.jsp'\">\r\n");
      out.write("                        Cadastrar uma série\r\n");
      out.write("                    </button>\r\n");
      out.write("\r\n");
      out.write("                    <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"\r\n");
      out.write("                            onclick=\"document.location.href = 'checar.jsp'\">\r\n");
      out.write("                        Checar suas séries e filmes\r\n");
      out.write("                    </button>\r\n");
      out.write("\r\n");
      out.write("                    <button class=\"mdl-button mdl-js-button mdl-button--raised mdl-button--colored\"\r\n");
      out.write("                            onclick=\"document.location.href = 'filme.jsp'\">\r\n");
      out.write("                        Cadastrar um filme\r\n");
      out.write("                    </button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </center>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</section>\r\n");
      out.write("<script>\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<section class=\"section--footer mdl-color--white mdl-grid\">\r\n");
      out.write("\r\n");
      out.write("</section>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"mdl-layout__tab-panel\" id=\"features\">\r\n");
      out.write("    <section class=\"section--center mdl-grid mdl-grid--no-spacing\">\r\n");
      out.write("\r\n");
      out.write("    </section>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<footer class=\"mdl-mega-footer\">\r\n");
      out.write("    <div class=\"mdl-mega-footer--middle-section\">\r\n");
      out.write("        Alonso & Porto Projects\r\n");
      out.write("    </div>\r\n");
      out.write("</footer>\r\n");
      out.write("</main>\r\n");
      out.write("</div>\r\n");
      out.write("<script src=\"../mdl/material.min.js\"></script>\r\n");
      out.write("<script src=\"../mdl/jquery-2.1.4.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
