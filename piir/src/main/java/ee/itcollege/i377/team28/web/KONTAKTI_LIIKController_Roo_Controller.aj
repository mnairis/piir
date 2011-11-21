// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.web;

import ee.itcollege.i377.team28.entities.KONTAKTI_LIIK;
import ee.itcollege.i377.team28.entities.PIIRIVALVURI_KONTAKT;
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

privileged aspect KONTAKTI_LIIKController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String KONTAKTI_LIIKController.create(@Valid KONTAKTI_LIIK KONTAKTI_LIIK, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("KONTAKTI_LIIK", KONTAKTI_LIIK);
            addDateTimeFormatPatterns(uiModel);
            return "kontakti_liiks/create";
        }
        uiModel.asMap().clear();
        KONTAKTI_LIIK.persist();
        return "redirect:/kontakti_liiks/" + encodeUrlPathSegment(KONTAKTI_LIIK.getKontakti_liik_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String KONTAKTI_LIIKController.createForm(Model uiModel) {
        uiModel.addAttribute("KONTAKTI_LIIK", new KONTAKTI_LIIK());
        addDateTimeFormatPatterns(uiModel);
        return "kontakti_liiks/create";
    }
    
    @RequestMapping(value = "/{kontakti_liik_id}", method = RequestMethod.GET)
    public String KONTAKTI_LIIKController.show(@PathVariable("kontakti_liik_id") Long kontakti_liik_id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("kontakti_liik", KONTAKTI_LIIK.findKONTAKTI_LIIK(kontakti_liik_id));
        uiModel.addAttribute("itemId", kontakti_liik_id);
        return "kontakti_liiks/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String KONTAKTI_LIIKController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("kontakti_liiks", KONTAKTI_LIIK.findKONTAKTI_LIIKEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) KONTAKTI_LIIK.countKONTAKTI_LIIKs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("kontakti_liiks", KONTAKTI_LIIK.findAllKONTAKTI_LIIKs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "kontakti_liiks/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String KONTAKTI_LIIKController.update(@Valid KONTAKTI_LIIK KONTAKTI_LIIK, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("KONTAKTI_LIIK", KONTAKTI_LIIK);
            addDateTimeFormatPatterns(uiModel);
            return "kontakti_liiks/update";
        }
        uiModel.asMap().clear();
        KONTAKTI_LIIK.merge();
        return "redirect:/kontakti_liiks/" + encodeUrlPathSegment(KONTAKTI_LIIK.getKontakti_liik_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{kontakti_liik_id}", params = "form", method = RequestMethod.GET)
    public String KONTAKTI_LIIKController.updateForm(@PathVariable("kontakti_liik_id") Long kontakti_liik_id, Model uiModel) {
        uiModel.addAttribute("KONTAKTI_LIIK", KONTAKTI_LIIK.findKONTAKTI_LIIK(kontakti_liik_id));
        addDateTimeFormatPatterns(uiModel);
        return "kontakti_liiks/update";
    }
    
    @RequestMapping(value = "/{kontakti_liik_id}", method = RequestMethod.DELETE)
    public String KONTAKTI_LIIKController.delete(@PathVariable("kontakti_liik_id") Long kontakti_liik_id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        KONTAKTI_LIIK.findKONTAKTI_LIIK(kontakti_liik_id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/kontakti_liiks";
    }
    
    @ModelAttribute("kontakti_liiks")
    public Collection<KONTAKTI_LIIK> KONTAKTI_LIIKController.populateKONTAKTI_LIIKs() {
        return KONTAKTI_LIIK.findAllKONTAKTI_LIIKs();
    }
    
    @ModelAttribute("piirivalvuri_kontakts")
    public Collection<PIIRIVALVURI_KONTAKT> KONTAKTI_LIIKController.populatePIIRIVALVURI_KONTAKTs() {
        return PIIRIVALVURI_KONTAKT.findAllPIIRIVALVURI_KONTAKTs();
    }
    
    void KONTAKTI_LIIKController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("KONTAKTI_LIIK_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("KONTAKTI_LIIK_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("KONTAKTI_LIIK_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String KONTAKTI_LIIKController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
