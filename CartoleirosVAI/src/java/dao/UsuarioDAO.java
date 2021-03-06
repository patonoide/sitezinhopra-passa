package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Usuario;

/**
 *
 * @author marcelosiedler
 */
public class UsuarioDAO {

    EntityManager em;
    
    public UsuarioDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }
    
    public void incluir(Usuario obj)  {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            
        }
        
    }

    public List<Usuario> listar() throws Exception {
        return em.createNamedQuery("Usuario.findAll").getResultList();
    }
    
    public void alterar(Usuario obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } 
    }
    
    public Usuario realizarLogin(String login, String senha)
    {
        TypedQuery<Usuario> query= em.createNamedQuery("Usuario.realizarLogin",Usuario.class);
        query.setParameter("login", login);
        query.setParameter("senha", senha);
        Usuario usuario;
        try{
            usuario = query.getSingleResult();
        }catch(Exception e){
            usuario=null;
        }
        return usuario;
    }
    
    public void excluir(Usuario obj) throws Exception {
        
        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } 
    }
     public Usuario buscarPorChavePrimaria(Integer usuario){
        return em.find(Usuario.class, usuario);
    
}
    public void fechaEmf() {
        em.close();
        Conexao.closeConexao();
    }
}
