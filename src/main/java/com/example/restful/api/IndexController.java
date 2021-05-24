package com.example.restful.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/")
public class IndexController {

    @GetMapping
    public ModelAndView method() {
        return new ModelAndView("redirect:" + "http://localhost:8080/swagger-ui.html");
    }
}
