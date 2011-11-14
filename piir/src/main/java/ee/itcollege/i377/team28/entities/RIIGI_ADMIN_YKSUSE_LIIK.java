package ee.itcollege.i377.team28.entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.tostring.RooToString;
import ee.itcollege.i377.team28.entities.RIIGI_ADMIN_YKSUS;

/**
 * Entity implementation class for Entity: RIIGI_ADMIN_YKSUSE_LIIK
 *
 */
@Entity
@RooToString
@RooEntity
public class RIIGI_ADMIN_YKSUSE_LIIK implements Serializable {

	   
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long riigi_admin_yksuse_liik_id;
	private String kood;
	private String nimetus;
	private String kommentaar;
	private Date alates;
	private Date kuni;
	private String avaja;
	private Date avatud;
	private String muutja;
	private Date muudetud;
	private String sulgeja;
	private Date suletud;
	private static final long serialVersionUID = 1L;
	@OneToMany(mappedBy = "rIIGI_ADMIN_YKSUSE_LIIK_1")
	private Collection<VOIMALIK_ALLUVUS> vOIMALIK_ALLUVUS_1;
	@OneToMany(mappedBy = "rIIGI_ADMIN_YKSUSE_LIIK")
	private Collection<RIIGI_ADMIN_YKSUS> rIIGI_ADMIN_YKSUS;
	public RIIGI_ADMIN_YKSUSE_LIIK() {
		super();
	}   
	public Long getRiigi_admin_yksuse_liik_id() {
		return this.riigi_admin_yksuse_liik_id;
	}

	public void setRiigi_admin_yksuse_liik_id(Long riigi_admin_yksuse_liik_id) {
		this.riigi_admin_yksuse_liik_id = riigi_admin_yksuse_liik_id;
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
	public Collection<VOIMALIK_ALLUVUS> getVOIMALIK_ALLUVUS_1() {
	    return vOIMALIK_ALLUVUS_1;
	}
	public void setVOIMALIK_ALLUVUS_1(Collection<VOIMALIK_ALLUVUS> param) {
	    this.vOIMALIK_ALLUVUS_1 = param;
	}
	public Collection<RIIGI_ADMIN_YKSUS> getRIIGI_ADMIN_YKSUS() {
	    return rIIGI_ADMIN_YKSUS;
	}
	public void setRIIGI_ADMIN_YKSUS(Collection<RIIGI_ADMIN_YKSUS> param) {
	    this.rIIGI_ADMIN_YKSUS = param;
	}
   
}
