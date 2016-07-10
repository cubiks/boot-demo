package com.playground.spring;

import org.springframework.web.bind.annotation.*;

/**
 * Created by greenciu on 7/10/2016.
 */
@RestController
@RequestMapping("/hello")
public class HelloService {

    @RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
    public @ResponseBody String hello() {
        return "Hello";
    }

    @RequestMapping(value = {"/{name}", "/{name}/", "/{name}/**"}, method = RequestMethod.GET)
    public @ResponseBody String hello(@PathVariable String name) {
        return hello() + " " + name;
    }
}
