package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Categoria;
import modelo.Usuario;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2016-06-28T20:20:58")
@StaticMetamodel(Filme.class)
public class Filme_ { 

    public static volatile SingularAttribute<Filme, String> youtube;
    public static volatile SingularAttribute<Filme, String> imdb;
    public static volatile SingularAttribute<Filme, Categoria> categoria;
    public static volatile SingularAttribute<Filme, String> tempo;
    public static volatile SingularAttribute<Filme, String> nome;
    public static volatile CollectionAttribute<Filme, Usuario> usuarioCollection;
    public static volatile SingularAttribute<Filme, Character> nota;
    public static volatile SingularAttribute<Filme, Integer> filme;
    public static volatile SingularAttribute<Filme, String> descricao;

}