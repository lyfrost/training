<%@ page import="resokaskus.training.Training" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'training.label', default: 'Training')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-training" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-training" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list training">

        <g:if test="${trainingInstance?.type}">
            <li class="fieldcontain">
                <span id="type-label" class="property-label"><g:message code="training.type.label"
                                                                        default="Type"/></span>

                <span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${trainingInstance}"
                                                                                        field="type"/></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.deadline}">
            <li class="fieldcontain">
                <span id="deadline-label" class="property-label"><g:message code="training.deadline.label"
                                                                            default="Deadline"/></span>

                <span class="property-value" aria-labelledby="deadline-label"><g:formatDate
                        date="${trainingInstance?.deadline}"/></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.quota}">
            <li class="fieldcontain">
                <span id="quota-label" class="property-label"><g:message code="training.quota.label"
                                                                         default="Quota"/></span>

                <span class="property-value" aria-labelledby="quota-label"><g:fieldValue bean="${trainingInstance}"
                                                                                         field="quota"/></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.trainer}">
            <li class="fieldcontain">
                <span id="trainer-label" class="property-label"><g:message code="training.trainer.label"
                                                                           default="Trainer"/></span>

                <span class="property-value" aria-labelledby="trainer-label"><g:link controller="user" action="show"
                                                                                     id="${trainingInstance?.trainer?.id}">${trainingInstance?.trainer?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.packet}">
            <li class="fieldcontain">
                <span id="packet-label" class="property-label"><g:message code="training.packet.label"
                                                                          default="Packet"/></span>

                <span class="property-value" aria-labelledby="packet-label"><g:link controller="packet" action="show"
                                                                                    id="${trainingInstance?.packet?.id}">${trainingInstance?.packet?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${trainingInstance?.room}">
            <li class="fieldcontain">
                <span id="room-label" class="property-label"><g:message code="training.room.label"
                                                                        default="Room"/></span>

                <span class="property-value" aria-labelledby="room-label"><g:link controller="room" action="show"
                                                                                  id="${trainingInstance?.room?.id}">${trainingInstance?.room?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${trainingInstance?.id}"/>
            <g:link class="edit" action="edit" id="${trainingInstance?.id}"><g:message code="default.button.edit.label"
                                                                                       default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
