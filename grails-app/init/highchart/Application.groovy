package highchart

import grails.boot.GrailsApp
import grails.boot.config.GrailsAutoConfiguration

class Application extends GrailsAutoConfiguration {
    static void main(String[] args) {
//        GrailsApp.run(Application, args)
        println('-----------test-----------------')

        def add = { x, y -> x + y }
        println("closure====== " + add.call(1, 3))
        assert add.call(1, 3)==4

        def list =[1,2,3,4,5]
        def list1=[10,20,30,40,50]

        def factor=2

        //anonymous function(which has no name)
        //def printIt={e->println e*factor}
        list.each {e->println e*factor} // ->(lamda expression) closure
        list1.each {e->println e*factor} // ->(lamda expression) closure
        list.each {println "==="+it*factor} //use it only for single parameter
    }
}