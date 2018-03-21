import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RestController

import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE

@Grab('spring-boot-starter-actuator')

@RestController
class Main {
    @GetMapping(path = '/echo/{message}', produces = APPLICATION_JSON_VALUE)
    def echo(@PathVariable String message) {
        return [message: message]
    }

    @GetMapping(path = '/now', produces = APPLICATION_JSON_VALUE)
    def now() {
        return [time: new Date()]
    }

    @GetMapping(path = '/', produces = APPLICATION_JSON_VALUE)
    def hi() {
        return [message: 'hi']
    }
}
