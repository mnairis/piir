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
import ee.itcollege.i377.team28.entities.PIIRIVALVUR;

/**
 * Entity implementation class for Entity: SEOTUD_KONTAKTISIK
 *
 */
@Entity
@RooToString
@RooEntity
public class SEOTUD_KONTAKTISIK implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long seotud_kontaktisik_id;
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
	private SUGULUSE_ROLLI_LIIT sUGULUSE_ROLLI_LIIT;
	@ManyToOne
	private PIIRIVALVUR pIIRIVALVUR;
	public SEOTUD_KONTAKTISIK() {
		super();
	}   
	public Long getSeotud_kontaktisik_id() {
		return this.seotud_kontaktisik_id;
	}

	public void setSeotud_kontaktisik_id(Long seotud_kontaktisik_id) {
		this.seotud_kontaktisik_id = seotud_kontaktisik_id;
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
	public SUGULUSE_ROLLI_LIIT getSUGULUSE_ROLLI_LIIT() {
	    return sUGULUSE_ROLLI_LIIT;
	}
	public void setSUGULUSE_ROLLI_LIIT(SUGULUSE_ROLLI_LIIT param) {
	    this.sUGULUSE_ROLLI_LIIT = param;
	}
	public PIIRIVALVUR getPIIRIVALVUR() {
	    return pIIRIVALVUR;
	}
	public void setPIIRIVALVUR(PIIRIVALVUR param) {
	    this.pIIRIVALVUR = param;
	}
   
}
