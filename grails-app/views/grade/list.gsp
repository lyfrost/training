<%
    int sumTotal = 0
%>
<%@ page import="resokaskus.training.Grade" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'grade.label', default: 'Grade')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <r:require module="export"/>
    <export:resource/>
</head>

<body>
<a href="#list-grade" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-grade" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <th><g:message code="grade.user.label" default="User"/></th>

            <th><g:message code="grade.training.label" default="training"/></th>

            <g:sortableColumn property="finalGrade"
                              title="${message(code: 'grade.finalGrade.label', default: 'Final Grade')}"/>

            <g:sortableColumn property="additionalInformation"
                              title="${message(code: 'grade.additionalInformation.label', default: 'Additional Information')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${gradeInstanceList}" status="i" var="gradeInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${gradeInstance.id}">${fieldValue(bean: gradeInstance, field: "user")}</g:link></td>

                <td>${fieldValue(bean: gradeInstance, field: "training")}</td>

                <td>${fieldValue(bean: gradeInstance, field: "finalGrade")}</td>

                <td>${fieldValue(bean: gradeInstance, field: "additionalInformation")}</td>

                <%
                    sumTotal += gradeInstance.getFinalGrade()
                %>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${gradeInstanceTotal}"/>
    </div>

    <p>Rata-rata: ${sumTotal / gradeInstanceTotal}</p>

    <br/>
    <export:formats formats="['excel', 'pdf', 'rtf']"/>
</div>
</body>
</html>
