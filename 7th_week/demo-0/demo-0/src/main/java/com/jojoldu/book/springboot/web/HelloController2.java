package com.jojoldu.book.springboot.web;

import com.jojoldu.book.springboot.service.PostsService;
import com.jojoldu.book.springboot.web.dto.HelloResponseDto;
import com.jojoldu.book.springboot.web.dto.PostsListResponseDto;

import lombok.RequiredArgsConstructor;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class HelloController2 {

    @GetMapping("/hello2")
    public String hello() {
        return "hello2";
    }

    @GetMapping("/hello2/dto")
    public HelloResponseDto helloDto(@RequestParam("name") String name,
                                     @RequestParam("amount") int amount) {
        return new HelloResponseDto(name, amount);
    }
    
    @GetMapping("/api/a1/list2")
    public String findAll() {
        return "list2";
    }

}
