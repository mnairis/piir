package ee.itcollege.i377.team28.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.i377.team28.entities.PIIRIPUNKT_ALLUVUS;
import java.util.Collection;
import javax.persistence.OneToMany;
import ee.itcollege.i377.team28.entities.PIIRILOIGU_HALDAJA;
import ee.itcollege.i377.team28.entities.PIIRIPUNKT_ORG_YKSUS;
import ee.itcollege.i377.team28.entities.VAHTKOND;
import ee.itcollege.i377.team28.entities.AMET_PIIRIPUNKTIS;
import javax.persistence.ManyToMany;
import ee.itcollege.i377.team28.entities.PIIRIPUNKTI_ALLUVUS;

/**
 * Entity implementation class for Entity: PIIRIPUNKT
 *
 */
@Entity
@RooToString
@RooEntity
public class PIIRIPUNKT implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long piiripunkt_id;
	private String kood;
	private String nimetus;
	private double GPS_longitude;
	private double GPS_latitude;
	private double korgus_merepinnast;
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
	@OneToMany(mappedBy = "pIIRIPUNKT")
	private Collection<PIIRIPUNKT_ALLUVUS> pIIRIPUNKT_ALLUVUS;
	@OneToMany(mappedBy = "pIIRIPUNKT")
	private Collection<PIIRILOIGU_HALDAJA> pIIRILOIGU_HALDAJA;
	@OneToMany(mappedBy = "pIIRIPUNKT")
	private Collection<PIIRIPUNKT_ORG_YKSUS> pIIRIPUNKT_ORG_YKSUS;
	@OneToMany(mappedBy = "pIIRIPUNKT")
	private Collection<VAHTKOND> vAHTKOND;
	@ManyToMany(mappedBy = "pIIRIPUNKT")
	private Collection<AMET_PIIRIPUNKTIS> aMET_PIIRIPUNKTIS;
	@OneToMany(mappedBy = "pIIRIPUNKT")
	private Collection<PIIRIPUNKTI_ALLUVUS> pIIRIPUNKTI_ALLUVUS;

	public PIIRIPUNKT() {
		super();
	}   
	public Long getPiiripunkt_id() {
		return this.piiripunkt_id;
	}

	public void setPiiripunkt_id(Long piiripunkt_id) {
		this.piiripunkt_id = piiripunkt_id;
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
	public double getGPS_longitude() {
		return this.GPS_longitude;
	}

	public void setGPS_longitude(double GPS_longitude) {
		this.GPS_longitude = GPS_longitude;
	}   
	public double getGPS_latitude() {
		return this.GPS_latitude;
	}

	public void setGPS_latitude(double GPS_latitude) {
		this.GPS_latitude = GPS_latitude;
	}   
	public double getKorgus_merepinnast() {
		return this.korgus_merepinnast;
	}

	public void setKorgus_merepinnast(double korgus_merepinnast) {
		this.korgus_merepinnast = korgus_merepinnast;
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
	public Collection<PIIRIPUNKT_ALLUVUS> getPIIRIPUNKT_ALLUVUS() {
	    return pIIRIPUNKT_ALLUVUS;
	}
	public void setPIIRIPUNKT_ALLUVUS(Collection<PIIRIPUNKT_ALLUVUS> param) {
	    this.pIIRIPUNKT_ALLUVUS = param;
	}
	public Collection<PIIRILOIGU_HALDAJA> getPIIRILOIGU_HALDAJA() {
	    return pIIRILOIGU_HALDAJA;
	}
	public void setPIIRILOIGU_HALDAJA(Collection<PIIRILOIGU_HALDAJA> param) {
	    this.pIIRILOIGU_HALDAJA = param;
	}
	public Collection<PIIRIPUNKT_ORG_YKSUS> getPIIRIPUNKT_ORG_YKSUS() {
	    return pIIRIPUNKT_ORG_YKSUS;
	}
	public void setPIIRIPUNKT_ORG_YKSUS(Collection<PIIRIPUNKT_ORG_YKSUS> param) {
	    this.pIIRIPUNKT_ORG_YKSUS = param;
	}
	public Collection<VAHTKOND> getVAHTKOND() {
	    return vAHTKOND;
	}
	public void setVAHTKOND(Collection<VAHTKOND> param) {
	    this.vAHTKOND = param;
	}
	public Collection<AMET_PIIRIPUNKTIS> getAMET_PIIRIPUNKTIS() {
	    return aMET_PIIRIPUNKTIS;
	}
	public void setAMET_PIIRIPUNKTIS(Collection<AMET_PIIRIPUNKTIS> param) {
	    this.aMET_PIIRIPUNKTIS = param;
	}
	public Collection<PIIRIPUNKTI_ALLUVUS> getPIIRIPUNKTI_ALLUVUS() {
	    return pIIRIPUNKTI_ALLUVUS;
	}
	public void setPIIRIPUNKTI_ALLUVUS(Collection<PIIRIPUNKTI_ALLUVUS> param) {
	    this.pIIRIPUNKTI_ALLUVUS = param;
	}
   
}
