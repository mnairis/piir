// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.entities;

import java.lang.String;

privileged aspect PIIRIVALVUR_VAEOSAS_Roo_ToString {
    
    public String PIIRIVALVUR_VAEOSAS.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AMET_VAEOSAS: ").append(getAMET_VAEOSAS()).append(", ");
        sb.append("Alates: ").append(getAlates()).append(", ");
        sb.append("Avaja: ").append(getAvaja()).append(", ");
        sb.append("Avatud: ").append(getAvatud()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Koormus: ").append(getKoormus()).append(", ");
        sb.append("Kuni: ").append(getKuni()).append(", ");
        sb.append("Muudetud: ").append(getMuudetud()).append(", ");
        sb.append("Muutja: ").append(getMuutja()).append(", ");
        sb.append("PIIRIVALVUR: ").append(getPIIRIVALVUR()).append(", ");
        sb.append("Piirivalvur_vaeosas_id: ").append(getPiirivalvur_vaeosas_id()).append(", ");
        sb.append("Suletud: ").append(getSuletud()).append(", ");
        sb.append("Sulgeja: ").append(getSulgeja()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}