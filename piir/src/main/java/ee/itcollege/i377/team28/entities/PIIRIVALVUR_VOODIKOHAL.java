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
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Entity implementation class for Entity: PIIRIVALVUR_VOODIKOHAL
 *
 */
@Entity
@RooToString
@RooEntity
public class PIIRIVALVUR_VOODIKOHAL implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long piirivalvur_voodikohal_id;
	private Date alates;
	private Date kuni;
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
	@ManyToOne
	private PIIRIVALVUR pIIRIVALVUR;

	public PIIRIVALVUR_VOODIKOHAL() {
		super();
	}   
	public Long getPiirivalvur_voodikohal_id() {
		return this.piirivalvur_voodikohal_id;
	}

	public void setPiirivalvur_voodikohal_id(Long piirivalvur_voodikohal_id) {
		this.piirivalvur_voodikohal_id = piirivalvur_voodikohal_id;
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
	public PIIRIVALVUR getPIIRIVALVUR() {
	    return pIIRIVALVUR;
	}
	public void setPIIRIVALVUR(PIIRIVALVUR param) {
	    this.pIIRIVALVUR = param;
	}
   
}
