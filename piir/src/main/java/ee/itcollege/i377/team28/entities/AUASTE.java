package ee.itcollege.i377.team28.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.i377.team28.entities.AUASTME_MUUTMINE;
import java.util.Collection;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Entity implementation class for Entity: AUASTE
 *
 */
@Entity
@RooToString
@RooEntity

public class AUASTE implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long auaste_id;
	@Size(min=1,max=60)
	private String nimetus;
	private String kommentaar;
	@NotNull
	@Size(min=1,max=32)
	private String avaja;
	@NotNull
	private Date avatud;
	@NotNull
	@Size(min=1,max=32)
	private String muutja;
	@NotNull
	private Date muudetud;
	@Size(min=1,max=32)
	private String sulgeja;
	@NotNull
	private Date suletud;
	private static final long serialVersionUID = 1L;
	@OneToMany(mappedBy = "aUASTE")
	private Collection<AUASTME_MUUTMINE> aUASTME_MUUTMINE;

	public AUASTE() {
		super();
	}   
	public Long getAuaste_id() {
		return this.auaste_id;
	}

	public void setAuaste_id(Long auaste_id) {
		this.auaste_id = auaste_id;
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
	public Collection<AUASTME_MUUTMINE> getAUASTME_MUUTMINE() {
	    return aUASTME_MUUTMINE;
	}
	public void setAUASTME_MUUTMINE(Collection<AUASTME_MUUTMINE> param) {
	    this.aUASTME_MUUTMINE = param;
	}
   
}
