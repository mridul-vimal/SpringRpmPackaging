package com.vimal.app;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/")
@Slf4j
public class TestController {


    @GetMapping("hi/")
    public String get(){
        log.info("Controller Called!");
        return "Hello World!";
    }
}
