<%@ page import="resokaskus.training.Training" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'training.label', default: 'Training')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-training" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-training" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="type" title="${message(code: 'training.type.label', default: 'Type')}"/>

            <g:sortableColumn property="deadline"
                              title="${message(code: 'training.deadline.label', default: 'Deadline')}"/>

            <g:sortableColumn property="quota" title="${message(code: 'training.quota.label', default: 'Quota')}"/>

            <th><g:message code="training.trainer.label" default="Trainer"/></th>

            <th><g:message code="training.packet.label" default="Packet"/></th>

            <th><g:message code="training.room.label" default="Room"/></th>

            <th>Pertemuan</th>

            <th>Penilaian</th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${trainingInstanceList}" status="i" var="trainingInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${trainingInstance.id}">${fieldValue(bean: trainingInstance, field: "type")}</g:link></td>

                <td><g:formatDate date="${trainingInstance.deadline}"/></td>

                <td>${fieldValue(bean: trainingInstance, field: "quota")}</td>

                <td>${fieldValue(bean: trainingInstance, field: "trainer")}</td>

                <td>${fieldValue(bean: trainingInstance, field: "packet")}</td>

                <td>${fieldValue(bean: trainingInstance, field: "room")}</td>

                <td><g:link controller="trainingUnit" action="related" id="${trainingInstance.id}">Lihat</g:link></td>

                <td><g:link controller="grade" action="look" id="${trainingInstance.id}">Lihat</g:link></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${trainingInstanceTotal}"/>
    </div>
</div>
</body>
</html>
