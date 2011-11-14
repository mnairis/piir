package ee.itcollege.i377.team28.web;

import ee.itcollege.i377.team28.entities.PIIRIPUNKT_ALLUVUS;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "piiripunkt_alluvus", formBackingObject = PIIRIPUNKT_ALLUVUS.class)
@RequestMapping("/piiripunkt_alluvus")
@Controller
public class PIIRIPUNKT_ALLUVUSController {
}
