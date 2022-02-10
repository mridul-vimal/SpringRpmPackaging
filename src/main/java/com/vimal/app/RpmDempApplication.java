package com.vimal.app;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@Slf4j
public class RpmDempApplication implements CommandLineRunner {

	@Value("${spring.application.name}")
	String appName;
	public static void main(String[] args) {
		SpringApplication.run(RpmDempApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		log.info("Receiving Parameters of AppName {}",appName);
	}
}
