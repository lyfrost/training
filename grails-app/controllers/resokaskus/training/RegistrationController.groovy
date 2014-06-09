package resokaskus.training

import org.springframework.dao.DataIntegrityViolationException

class RegistrationController {

    static allowedMethods = [save: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [registrationInstanceList: Registration.list(params), registrationInstanceTotal: Registration.count()]
    }

    def create() {
        [registrationInstance: new Registration(params)]
    }

    def save() {
        def registrationInstance = new Registration(params)
        registrationInstance.setTime(new Date())
        registrationInstance.setOperator(session.user.getUserId())

        println registrationInstance.training.isQuotaFull()

        if (registrationInstance.training.isQuotaFull() || !registrationInstance.save(flush: true)) {
            flash.message = "MAAF, training yang anda pilih sudah penuh kuota !"
            render(view: "create", model: [registrationInstance: registrationInstance])
            return
        }

        else {
            flash.message = message(code: 'default.created.message', args: [message(code: 'registration.label', default: 'Registration'), registrationInstance.id])
            redirect(action: "list", id: registrationInstance.id)
        }
    }

    def show() {
        def registrationInstance = Registration.get(params.id)
        if (!registrationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registration.label', default: 'Registration'), params.id])
            redirect(action: "list")
            return
        }

        [registrationInstance: registrationInstance]
    }

    def delete() {
        def registrationInstance = Registration.get(params.id)
        if (!registrationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'registration.label', default: 'Registration'), params.id])
            redirect(action: "list")
            return
        }

        try {
            registrationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'registration.label', default: 'Registration'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'registration.label', default: 'Registration'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
