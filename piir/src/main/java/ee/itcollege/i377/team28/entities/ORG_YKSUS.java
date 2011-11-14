package ee.itcollege.i377.team28.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.i377.team28.entities.ORG_YKSUS;
import java.util.Collection;
import javax.persistence.OneToMany;

/**
 * Entity implementation class for Entity: ORG_YKSUS
 *
 */
@Entity
@RooToString
@RooEntity
public class ORG_YKSUS implements Serializable {   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long org_yksus_ID;
	private String kood;
	private String nimetus;
	private String kommentaar;
	private Date alates;
	private Date kuni;
	private String avaja;
	private Date avatud;
	private String muutja;
	private Date muudetud;
	private String sulgeja;
	private Date suletud;
	private static final long serialVersionUID = 1L;
	@ManyToOne
	private VAEOSA vAEOSA;
	@ManyToOne
	private ORG_YKSUS oRG_YKSUS;
	@OneToMany(mappedBy = "oRG_YKSUS")
	private Collection<ORG_YKSUS> oRG_YKSUS_1;

	public ORG_YKSUS() {
		super();
	}   
	public Long getOrg_yksus_ID() {
		return this.org_yksus_ID;
	}

	public void setOrg_yksus_ID(Long org_yksus_ID) {
		this.org_yksus_ID = org_yksus_ID;
	}   
	public String getKood() {
		return this.kood;
	}

	public void setKood(String kood) {
		this.kood = kood;
	}   
	public String getNimetus() {
		return this.nimetus;
	}

	public void setNimetus(String nimetus) {
		this.nimetus = nimetus;
	}   
	public String getKommentaar() {
		return this.kommentaar;
	}

	public void setKommentaar(String kommentaar) {
		this.kommentaar = kommentaar;
	}   
	public Date getAlates() {
		return this.alates;
	}

	public void setAlates(Date alates) {
		this.alates = alates;
	}   
	public Date getKuni() {
		return this.kuni;
	}

	public void setKuni(Date kuni) {
		this.kuni = kuni;
	}   
	public String getAvaja() {
		return this.avaja;
	}

	public void setAvaja(String avaja) {
		this.avaja = avaja;
	}   
	public Date getAvatud() {
		return this.avatud;
	}

	public void setAvatud(Date avatud) {
		this.avatud = avatud;
	}   
	public String getMuutja() {
		return this.muutja;
	}

	public void setMuutja(String muutja) {
		this.muutja = muutja;
	}   
	public Date getMuudetud() {
		return this.muudetud;
	}

	public void setMuudetud(Date muudetud) {
		this.muudetud = muudetud;
	}   
	public String getSulgeja() {
		return this.sulgeja;
	}

	public void setSulgeja(String sulgeja) {
		this.sulgeja = sulgeja;
	}   
	public Date getSuletud() {
		return this.suletud;
	}

	public void setSuletud(Date suletud) {
		this.suletud = suletud;
	}
	public VAEOSA getVAEOSA() {
	    return vAEOSA;
	}
	public void setVAEOSA(VAEOSA param) {
	    this.vAEOSA = param;
	}
	public ORG_YKSUS getORG_YKSUS() {
	    return oRG_YKSUS;
	}
	public void setORG_YKSUS(ORG_YKSUS param) {
	    this.oRG_YKSUS = param;
	}
	public Collection<ORG_YKSUS> getORG_YKSUS_1() {
	    return oRG_YKSUS_1;
	}
	public void setORG_YKSUS_1(Collection<ORG_YKSUS> param) {
	    this.oRG_YKSUS_1 = param;
	}
   
}
