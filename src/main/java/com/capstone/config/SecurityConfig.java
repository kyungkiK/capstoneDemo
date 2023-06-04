package com.capstone.config;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.web.SecurityFilterChain;

@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public WebSecurityCustomizer webSecurityCustomizer() {
        return (web) -> web.ignoring().antMatchers("/css/**","/fonts/**","/img/**","/js/**");
    }

    @Bean
    SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
                .formLogin(login -> {

                    login
                            .loginPage("/login")
                            .usernameParameter("username")
                            .passwordParameter("password")
                            .loginProcessingUrl("/login/success")
                            .defaultSuccessUrl("/")
                            .permitAll();

                });

        http.csrf().disable();
        http
                .authorizeRequests(authorize -> authorize
                        .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
                        .antMatchers("/member/**").authenticated()
                        .anyRequest().permitAll()
        );

        http.logout()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/")
                .deleteCookies("JSESSIONID");

        return http.build();
    }

}
