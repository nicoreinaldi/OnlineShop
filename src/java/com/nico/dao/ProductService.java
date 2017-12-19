package com.nico.dao;

import com.nico.model.Product;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProductService {
    static final Logger logger = Logger.getLogger(ProductService.class.getName());
    @PersistenceUnit
    EntityManagerFactory emf;
    
  //  @PersistenceContext
    private EntityManager em;       

    public ProductService() {
    }
    public EntityManager getEm() {
        return em;
    }
    public void setEm(EntityManager em) {
        this.em = em;
    }
    @Transactional
    public void register(Product cus) {
     
        this.em.persist(cus);
    }
    public List<Product> findAll() {
        em = emf.createEntityManager();
        List<Product> products;
        products = this.em.createNamedQuery("Product.findAll").getResultList();
        return products;
    }
    
    public Product findById(Integer productId) {
        return em.find(Product.class, productId);
    }
    
    public List<Product> findByKategori(String kategori){
//        Query query =
  //      query.setParameter("kategori", kategori);
        em = emf.createEntityManager();
        List<Product> lists;
        lists = this.em.createNamedQuery("Product.findByKategori").setParameter("kategori", kategori).getResultList();
        return lists;
//        return em.find(Product.class, kategori);
    }
}
