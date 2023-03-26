package com.example.demo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class MyRestController {

    private final Logger logger = LoggerFactory.getLogger(MyRestController.class);

    @GetMapping("/hello")
    public String myEndpoint() {
        logger.debug("Endpoint /api/endpoint called");
        // Your endpoint logic here
        return "1.0";
    }
}
