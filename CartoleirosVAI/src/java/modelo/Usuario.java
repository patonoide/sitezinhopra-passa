/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author paton
 */
@Entity
@Table(name = "usuario")
@NamedQueries({
    @NamedQuery(name = "Usuario.findAll", query = "SELECT u FROM Usuario u")})
public class Usuario implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "usuario")
    private Integer usuario;
    @Basic(optional = false)
    @Column(name = "senha")
    private String senha;
    @Basic(optional = false)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
   
    
    @Column(name = "login")
    private String login;
    @ManyToMany(mappedBy = "usuarioCollection")
    private Collection<Serie> serieCollection;
    @ManyToMany(mappedBy = "usuarioCollection")
    private Collection<Filme> filmeCollection;

    public Usuario() {
    }

    public Usuario(Integer usuario) {
        this.usuario = usuario;
    }

    public Usuario(Integer usuario, String senha, String email, String login) {
        this.usuario = usuario;
        this.senha = senha;
        this.email = email;
        
        this.login = login;
    }

    public Integer getUsuario() {
        return usuario;
    }

    public void setUsuario(Integer usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public Collection<Serie> getSerieCollection() {
        return serieCollection;
    }

    public void setSerieCollection(Collection<Serie> serieCollection) {
        this.serieCollection = serieCollection;
    }

    public Collection<Filme> getFilmeCollection() {
        return filmeCollection;
    }

    public void setFilmeCollection(Collection<Filme> filmeCollection) {
        this.filmeCollection = filmeCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (usuario != null ? usuario.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.usuario == null && other.usuario != null) || (this.usuario != null && !this.usuario.equals(other.usuario))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Usuario[ usuario=" + usuario + " ]";
    }
    
}
