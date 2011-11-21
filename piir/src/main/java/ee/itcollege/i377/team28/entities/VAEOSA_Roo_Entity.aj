// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import ee.itcollege.i377.team28.entities.VAEOSA;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VAEOSA_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager VAEOSA.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer VAEOSA.version;
    
    public Integer VAEOSA.getVersion() {
        return this.version;
    }
    
    public void VAEOSA.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void VAEOSA.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void VAEOSA.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            VAEOSA attached = VAEOSA.findVAEOSA(this.vaeosa_ID_id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void VAEOSA.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void VAEOSA.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public VAEOSA VAEOSA.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        VAEOSA merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager VAEOSA.entityManager() {
        EntityManager em = new VAEOSA().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long VAEOSA.countVAEOSAS() {
        return entityManager().createQuery("SELECT COUNT(o) FROM VAEOSA o", Long.class).getSingleResult();
    }
    
    public static List<VAEOSA> VAEOSA.findAllVAEOSAS() {
        return entityManager().createQuery("SELECT o FROM VAEOSA o", VAEOSA.class).getResultList();
    }
    
    public static VAEOSA VAEOSA.findVAEOSA(Long vaeosa_ID_id) {
        if (vaeosa_ID_id == null) return null;
        return entityManager().find(VAEOSA.class, vaeosa_ID_id);
    }
    
    public static List<VAEOSA> VAEOSA.findVAEOSAEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM VAEOSA o", VAEOSA.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}