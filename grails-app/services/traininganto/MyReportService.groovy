package traininganto

import org.codehaus.groovy.grails.commons.ConfigurationHolder
import resokaskus.training.Grade
import javax.servlet.http.HttpServletResponse
import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap

class MyReportService {

    def exportService

    def exportNow(HttpServletResponse response, GrailsParameterMap params, String myTitle, List fields) {
        response.contentType = ConfigurationHolder.config.grails.mime.types[params.format]

        response.setHeader("Content-disposition", "attachment; filename=nilai.${params.extension}")

        Map parameters = [title: "${myTitle}"]

        exportService.export(params.format, response.outputStream, Grade.list(params), fields, [:], [:], parameters)
    }
}
