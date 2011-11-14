package ee.itcollege.i377.team28.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR;
import ee.itcollege.i377.team28.entities.AMET_VAEOSAS;
import javax.persistence.ManyToOne;

/**
 * Entity implementation class for Entity: PIIRIVALVUR_VAEOSAS
 *
 */
@Entity
@RooToString
@RooEntity
public class PIIRIVALVUR_VAEOSAS implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long piirivalvur_vaeosas_id;
	private Date alates;
	private Date kuni;
	private double koormus;
	private String kommentaar;
	private String avaja;
	private Date avatud;
	private String muutja;
	private Date muudetud;
	private String sulgeja;
	private Date suletud;
	private static final long serialVersionUID = 1L;
	@ManyToOne
	private PIIRIVALVUR pIIRIVALVUR;
	@ManyToOne
	private AMET_VAEOSAS aMET_VAEOSAS;

	public PIIRIVALVUR_VAEOSAS() {
		super();
	}   
	public Long getPiirivalvur_vaeosas_id() {
		return this.piirivalvur_vaeosas_id;
	}

	public void setPiirivalvur_vaeosas_id(Long piirivalvur_vaeosas_id) {
		this.piirivalvur_vaeosas_id = piirivalvur_vaeosas_id;
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
	public PIIRIVALVUR getPIIRIVALVUR() {
	    return pIIRIVALVUR;
	}
	public void setPIIRIVALVUR(PIIRIVALVUR param) {
	    this.pIIRIVALVUR = param;
	}
	public AMET_VAEOSAS getAMET_VAEOSAS() {
	    return aMET_VAEOSAS;
	}
	public void setAMET_VAEOSAS(AMET_VAEOSAS param) {
	    this.aMET_VAEOSAS = param;
	}
   
}
