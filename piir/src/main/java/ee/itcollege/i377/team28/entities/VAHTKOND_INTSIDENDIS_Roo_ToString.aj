// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import java.lang.String;

privileged aspect VAHTKOND_INTSIDENDIS_Roo_ToString {
    
    public String VAHTKOND_INTSIDENDIS.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Alates: ").append(getAlates()).append(", ");
        sb.append("Avaja: ").append(getAvaja()).append(", ");
        sb.append("Avatud: ").append(getAvatud()).append(", ");
        sb.append("INTSIDENT: ").append(getINTSIDENT()).append(", ");
        sb.append("Kirjeldus: ").append(getKirjeldus()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Kuni: ").append(getKuni()).append(", ");
        sb.append("Muudetud: ").append(getMuudetud()).append(", ");
        sb.append("Muutja: ").append(getMuutja()).append(", ");
        sb.append("PIIRIVALVUR_INTSIDENDIS: ").append(getPIIRIVALVUR_INTSIDENDIS() == null ? "null" : getPIIRIVALVUR_INTSIDENDIS().size()).append(", ");
        sb.append("Suletud: ").append(getSuletud()).append(", ");
        sb.append("Sulgeja: ").append(getSulgeja()).append(", ");
        sb.append("VAHTKOND: ").append(getVAHTKOND()).append(", ");
        sb.append("Vahtkond_intsidendis_id: ").append(getVahtkond_intsidendis_id()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
