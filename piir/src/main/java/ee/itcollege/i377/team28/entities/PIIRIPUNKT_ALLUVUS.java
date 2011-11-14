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
import ee.itcollege.i377.team28.entities.PIIRIPUNKT;

/**
 * Entity implementation class for Entity: PIIRIPUNKT_ALLUVUS
 * 
 */
@Entity
@RooToString
@RooEntity
public class PIIRIPUNKT_ALLUVUS implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long piiripunkt_alluvus_ID;
	private String alates;
	private String kuni;
	private String kommentaar;
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
	private PIIRIPUNKT pIIRIPUNKT;
	public PIIRIPUNKT_ALLUVUS() {
		super();
	}

	public Long getPiiripunkt_alluvus_ID() {
		return this.piiripunkt_alluvus_ID;
	}

	public void setPiiripunkt_alluvus_ID(Long piiripunkt_alluvus_ID) {
		this.piiripunkt_alluvus_ID = piiripunkt_alluvus_ID;
	}

	public String getAlates() {
		return this.alates;
	}

	public void setAlates(String alates) {
		this.alates = alates;
	}

	public String getKuni() {
		return this.kuni;
	}

	public void setKuni(String kuni) {
		this.kuni = kuni;
	}

	public String getKommentaar() {
		return this.kommentaar;
	}

	public void setKommentaar(String kommentaar) {
		this.kommentaar = kommentaar;
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

	public PIIRIPUNKT getPIIRIPUNKT() {
	    return pIIRIPUNKT;
	}

	public void setPIIRIPUNKT(PIIRIPUNKT param) {
	    this.pIIRIPUNKT = param;
	}

}
