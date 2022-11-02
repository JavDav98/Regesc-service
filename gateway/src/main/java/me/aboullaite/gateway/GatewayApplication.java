package me.aboullaite.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;
//import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.gateway.filter.ratelimit.KeyResolver;
//import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.hystrix.EnableHystrix;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import reactor.core.publisher.Mono;

@SpringBootApplication
@EnableEurekaClient
@EnableHystrix
@EnableCircuitBreaker
//@EnableDiscoveryClient
@ComponentScan(basePackages = {"me.aboullaite.gateway"})
public class GatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(GatewayApplication.class, args);
    }

    // Not
    @Bean
    KeyResolver userKeyResolver() {
        return exchange -> Mono.just("fero");
    }
}

