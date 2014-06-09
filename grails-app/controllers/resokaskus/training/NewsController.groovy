package resokaskus.training

import org.springframework.dao.DataIntegrityViolationException

class NewsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def searchableService

    def search = {
        def query = params.q
        //println(query)

        if (query) {
            def srchResults = News.search(query)
            render(view: "list", model: [newsInstanceList: srchResults.results, newsInstanceTotal: srchResults.total])

        } else {
            redirect(action: "")
        }
    }

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [newsInstanceList: News.list(params), newsInstanceTotal: News.count()]
    }

    def create() {
        [newsInstance: new News(params)]
    }

    def save() {
        def newsInstance = new News(params)
        newsInstance.setDate(new Date())
        newsInstance.setOperator(session.user.getUserId())
        if (!newsInstance.save(flush: true)) {
            render(view: "create", model: [newsInstance: newsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'news.label', default: 'News'), newsInstance.id])
        redirect(action: "show", id: newsInstance.id)
    }

    def show() {
        def newsInstance = News.get(params.id)
        if (!newsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'news.label', default: 'News'), params.id])
            redirect(action: "list")
            return
        }

        [newsInstance: newsInstance]
    }

    def edit() {
        def newsInstance = News.get(params.id)
        if (!newsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'news.label', default: 'News'), params.id])
            redirect(action: "list")
            return
        }

        [newsInstance: newsInstance]
    }

    def update() {
        def newsInstance = News.get(params.id)
        if (!newsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'news.label', default: 'News'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (newsInstance.version > version) {
                newsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'news.label', default: 'News')] as Object[],
                        "Another user has updated this News while you were editing")
                render(view: "edit", model: [newsInstance: newsInstance])
                return
            }
        }

        newsInstance.properties = params

        if (!newsInstance.save(flush: true)) {
            render(view: "edit", model: [newsInstance: newsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'news.label', default: 'News'), newsInstance.id])
        redirect(action: "show", id: newsInstance.id)
    }

    def delete() {
        def newsInstance = News.get(params.id)
        if (!newsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'news.label', default: 'News'), params.id])
            redirect(action: "list")
            return
        }

        try {
            newsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'news.label', default: 'News'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'news.label', default: 'News'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
