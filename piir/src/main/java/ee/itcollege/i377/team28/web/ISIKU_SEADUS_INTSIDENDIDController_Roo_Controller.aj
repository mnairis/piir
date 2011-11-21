// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.web;

import ee.itcollege.i377.team28.entities.ISIKU_SEADUS_INTSIDENDID;
import ee.itcollege.i377.team28.entities.ISIK_INTSIDENDIS;
import ee.itcollege.i377.team28.entities.SEADUSE_PUNKT;
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

privileged aspect ISIKU_SEADUS_INTSIDENDIDController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String ISIKU_SEADUS_INTSIDENDIDController.create(@Valid ISIKU_SEADUS_INTSIDENDID ISIKU_SEADUS_INTSIDENDID, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDID", ISIKU_SEADUS_INTSIDENDID);
            addDateTimeFormatPatterns(uiModel);
            return "isiku_seadus_intsidendids/create";
        }
        uiModel.asMap().clear();
        ISIKU_SEADUS_INTSIDENDID.persist();
        return "redirect:/isiku_seadus_intsidendids/" + encodeUrlPathSegment(ISIKU_SEADUS_INTSIDENDID.getIsiku_seadus_intsidendis_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String ISIKU_SEADUS_INTSIDENDIDController.createForm(Model uiModel) {
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDID", new ISIKU_SEADUS_INTSIDENDID());
        addDateTimeFormatPatterns(uiModel);
        return "isiku_seadus_intsidendids/create";
    }
    
    @RequestMapping(value = "/{isiku_seadus_intsidendis_id}", method = RequestMethod.GET)
    public String ISIKU_SEADUS_INTSIDENDIDController.show(@PathVariable("isiku_seadus_intsidendis_id") Long isiku_seadus_intsidendis_id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("isiku_seadus_intsidendid", ISIKU_SEADUS_INTSIDENDID.findISIKU_SEADUS_INTSIDENDID(isiku_seadus_intsidendis_id));
        uiModel.addAttribute("itemId", isiku_seadus_intsidendis_id);
        return "isiku_seadus_intsidendids/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String ISIKU_SEADUS_INTSIDENDIDController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("isiku_seadus_intsidendids", ISIKU_SEADUS_INTSIDENDID.findISIKU_SEADUS_INTSIDENDIDEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) ISIKU_SEADUS_INTSIDENDID.countISIKU_SEADUS_INTSIDENDIDs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("isiku_seadus_intsidendids", ISIKU_SEADUS_INTSIDENDID.findAllISIKU_SEADUS_INTSIDENDIDs());
        }
        addDateTimeFormatPatterns(uiModel);
        return "isiku_seadus_intsidendids/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String ISIKU_SEADUS_INTSIDENDIDController.update(@Valid ISIKU_SEADUS_INTSIDENDID ISIKU_SEADUS_INTSIDENDID, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDID", ISIKU_SEADUS_INTSIDENDID);
            addDateTimeFormatPatterns(uiModel);
            return "isiku_seadus_intsidendids/update";
        }
        uiModel.asMap().clear();
        ISIKU_SEADUS_INTSIDENDID.merge();
        return "redirect:/isiku_seadus_intsidendids/" + encodeUrlPathSegment(ISIKU_SEADUS_INTSIDENDID.getIsiku_seadus_intsidendis_id().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{isiku_seadus_intsidendis_id}", params = "form", method = RequestMethod.GET)
    public String ISIKU_SEADUS_INTSIDENDIDController.updateForm(@PathVariable("isiku_seadus_intsidendis_id") Long isiku_seadus_intsidendis_id, Model uiModel) {
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDID", ISIKU_SEADUS_INTSIDENDID.findISIKU_SEADUS_INTSIDENDID(isiku_seadus_intsidendis_id));
        addDateTimeFormatPatterns(uiModel);
        return "isiku_seadus_intsidendids/update";
    }
    
    @RequestMapping(value = "/{isiku_seadus_intsidendis_id}", method = RequestMethod.DELETE)
    public String ISIKU_SEADUS_INTSIDENDIDController.delete(@PathVariable("isiku_seadus_intsidendis_id") Long isiku_seadus_intsidendis_id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ISIKU_SEADUS_INTSIDENDID.findISIKU_SEADUS_INTSIDENDID(isiku_seadus_intsidendis_id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/isiku_seadus_intsidendids";
    }
    
    @ModelAttribute("isiku_seadus_intsidendids")
    public Collection<ISIKU_SEADUS_INTSIDENDID> ISIKU_SEADUS_INTSIDENDIDController.populateISIKU_SEADUS_INTSIDENDIDs() {
        return ISIKU_SEADUS_INTSIDENDID.findAllISIKU_SEADUS_INTSIDENDIDs();
    }
    
    @ModelAttribute("isik_intsidendiss")
    public Collection<ISIK_INTSIDENDIS> ISIKU_SEADUS_INTSIDENDIDController.populateISIK_INTSIDENDISs() {
        return ISIK_INTSIDENDIS.findAllISIK_INTSIDENDISs();
    }
    
    @ModelAttribute("seaduse_punkts")
    public Collection<SEADUSE_PUNKT> ISIKU_SEADUS_INTSIDENDIDController.populateSEADUSE_PUNKTs() {
        return SEADUSE_PUNKT.findAllSEADUSE_PUNKTs();
    }
    
    void ISIKU_SEADUS_INTSIDENDIDController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDID_alates_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDID_kuni_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDID_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDID_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("ISIKU_SEADUS_INTSIDENDID_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String ISIKU_SEADUS_INTSIDENDIDController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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