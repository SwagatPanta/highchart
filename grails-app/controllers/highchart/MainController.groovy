package highchart

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER'])
class MainController {

    def index() {
        def username='admin'
        [user:username]
    }
}
