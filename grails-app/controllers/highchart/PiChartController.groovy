package highchart

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class PiChartController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PiChart.list(params), model:[piChartCount: PiChart.count()]
    }

    def show(PiChart piChart) {
        respond piChart
    }

    def create() {
        respond new PiChart(params)
    }

    @Transactional
    def save(PiChart piChart) {
        if (piChart == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (piChart.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond piChart.errors, view:'create'
            return
        }

        piChart.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'piChart.label', default: 'PiChart'), piChart.id])
                redirect piChart
            }
            '*' { respond piChart, [status: CREATED] }
        }
    }

    def edit(PiChart piChart) {
        respond piChart
    }

    @Transactional
    def update(PiChart piChart) {
        if (piChart == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (piChart.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond piChart.errors, view:'edit'
            return
        }

        piChart.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'piChart.label', default: 'PiChart'), piChart.id])
                redirect piChart
            }
            '*'{ respond piChart, [status: OK] }
        }
    }

    @Transactional
    def delete(PiChart piChart) {

        if (piChart == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        piChart.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'piChart.label', default: 'PiChart'), piChart.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'piChart.label', default: 'PiChart'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
