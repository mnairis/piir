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

/**
 * Entity implementation class for Entity: VOIMALIK_ALLUVUS
 *
 */
@Entity
@RooToString
@RooEntity
public class VOIMALIK_ALLUVUS implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long voimalik_alluvus_id;
	private String kommentaar;
	private String avaja;
	private Date avatud;
	private String muutja;
	private Date muudetud;
	private String sulgeja;
	private Date suletud;
	private static final long serialVersionUID = 1L;
	@ManyToOne
	private RIIGI_ADMIN_YKSUSE_LIIK rIIGI_ADMIN_YKSUSE_LIIK_1;

	public VOIMALIK_ALLUVUS() {
		super();
	}   
	public Long getVoimalik_alluvus_id() {
		return this.voimalik_alluvus_id;
	}

	public void setVoimalik_alluvus_id(Long voimalik_alluvus_id) {
		this.voimalik_alluvus_id = voimalik_alluvus_id;
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
	public RIIGI_ADMIN_YKSUSE_LIIK getRIIGI_ADMIN_YKSUSE_LIIK_1() {
	    return rIIGI_ADMIN_YKSUSE_LIIK_1;
	}
	public void setRIIGI_ADMIN_YKSUSE_LIIK_1(RIIGI_ADMIN_YKSUSE_LIIK param) {
	    this.rIIGI_ADMIN_YKSUSE_LIIK_1 = param;
	}
   
}
