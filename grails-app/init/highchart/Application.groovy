package highchart

import grails.boot.GrailsApp
import grails.boot.config.GrailsAutoConfiguration

class Application {
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
        def printIt = { e -> println e * factor }

//        list.each printIt // ->(lamda expression) closure //print either list or value
//        list1.each printIt // ->(lamda expression) closure
        //list.each {println "==="+it*factor} //use it only for single parameter

        foo({list.each printIt},3)
        foo({println it},3)
        println "====closureAtLast=== " //the ways to call closure
        fooClosureAtLast(3) {println it}
        fooClosureAtLast(3,{println it})
        fooClosureAtLast 3, {println it}

        def greet={println "hello $it"}
        def greetParameter={name->println "hello $name"}
        greet('swagat')
        greetParameter('swagat')
    }
    def static foo(closure, value) {
        closure(value * 2)
    }
    def static fooClosureAtLast(value,closure) {
        closure(value * 2)
    }
}