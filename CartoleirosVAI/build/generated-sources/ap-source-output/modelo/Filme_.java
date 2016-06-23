package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Categoria;
import modelo.Usuario;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2016-06-21T15:50:48")
@StaticMetamodel(Filme.class)
public class Filme_ { 

    public static volatile SingularAttribute<Filme, String> youtube;
    public static volatile SingularAttribute<Filme, String> imdb;
    public static volatile ListAttribute<Filme, Usuario> usuarioList;
    public static volatile SingularAttribute<Filme, Categoria> categoria;
    public static volatile SingularAttribute<Filme, String> tempo;
    public static volatile SingularAttribute<Filme, String> nome;
    public static volatile SingularAttribute<Filme, Character> nota;
    public static volatile SingularAttribute<Filme, Long> filme;
    public static volatile SingularAttribute<Filme, String> descricao;

}