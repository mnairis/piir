// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.i377.team28.web;

import ee.itcollege.i377.team28.entities.ORG_YKSUS;
import ee.itcollege.i377.team28.entities.VAEOSA;
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

privileged aspect ORG_YKSUSController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String ORG_YKSUSController.create(@Valid ORG_YKSUS ORG_YKSUS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ORG_YKSUS", ORG_YKSUS);
            addDateTimeFormatPatterns(uiModel);
            return "org_yksus/create";
        }
        uiModel.asMap().clear();
        ORG_YKSUS.persist();
        return "redirect:/org_yksus/" + encodeUrlPathSegment(ORG_YKSUS.getOrg_yksus_ID().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String ORG_YKSUSController.createForm(Model uiModel) {
        uiModel.addAttribute("ORG_YKSUS", new ORG_YKSUS());
        addDateTimeFormatPatterns(uiModel);
        return "org_yksus/create";
    }
    
    @RequestMapping(value = "/{org_yksus_ID}", method = RequestMethod.GET)
    public String ORG_YKSUSController.show(@PathVariable("org_yksus_ID") Long org_yksus_ID, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("org_yksus", ORG_YKSUS.findORG_YKSUS(org_yksus_ID));
        uiModel.addAttribute("itemId", org_yksus_ID);
        return "org_yksus/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String ORG_YKSUSController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("org_yksus", ORG_YKSUS.findORG_YKSUSEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) ORG_YKSUS.countORG_YKSUS() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("org_yksus", ORG_YKSUS.findAllORG_YKSUS());
        }
        addDateTimeFormatPatterns(uiModel);
        return "org_yksus/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String ORG_YKSUSController.update(@Valid ORG_YKSUS ORG_YKSUS, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("ORG_YKSUS", ORG_YKSUS);
            addDateTimeFormatPatterns(uiModel);
            return "org_yksus/update";
        }
        uiModel.asMap().clear();
        ORG_YKSUS.merge();
        return "redirect:/org_yksus/" + encodeUrlPathSegment(ORG_YKSUS.getOrg_yksus_ID().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{org_yksus_ID}", params = "form", method = RequestMethod.GET)
    public String ORG_YKSUSController.updateForm(@PathVariable("org_yksus_ID") Long org_yksus_ID, Model uiModel) {
        uiModel.addAttribute("ORG_YKSUS", ORG_YKSUS.findORG_YKSUS(org_yksus_ID));
        addDateTimeFormatPatterns(uiModel);
        return "org_yksus/update";
    }
    
    @RequestMapping(value = "/{org_yksus_ID}", method = RequestMethod.DELETE)
    public String ORG_YKSUSController.delete(@PathVariable("org_yksus_ID") Long org_yksus_ID, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ORG_YKSUS.findORG_YKSUS(org_yksus_ID).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/org_yksus";
    }
    
    @ModelAttribute("org_yksus")
    public Collection<ORG_YKSUS> ORG_YKSUSController.populateORG_YKSUS() {
        return ORG_YKSUS.findAllORG_YKSUS();
    }
    
    @ModelAttribute("vaeosas")
    public Collection<VAEOSA> ORG_YKSUSController.populateVAEOSAS() {
        return VAEOSA.findAllVAEOSAS();
    }
    
    void ORG_YKSUSController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("ORG_YKSUS_alates_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("ORG_YKSUS_kuni_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("ORG_YKSUS_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("ORG_YKSUS_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("ORG_YKSUS_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String ORG_YKSUSController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
