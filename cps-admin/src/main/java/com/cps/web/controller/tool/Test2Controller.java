package com.cps.web.controller.tool;

import com.cps.cp.domain.TrenderInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/test2")
public class Test2Controller {

    @Autowired
    private Test2Service service;

    @GetMapping("/init")
    public ModelAndView init() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("test2");
        return  modelAndView;
    }

    @PostMapping("/fileDownload/{id}")
    @ResponseBody
    public void fileDownload(@PathVariable("id") String id) throws Exception {
        Long uid = Long.valueOf(id);
        //System.out.println(id);
        service.fileDownload(uid);
    }
}

