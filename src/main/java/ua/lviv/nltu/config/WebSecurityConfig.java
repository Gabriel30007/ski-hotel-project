package ua.lviv.nltu.config;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.context.annotation.Bean;

import ua.lviv.nltu.security.CustomUserDetailsService;

@Configuration
@EnableWebSecurity
@ComponentScan(basePackageClasses= CustomUserDetailsService.class)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;

    @Bean(name = "passwordEncoder")
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }


    public void configAuthentification(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/registration").permitAll()
                .antMatchers("/main_page").permitAll()
                .anyRequest().permitAll().and()
                .formLogin().loginPage("/login")
                .defaultSuccessUrl("/main_page").usernameParameter("email").passwordParameter("password").and()
                .logout().logoutSuccessUrl("/login?logout").and()
                .exceptionHandling().accessDeniedPage("/403").and()
                .csrf();
    }
}