package ee.itcollege.i377.team28.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.i377.team28.entities.RUUMIYKSUS;
import java.util.Collection;
import javax.persistence.OneToMany;

/**
 * Entity implementation class for Entity: RUUMIYKSUSE_LIIK
 *
 */
@Entity
@RooToString
@RooEntity
public class RUUMIYKSUSE_LIIK implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long ruumiyksuse_liik_id;
	private String kood;
	private String nimetus;
	private String kommentaar;
	private String avaja;
	private Date avatud;
	private String muutja;
	private Date muudetud;
	private String sulgeja;
	private Date suletud;
	private static final long serialVersionUID = 1L;
	@OneToMany(mappedBy = "rUUMIYKSUSE_LIIK")
	private Collection<RUUMIYKSUS> rUUMIYKSUS;

	public RUUMIYKSUSE_LIIK() {
		super();
	}   
	public Long getRuumiyksuse_liik_id() {
		return this.ruumiyksuse_liik_id;
	}

	public void setRuumiyksuse_liik_id(Long ruumiyksuse_liik_id) {
		this.ruumiyksuse_liik_id = ruumiyksuse_liik_id;
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
	public Collection<RUUMIYKSUS> getRUUMIYKSUS() {
	    return rUUMIYKSUS;
	}
	public void setRUUMIYKSUS(Collection<RUUMIYKSUS> param) {
	    this.rUUMIYKSUS = param;
	}
   
}
