// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import ee.itcollege.i377.team28.entities.PIIRIPUNKT;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PIIRIPUNKT_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager PIIRIPUNKT.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer PIIRIPUNKT.version;
    
    public Integer PIIRIPUNKT.getVersion() {
        return this.version;
    }
    
    public void PIIRIPUNKT.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void PIIRIPUNKT.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PIIRIPUNKT.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PIIRIPUNKT attached = PIIRIPUNKT.findPIIRIPUNKT(this.piiripunkt_id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PIIRIPUNKT.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PIIRIPUNKT.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PIIRIPUNKT PIIRIPUNKT.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PIIRIPUNKT merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager PIIRIPUNKT.entityManager() {
        EntityManager em = new PIIRIPUNKT().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PIIRIPUNKT.countPIIRIPUNKTS() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PIIRIPUNKT o", Long.class).getSingleResult();
    }
    
    public static List<PIIRIPUNKT> PIIRIPUNKT.findAllPIIRIPUNKTS() {
        return entityManager().createQuery("SELECT o FROM PIIRIPUNKT o", PIIRIPUNKT.class).getResultList();
    }
    
    public static PIIRIPUNKT PIIRIPUNKT.findPIIRIPUNKT(Long piiripunkt_id) {
        if (piiripunkt_id == null) return null;
        return entityManager().find(PIIRIPUNKT.class, piiripunkt_id);
    }
    
    public static List<PIIRIPUNKT> PIIRIPUNKT.findPIIRIPUNKTEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PIIRIPUNKT o", PIIRIPUNKT.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}