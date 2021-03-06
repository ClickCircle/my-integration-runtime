package com.jm.integration.runtime;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class CamelIntegrationRuntimeApplication {

    public static void main(String[] args) throws Exception {
        SpringApplication.run(CamelIntegrationRuntimeApplication.class, args);
        Thread.sleep(Long.MAX_VALUE);
    }
}
