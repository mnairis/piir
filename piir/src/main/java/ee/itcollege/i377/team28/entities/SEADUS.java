package ee.itcollege.i377.team28.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.i377.team28.entities.SEADUSE_PUNKT;
import java.util.Collection;
import javax.persistence.OneToMany;

/**
 * Entity implementation class for Entity: SEADUS
 *
 */
@Entity
@RooToString
@RooEntity
public class SEADUS implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long seadus_id;
	private String kood;
	private String nimetus;
	private String kehtiv_alates;
	private String kehtiv_kuni;
	private String kommentaar;
	private String avaja;
	private Date avatud;
	private String muutja;
	private Date muudetud;
	private String sulgeja;
	private Date suletud;
	private static final long serialVersionUID = 1L;
	@OneToMany(mappedBy = "sEADUS")
	private Collection<SEADUSE_PUNKT> sEADUSE_PUNKT;

	public SEADUS() {
		super();
	}   
	public Long getSeadus_id() {
		return this.seadus_id;
	}

	public void setSeadus_id(Long seadus_id) {
		this.seadus_id = seadus_id;
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
	public String getKehtiv_alates() {
		return this.kehtiv_alates;
	}

	public void setKehtiv_alates(String kehtiv_alates) {
		this.kehtiv_alates = kehtiv_alates;
	}   
	public String getKehtiv_kuni() {
		return this.kehtiv_kuni;
	}

	public void setKehtiv_kuni(String kehtiv_kuni) {
		this.kehtiv_kuni = kehtiv_kuni;
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
	public Collection<SEADUSE_PUNKT> getSEADUSE_PUNKT() {
	    return sEADUSE_PUNKT;
	}
	public void setSEADUSE_PUNKT(Collection<SEADUSE_PUNKT> param) {
	    this.sEADUSE_PUNKT = param;
	}
   
}
