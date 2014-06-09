package resokaskus.training

import dwiwahyudi.protectionPackage.RijndaelUtil
import dwiwahyudi.emailServicePackage.EmailSendService

class UserController {

    def scaffold = User
    def simpleCaptchaService
    def mailService

    def displayLogo = {
        def user = User.get(params.id)
        response.contentType = "image/jpeg"
        response.contentLength = user?.photo.length
        response.outputStream.write(user?.photo)
    }

    def showTrainer() {
        [users: User.findAllByType("Trainer")]
    }

    def showAdmin() {
        [users: User.findAllByType("Admin")]
    }

    def showStudent() {
        [users: User.findAllByType("Student")]
    }

    def save() {
        def userInstance = new User(params)
        userInstance.setPassword(RijndaelUtil.encrypt(params.password))
        if (!userInstance.save(flush: true)) {
            render(view: "create", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)

        EmailSendService ess = new EmailSendService()
        ess.SendGreetingMail(params.email, params.userId)
    }

    def edit() {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def update() {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'user.label', default: 'User')] as Object[],
                        "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params
        userInstance.setPassword(RijndaelUtil.encrypt(params.password))

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def index() {
        redirect(action: "list")
    }

    def login = {
        if (params.cName)
            return [cName: params.cName, aName: params.aName, usertype: params.usertype]
    }

    def validate = {

        if (!simpleCaptchaService.validateCaptcha(params.captcha)) {
            flash.message = "Maaf, kode capcay salah"
            render(view: 'login')
        }

        else {

            String encrypted = RijndaelUtil.encrypt(params.password)

            def user = User.findByUserId(params.userId)
            if (user && user.password == encrypted) {
                session.user = user

                if (params.cName)
                    redirect(controller: params.cName, action: params.aName)
                else
                    redirect(url: resource(dir: '../'))
            }
            else {
                flash.message = "User ID atau password salah..."
                render(view: 'login')
            }
        }
    }

    def logout = {
        session.user = null
        redirect(url: resource(dir: '../'))
    }

    boolean redirectNow(User userThis, String role) {
        if (!userThis || userThis.getType() != role) {
            redirect(controller: 'user', action: 'login')
            return false
        }

        else return true
    }
}
