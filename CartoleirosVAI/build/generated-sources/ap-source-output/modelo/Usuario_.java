package modelo;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import modelo.Filme;
import modelo.Serie;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2016-06-21T15:50:48")
@StaticMetamodel(Usuario.class)
public class Usuario_ { 

    public static volatile SingularAttribute<Usuario, String> senha;
    public static volatile ListAttribute<Usuario, Serie> serieList;
    public static volatile SingularAttribute<Usuario, String> foto;
    public static volatile SingularAttribute<Usuario, Long> usuario;
    public static volatile ListAttribute<Usuario, Filme> filmeList;
    public static volatile SingularAttribute<Usuario, String> login;
    public static volatile SingularAttribute<Usuario, String> email;

}