package ee.itcollege.i377.team28.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.i377.team28.entities.AMET_PIIRIPUNKTIS;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR;
import javax.persistence.ManyToOne;

/**
 * Entity implementation class for Entity: PIIRIVALVUR_PIIRIPUNKTIS
 *
 */
@Entity
@RooToString
@RooEntity

public class PIIRIVALVUR_PIIRIPUNKTIS implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long piirivalvur_piiripunktis_id;
	private Date alates;
	private Date kuni;
	private double koormus;
	private String kommentaar;
	private String avaja;
	private Date avatud;
	private String muutja;
	private Date muudetud;
	private Date suletud;
	private String sulgeja;
	private static final long serialVersionUID = 1L;
	@ManyToOne
	private AMET_PIIRIPUNKTIS aMET_PIIRIPUNKTIS;
	@ManyToOne
	private PIIRIVALVUR pIIRIVALVUR;

	public PIIRIVALVUR_PIIRIPUNKTIS() {
		super();
	}   
	public Long getPiirivalvur_piiripunktis_id() {
		return this.piirivalvur_piiripunktis_id;
	}

	public void setPiirivalvur_piiripunktis_id(Long piirivalvur_piiripunktis_id) {
		this.piirivalvur_piiripunktis_id = piirivalvur_piiripunktis_id;
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
	public double getKoormus() {
		return this.koormus;
	}

	public void setKoormus(double koormus) {
		this.koormus = koormus;
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
	public Date getSuletud() {
		return this.suletud;
	}

	public void setSuletud(Date suletud) {
		this.suletud = suletud;
	}   
	public String getSulgeja() {
		return this.sulgeja;
	}

	public void setSulgeja(String sulgeja) {
		this.sulgeja = sulgeja;
	}
	public AMET_PIIRIPUNKTIS getAMET_PIIRIPUNKTIS() {
	    return aMET_PIIRIPUNKTIS;
	}
	public void setAMET_PIIRIPUNKTIS(AMET_PIIRIPUNKTIS param) {
	    this.aMET_PIIRIPUNKTIS = param;
	}
	public PIIRIVALVUR getPIIRIVALVUR() {
	    return pIIRIVALVUR;
	}
	public void setPIIRIVALVUR(PIIRIVALVUR param) {
	    this.pIIRIVALVUR = param;
	}
   
}
