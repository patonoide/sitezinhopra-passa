package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Filme;
import modelo.Serie;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2016-06-21T15:50:48")
@StaticMetamodel(Categoria.class)
public class Categoria_ { 

    public static volatile ListAttribute<Categoria, Serie> serieList;
    public static volatile SingularAttribute<Categoria, Long> categoria;
    public static volatile SingularAttribute<Categoria, String> nome;
    public static volatile ListAttribute<Categoria, Filme> filmeList;

}