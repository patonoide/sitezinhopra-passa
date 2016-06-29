package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Filme;
import modelo.Serie;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2016-06-28T20:20:58")
@StaticMetamodel(Categoria.class)
public class Categoria_ { 

    public static volatile CollectionAttribute<Categoria, Serie> serieCollection;
    public static volatile SingularAttribute<Categoria, Integer> categoria;
    public static volatile SingularAttribute<Categoria, String> nome;
    public static volatile CollectionAttribute<Categoria, Filme> filmeCollection;

}