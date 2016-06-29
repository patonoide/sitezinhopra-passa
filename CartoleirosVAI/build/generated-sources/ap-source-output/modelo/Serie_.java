package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Categoria;
import modelo.Usuario;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2016-06-28T20:20:58")
@StaticMetamodel(Serie.class)
public class Serie_ { 

    public static volatile SingularAttribute<Serie, String> youtube;
    public static volatile SingularAttribute<Serie, String> imdb;
    public static volatile SingularAttribute<Serie, String> episodio;
    public static volatile SingularAttribute<Serie, String> temporada;
    public static volatile SingularAttribute<Serie, Categoria> categoria;
    public static volatile SingularAttribute<Serie, Integer> serie;
    public static volatile SingularAttribute<Serie, String> tempo;
    public static volatile SingularAttribute<Serie, String> nome;
    public static volatile CollectionAttribute<Serie, Usuario> usuarioCollection;
    public static volatile SingularAttribute<Serie, Character> nota;
    public static volatile SingularAttribute<Serie, String> descricao;

}