  package ee.itcollege.i377.team28.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.i377.team28.entities.RIIK;
import ee.itcollege.i377.team28.entities.PIIRIRIKKUJA;
import javax.persistence.ManyToOne;

/**
 * Entity implementation class for Entity: KODAKONDSUS
 *
 */
@Entity
@RooToString
@RooEntity
public class KODAKONDSUS implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long kodakondsus_id;
	private String isikukood;
	private Date alates;
	private Date kuni;
	private String kommentaar;
	private String avaja;
	private Date avatud;
	private String muutja;
	private Date muudetud;
	private String sulgeja;
	private Date suletud;
	private static final long serialVersionUID = 1L;
	@ManyToOne
	private RIIK rIIK;
	@ManyToOne
	private PIIRIRIKKUJA pIIRIRIKKUJA;

	public KODAKONDSUS() {
		super();
	}   
	public Long getKodakondsus_id() {
		return this.kodakondsus_id;
	}

	public void setKodakondsus_id(Long kodakondsus_id) {
		this.kodakondsus_id = kodakondsus_id;
	}   
	public String getIsikukood() {
		return this.isikukood;
	}

	public void setIsikukood(String isikukood) {
		this.isikukood = isikukood;
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
	public RIIK getRIIK() {
	    return rIIK;
	}
	public void setRIIK(RIIK param) {
	    this.rIIK = param;
	}
	public PIIRIRIKKUJA getPIIRIRIKKUJA() {
	    return pIIRIRIKKUJA;
	}
	public void setPIIRIRIKKUJA(PIIRIRIKKUJA param) {
	    this.pIIRIRIKKUJA = param;
	}
   
}
