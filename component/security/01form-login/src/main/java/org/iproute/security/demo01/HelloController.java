package org.iproute.security.demo01;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * HelloController
 *
 * @author zhuzhenjie
 * @since 2022/12/11
 */
@RestController
public class HelloController {

    @GetMapping("/hello")
    public String hello() {
        return "Hello，Demo01";
    }

}
