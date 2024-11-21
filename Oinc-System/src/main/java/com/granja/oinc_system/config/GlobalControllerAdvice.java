package com.granja.oinc_system.config;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class GlobalControllerAdvice implements WebMvcConfigurer {

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(String.class, LocalDate.class, source -> 
            LocalDate.parse(source, DateTimeFormatter.ofPattern("yyyy-MM-dd")));
    }
}

