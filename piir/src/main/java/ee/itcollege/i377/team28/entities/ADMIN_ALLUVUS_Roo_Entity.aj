// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import ee.itcollege.i377.team28.entities.ADMIN_ALLUVUS;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ADMIN_ALLUVUS_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager ADMIN_ALLUVUS.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer ADMIN_ALLUVUS.version;
    
    public Integer ADMIN_ALLUVUS.getVersion() {
        return this.version;
    }
    
    public void ADMIN_ALLUVUS.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void ADMIN_ALLUVUS.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ADMIN_ALLUVUS.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ADMIN_ALLUVUS attached = ADMIN_ALLUVUS.findADMIN_ALLUVUS(this.admin_alluvus_id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ADMIN_ALLUVUS.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ADMIN_ALLUVUS.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ADMIN_ALLUVUS ADMIN_ALLUVUS.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ADMIN_ALLUVUS merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager ADMIN_ALLUVUS.entityManager() {
        EntityManager em = new ADMIN_ALLUVUS().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ADMIN_ALLUVUS.countADMIN_ALLUVUS() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ADMIN_ALLUVUS o", Long.class).getSingleResult();
    }
    
    public static List<ADMIN_ALLUVUS> ADMIN_ALLUVUS.findAllADMIN_ALLUVUS() {
        return entityManager().createQuery("SELECT o FROM ADMIN_ALLUVUS o", ADMIN_ALLUVUS.class).getResultList();
    }
    
    public static ADMIN_ALLUVUS ADMIN_ALLUVUS.findADMIN_ALLUVUS(Long admin_alluvus_id) {
        if (admin_alluvus_id == null) return null;
        return entityManager().find(ADMIN_ALLUVUS.class, admin_alluvus_id);
    }
    
    public static List<ADMIN_ALLUVUS> ADMIN_ALLUVUS.findADMIN_ALLUVUSEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ADMIN_ALLUVUS o", ADMIN_ALLUVUS.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
