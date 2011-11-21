// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.web;

import ee.itcollege.i377.team28.entities.INTSIDENT;
import ee.itcollege.i377.team28.entities.PIIRIVALVE_SEADUS_INTSIDENDI;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR;
import ee.itcollege.i377.team28.entities.PIIRIVALVUR_INTSIDENDIS;
import ee.itcollege.i377.team28.entities.VAHTKOND_INTSIDENDIS;
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

privileged aspect PIIRIVALVUR_INTSIDENDISController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String PIIRIVALVUR_INTSIDENDISController.create(@Valid PIIRIVALVUR_INTSIDENDIS PIIRIVALVUR_INTSIDENDIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("PIIRIVALVUR_INTSIDENDIS", PIIRIVALVUR_INTSIDENDIS);
            addDateTimeFormatPatterns(uiModel);
            return "piirivalvur_intsidendiss/create";
        }
        uiModel.asMap().clear();
        PIIRIVALVUR_INTSIDENDIS.persist();
        return "redirect:/piirivalvur_intsidendiss/" + encodeUrlPathSegment(PIIRIVALVUR_INTSIDENDIS.getPiirivalvur_intsidendis_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String PIIRIVALVUR_INTSIDENDISController.createForm(Model uiModel) {
        uiModel.addAttribute("PIIRIVALVUR_INTSIDENDIS", new PIIRIVALVUR_INTSIDENDIS());
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvur_intsidendiss/create";
    }
    
    @RequestMapping(value = "/{piirivalvur_intsidendis_id}", method = RequestMethod.GET)
    public String PIIRIVALVUR_INTSIDENDISController.show(@PathVariable("piirivalvur_intsidendis_id") Long piirivalvur_intsidendis_id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("piirivalvur_intsidendis", PIIRIVALVUR_INTSIDENDIS.findPIIRIVALVUR_INTSIDENDIS(piirivalvur_intsidendis_id));
        uiModel.addAttribute("itemId", piirivalvur_intsidendis_id);
        return "piirivalvur_intsidendiss/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String PIIRIVALVUR_INTSIDENDISController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("piirivalvur_intsidendiss", PIIRIVALVUR_INTSIDENDIS.findPIIRIVALVUR_INTSIDENDISEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) PIIRIVALVUR_INTSIDENDIS.countPIIRIVALVUR_INTSIDENDISs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("piirivalvur_intsidendiss", PIIRIVALVUR_INTSIDENDIS.findAllPIIRIVALVUR_INTSIDENDISs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvur_intsidendiss/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String PIIRIVALVUR_INTSIDENDISController.update(@Valid PIIRIVALVUR_INTSIDENDIS PIIRIVALVUR_INTSIDENDIS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("PIIRIVALVUR_INTSIDENDIS", PIIRIVALVUR_INTSIDENDIS);
            addDateTimeFormatPatterns(uiModel);
            return "piirivalvur_intsidendiss/update";
        }
        uiModel.asMap().clear();
        PIIRIVALVUR_INTSIDENDIS.merge();
        return "redirect:/piirivalvur_intsidendiss/" + encodeUrlPathSegment(PIIRIVALVUR_INTSIDENDIS.getPiirivalvur_intsidendis_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{piirivalvur_intsidendis_id}", params = "form", method = RequestMethod.GET)
    public String PIIRIVALVUR_INTSIDENDISController.updateForm(@PathVariable("piirivalvur_intsidendis_id") Long piirivalvur_intsidendis_id, Model uiModel) {
        uiModel.addAttribute("PIIRIVALVUR_INTSIDENDIS", PIIRIVALVUR_INTSIDENDIS.findPIIRIVALVUR_INTSIDENDIS(piirivalvur_intsidendis_id));
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvur_intsidendiss/update";
    }
    
    @RequestMapping(value = "/{piirivalvur_intsidendis_id}", method = RequestMethod.DELETE)
    public String PIIRIVALVUR_INTSIDENDISController.delete(@PathVariable("piirivalvur_intsidendis_id") Long piirivalvur_intsidendis_id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PIIRIVALVUR_INTSIDENDIS.findPIIRIVALVUR_INTSIDENDIS(piirivalvur_intsidendis_id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/piirivalvur_intsidendiss";
    }
    
    @ModelAttribute("intsidents")
    public Collection<INTSIDENT> PIIRIVALVUR_INTSIDENDISController.populateINTSIDENTS() {
        return INTSIDENT.findAllINTSIDENTS();
    }
    
    @ModelAttribute("piirivalve_seadus_intsidendis")
    public Collection<PIIRIVALVE_SEADUS_INTSIDENDI> PIIRIVALVUR_INTSIDENDISController.populatePIIRIVALVE_SEADUS_INTSIDENDIs() {
        return PIIRIVALVE_SEADUS_INTSIDENDI.findAllPIIRIVALVE_SEADUS_INTSIDENDIs();
    }
    
    @ModelAttribute("piirivalvurs")
    public Collection<PIIRIVALVUR> PIIRIVALVUR_INTSIDENDISController.populatePIIRIVALVURS() {
        return PIIRIVALVUR.findAllPIIRIVALVURS();
    }
    
    @ModelAttribute("piirivalvur_intsidendiss")
    public Collection<PIIRIVALVUR_INTSIDENDIS> PIIRIVALVUR_INTSIDENDISController.populatePIIRIVALVUR_INTSIDENDISs() {
        return PIIRIVALVUR_INTSIDENDIS.findAllPIIRIVALVUR_INTSIDENDISs();
    }
    
    @ModelAttribute("vahtkond_intsidendiss")
    public Collection<VAHTKOND_INTSIDENDIS> PIIRIVALVUR_INTSIDENDISController.populateVAHTKOND_INTSIDENDISs() {
        return VAHTKOND_INTSIDENDIS.findAllVAHTKOND_INTSIDENDISs();
    }
    
    void PIIRIVALVUR_INTSIDENDISController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("PIIRIVALVUR_INTSIDENDIS_alates_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("PIIRIVALVUR_INTSIDENDIS_kuni_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("PIIRIVALVUR_INTSIDENDIS_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("PIIRIVALVUR_INTSIDENDIS_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("PIIRIVALVUR_INTSIDENDIS_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String PIIRIVALVUR_INTSIDENDISController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
