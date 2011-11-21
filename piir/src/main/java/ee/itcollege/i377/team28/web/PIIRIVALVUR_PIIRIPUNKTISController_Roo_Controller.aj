// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.web;

import ee.itcollege.i377.team28.entities.AMET_PIIRIPUNKTIS;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR_PIIRIPUNKTIS;
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

privileged aspect PIIRIVALVUR_PIIRIPUNKTISController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String PIIRIVALVUR_PIIRIPUNKTISController.create(@Valid PIIRIVALVUR_PIIRIPUNKTIS PIIRIVALVUR_PIIRIPUNKTIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("PIIRIVALVUR_PIIRIPUNKTIS", PIIRIVALVUR_PIIRIPUNKTIS);
            addDateTimeFormatPatterns(uiModel);
            return "piirivalvur_piiripunktiss/create";
        }
        uiModel.asMap().clear();
        PIIRIVALVUR_PIIRIPUNKTIS.persist();
        return "redirect:/piirivalvur_piiripunktiss/" + encodeUrlPathSegment(PIIRIVALVUR_PIIRIPUNKTIS.getPiirivalvur_piiripunktis_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String PIIRIVALVUR_PIIRIPUNKTISController.createForm(Model uiModel) {
        uiModel.addAttribute("PIIRIVALVUR_PIIRIPUNKTIS", new PIIRIVALVUR_PIIRIPUNKTIS());
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvur_piiripunktiss/create";
    }
    
    @RequestMapping(value = "/{piirivalvur_piiripunktis_id}", method = RequestMethod.GET)
    public String PIIRIVALVUR_PIIRIPUNKTISController.show(@PathVariable("piirivalvur_piiripunktis_id") Long piirivalvur_piiripunktis_id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("piirivalvur_piiripunktis", PIIRIVALVUR_PIIRIPUNKTIS.findPIIRIVALVUR_PIIRIPUNKTIS(piirivalvur_piiripunktis_id));
        uiModel.addAttribute("itemId", piirivalvur_piiripunktis_id);
        return "piirivalvur_piiripunktiss/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String PIIRIVALVUR_PIIRIPUNKTISController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("piirivalvur_piiripunktiss", PIIRIVALVUR_PIIRIPUNKTIS.findPIIRIVALVUR_PIIRIPUNKTISEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) PIIRIVALVUR_PIIRIPUNKTIS.countPIIRIVALVUR_PIIRIPUNKTISs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("piirivalvur_piiripunktiss", PIIRIVALVUR_PIIRIPUNKTIS.findAllPIIRIVALVUR_PIIRIPUNKTISs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvur_piiripunktiss/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String PIIRIVALVUR_PIIRIPUNKTISController.update(@Valid PIIRIVALVUR_PIIRIPUNKTIS PIIRIVALVUR_PIIRIPUNKTIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("PIIRIVALVUR_PIIRIPUNKTIS", PIIRIVALVUR_PIIRIPUNKTIS);
            addDateTimeFormatPatterns(uiModel);
            return "piirivalvur_piiripunktiss/update";
        }
        uiModel.asMap().clear();
        PIIRIVALVUR_PIIRIPUNKTIS.merge();
        return "redirect:/piirivalvur_piiripunktiss/" + encodeUrlPathSegment(PIIRIVALVUR_PIIRIPUNKTIS.getPiirivalvur_piiripunktis_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{piirivalvur_piiripunktis_id}", params = "form", method = RequestMethod.GET)
    public String PIIRIVALVUR_PIIRIPUNKTISController.updateForm(@PathVariable("piirivalvur_piiripunktis_id") Long piirivalvur_piiripunktis_id, Model uiModel) {
        uiModel.addAttribute("PIIRIVALVUR_PIIRIPUNKTIS", PIIRIVALVUR_PIIRIPUNKTIS.findPIIRIVALVUR_PIIRIPUNKTIS(piirivalvur_piiripunktis_id));
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvur_piiripunktiss/update";
    }
    
    @RequestMapping(value = "/{piirivalvur_piiripunktis_id}", method = RequestMethod.DELETE)
    public String PIIRIVALVUR_PIIRIPUNKTISController.delete(@PathVariable("piirivalvur_piiripunktis_id") Long piirivalvur_piiripunktis_id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PIIRIVALVUR_PIIRIPUNKTIS.findPIIRIVALVUR_PIIRIPUNKTIS(piirivalvur_piiripunktis_id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/piirivalvur_piiripunktiss";
    }
    
    @ModelAttribute("amet_piiripunktiss")
    public Collection<AMET_PIIRIPUNKTIS> PIIRIVALVUR_PIIRIPUNKTISController.populateAMET_PIIRIPUNKTISs() {
        return AMET_PIIRIPUNKTIS.findAllAMET_PIIRIPUNKTISs();
    }
    
    @ModelAttribute("piirivalvurs")
    public Collection<PIIRIVALVUR> PIIRIVALVUR_PIIRIPUNKTISController.populatePIIRIVALVURS() {
        return PIIRIVALVUR.findAllPIIRIVALVURS();
    }
    
    @ModelAttribute("piirivalvur_piiripunktiss")
    public Collection<PIIRIVALVUR_PIIRIPUNKTIS> PIIRIVALVUR_PIIRIPUNKTISController.populatePIIRIVALVUR_PIIRIPUNKTISs() {
        return PIIRIVALVUR_PIIRIPUNKTIS.findAllPIIRIVALVUR_PIIRIPUNKTISs();
    }
    
    void PIIRIVALVUR_PIIRIPUNKTISController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("PIIRIVALVUR_PIIRIPUNKTIS_alates_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("PIIRIVALVUR_PIIRIPUNKTIS_kuni_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("PIIRIVALVUR_PIIRIPUNKTIS_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("PIIRIVALVUR_PIIRIPUNKTIS_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("PIIRIVALVUR_PIIRIPUNKTIS_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String PIIRIVALVUR_PIIRIPUNKTISController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
