package ee.itcollege.i377.team28.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.i377.team28.entities.VAEOSA;
import ee.itcollege.i377.team28.entities.AMET;
import javax.persistence.ManyToOne;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR_VAEOSAS;
import java.util.Collection;
import javax.persistence.OneToMany;

/**
 * Entity implementation class for Entity: AMET_VAEOSAS
 *
 */

@Entity
@RooToString
@RooEntity
public class AMET_VAEOSAS implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long amet_vaeosas_id;
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
	private VAEOSA vAEOSA;
	@ManyToOne
	private AMET aMET;
	@OneToMany(mappedBy = "aMET_VAEOSAS")
	private Collection<PIIRIVALVUR_VAEOSAS> pIIRIVALVUR_VAEOSAS;

	public AMET_VAEOSAS() {
		super();
	}   
	public Long getAmet_vaeosas_id() {
		return this.amet_vaeosas_id;
	}

	public void setAmet_vaeosas_id(Long amet_vaeosas_id) {
		this.amet_vaeosas_id = amet_vaeosas_id;
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
	public VAEOSA getVAEOSA() {
	    return vAEOSA;
	}
	public void setVAEOSA(VAEOSA param) {
	    this.vAEOSA = param;
	}
	public AMET getAMET() {
	    return aMET;
	}
	public void setAMET(AMET param) {
	    this.aMET = param;
	}
	public Collection<PIIRIVALVUR_VAEOSAS> getPIIRIVALVUR_VAEOSAS() {
	    return pIIRIVALVUR_VAEOSAS;
	}
	public void setPIIRIVALVUR_VAEOSAS(Collection<PIIRIVALVUR_VAEOSAS> param) {
	    this.pIIRIVALVUR_VAEOSAS = param;
	}
   
}
