package resokaskus.training

import org.codehaus.groovy.grails.commons.ConfigurationHolder

class GradeController {

    def scaffold = Grade
    def myReportService

    def index() {
        redirect(action: "list")
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)

        if (params?.format && params.format != "html") {
            def List fieldsList = ["user", "training", "finalGrade", "additionalInformation"]
            myReportService.exportNow(response, params, "Semua Nilai Training", fieldsList)
        }
        [gradeInstanceList: Grade.list(params), gradeInstanceTotal: Grade.count()]
    }

    def look() {
        def trainingThis = Training.findById(params.id)

        if (params?.format && params.format != "html") {
            def List fieldsList = ["user", "finalGrade", "additionalInformation"]
            myReportService.exportNow(response, params, "Nilai Terkait Training ${trainingThis.packet} ID: ${trainingThis.id}", fieldsList)
        }

        render(view: "list", model: [gradeInstanceList: Grade.findAllByTraining(trainingThis), gradeInstanceTotal: Grade.countByTraining(trainingThis)])
    }

    def relatedToStudent() {
        def studentThis = User.findById(session.user.id)

        if (params?.format && params.format != "html") {
            def List fieldsList = ["training", "finalGrade", "additionalInformation"]
            myReportService.exportNow(response, params, "Nilai Training ID:${studentThis.getUserId()} (${studentThis.getPrename()} ${studentThis.getSurname()})", fieldsList)
        }

        render(view: "list", model: [gradeInstanceList: Grade.findAllByUser(studentThis), gradeInstanceTotal: Grade.countByUser(studentThis)])
    }
}
