package highchart

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ChartOneController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ChartOne.list(params), model:[chartOneCount: ChartOne.count()]
    }

    def show(ChartOne chartOne) {
        respond chartOne
    }

    def create() {
        respond new ChartOne(params)
    }

    @Transactional
    def save(ChartOne chartOne) {
        if (chartOne == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (chartOne.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond chartOne.errors, view:'create'
            return
        }

        chartOne.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'chartOne.label', default: 'ChartOne'), chartOne.id])
                redirect chartOne
            }
            '*' { respond chartOne, [status: CREATED] }
        }
    }

    def edit(ChartOne chartOne) {
        respond chartOne
    }

    @Transactional
    def update(ChartOne chartOne) {
        if (chartOne == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (chartOne.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond chartOne.errors, view:'edit'
            return
        }

        chartOne.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'chartOne.label', default: 'ChartOne'), chartOne.id])
                redirect chartOne
            }
            '*'{ respond chartOne, [status: OK] }
        }
    }

    @Transactional
    def delete(ChartOne chartOne) {

        if (chartOne == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        chartOne.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'chartOne.label', default: 'ChartOne'), chartOne.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'chartOne.label', default: 'ChartOne'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
