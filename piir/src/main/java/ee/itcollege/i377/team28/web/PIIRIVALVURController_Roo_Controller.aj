// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.web;

import ee.itcollege.i377.team28.entities.AUASTME_MUUTMINE;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR;
import ee.itcollege.i377.team28.entities.PIIRIVALVURI_KONTAKT;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR_INTSIDENDIS;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR_PIIRIPUNKTIS;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR_VAEOSAS;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR_VOODIKOHAL;
import ee.itcollege.i377.team28.entities.SEOTUD_KONTAKTISIK;
import ee.itcollege.i377.team28.entities.VAHTKONNA_LIIGE;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PIIRIVALVURController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String PIIRIVALVURController.create(@Valid PIIRIVALVUR PIIRIVALVUR, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("PIIRIVALVUR", PIIRIVALVUR);
            addDateTimeFormatPatterns(uiModel);
            return "piirivalvurs/create";
        }
        uiModel.asMap().clear();
        PIIRIVALVUR.persist();
        return "redirect:/piirivalvurs/" + encodeUrlPathSegment(PIIRIVALVUR.getPiirivalvur_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String PIIRIVALVURController.createForm(Model uiModel) {
        uiModel.addAttribute("PIIRIVALVUR", new PIIRIVALVUR());
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvurs/create";
    }
    
    @RequestMapping(value = "/{piirivalvur_id}", method = RequestMethod.GET)
    public String PIIRIVALVURController.show(@PathVariable("piirivalvur_id") Long piirivalvur_id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("piirivalvur", PIIRIVALVUR.findPIIRIVALVUR(piirivalvur_id));
        uiModel.addAttribute("itemId", piirivalvur_id);
        return "piirivalvurs/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String PIIRIVALVURController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("piirivalvurs", PIIRIVALVUR.findPIIRIVALVUREntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) PIIRIVALVUR.countPIIRIVALVURS() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("piirivalvurs", PIIRIVALVUR.findAllPIIRIVALVURS());
        }
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvurs/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String PIIRIVALVURController.update(@Valid PIIRIVALVUR PIIRIVALVUR, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("PIIRIVALVUR", PIIRIVALVUR);
            addDateTimeFormatPatterns(uiModel);
            return "piirivalvurs/update";
        }
        uiModel.asMap().clear();
        PIIRIVALVUR.merge();
        return "redirect:/piirivalvurs/" + encodeUrlPathSegment(PIIRIVALVUR.getPiirivalvur_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{piirivalvur_id}", params = "form", method = RequestMethod.GET)
    public String PIIRIVALVURController.updateForm(@PathVariable("piirivalvur_id") Long piirivalvur_id, Model uiModel) {
        uiModel.addAttribute("PIIRIVALVUR", PIIRIVALVUR.findPIIRIVALVUR(piirivalvur_id));
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvurs/update";
    }
    
    @RequestMapping(value = "/{piirivalvur_id}", method = RequestMethod.DELETE)
    public String PIIRIVALVURController.delete(@PathVariable("piirivalvur_id") Long piirivalvur_id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PIIRIVALVUR.findPIIRIVALVUR(piirivalvur_id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/piirivalvurs";
    }
    
    @ModelAttribute("auastme_muutmines")
    public Collection<AUASTME_MUUTMINE> PIIRIVALVURController.populateAUASTME_MUUTMINEs() {
        return AUASTME_MUUTMINE.findAllAUASTME_MUUTMINEs();
    }
    
    @ModelAttribute("piirivalvurs")
    public Collection<PIIRIVALVUR> PIIRIVALVURController.populatePIIRIVALVURS() {
        return PIIRIVALVUR.findAllPIIRIVALVURS();
    }
    
    @ModelAttribute("piirivalvuri_kontakts")
    public Collection<PIIRIVALVURI_KONTAKT> PIIRIVALVURController.populatePIIRIVALVURI_KONTAKTs() {
        return PIIRIVALVURI_KONTAKT.findAllPIIRIVALVURI_KONTAKTs();
    }
    
    @ModelAttribute("piirivalvur_intsidendiss")
    public Collection<PIIRIVALVUR_INTSIDENDIS> PIIRIVALVURController.populatePIIRIVALVUR_INTSIDENDISs() {
        return PIIRIVALVUR_INTSIDENDIS.findAllPIIRIVALVUR_INTSIDENDISs();
    }
    
    @ModelAttribute("piirivalvur_piiripunktiss")
    public Collection<PIIRIVALVUR_PIIRIPUNKTIS> PIIRIVALVURController.populatePIIRIVALVUR_PIIRIPUNKTISs() {
        return PIIRIVALVUR_PIIRIPUNKTIS.findAllPIIRIVALVUR_PIIRIPUNKTISs();
    }
    
    @ModelAttribute("piirivalvur_vaeosass")
    public Collection<PIIRIVALVUR_VAEOSAS> PIIRIVALVURController.populatePIIRIVALVUR_VAEOSASs() {
        return PIIRIVALVUR_VAEOSAS.findAllPIIRIVALVUR_VAEOSASs();
    }
    
    @ModelAttribute("piirivalvur_voodikohals")
    public Collection<PIIRIVALVUR_VOODIKOHAL> PIIRIVALVURController.populatePIIRIVALVUR_VOODIKOHALs() {
        return PIIRIVALVUR_VOODIKOHAL.findAllPIIRIVALVUR_VOODIKOHALs();
    }
    
    @ModelAttribute("seotud_kontaktisiks")
    public Collection<SEOTUD_KONTAKTISIK> PIIRIVALVURController.populateSEOTUD_KONTAKTISIKs() {
        return SEOTUD_KONTAKTISIK.findAllSEOTUD_KONTAKTISIKs();
    }
    
    @ModelAttribute("vahtkonna_liiges")
    public Collection<VAHTKONNA_LIIGE> PIIRIVALVURController.populateVAHTKONNA_LIIGEs() {
        return VAHTKONNA_LIIGE.findAllVAHTKONNA_LIIGEs();
    }
    
    void PIIRIVALVURController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("PIIRIVALVUR_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("PIIRIVALVUR_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("PIIRIVALVUR_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String PIIRIVALVURController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
