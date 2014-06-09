<%@ page import="resokaskus.training.Registration" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'registration.label', default: 'Registration')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-registration" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                   default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-registration" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list registration">

        <g:if test="${registrationInstance?.user}">
            <li class="fieldcontain">
                <span id="user-label" class="property-label"><g:message code="registration.user.label"
                                                                        default="User"/></span>

                <span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show"
                                                                                  id="${registrationInstance?.user?.id}">${registrationInstance?.user?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${registrationInstance?.training}">
            <li class="fieldcontain">
                <span id="training-label" class="property-label"><g:message code="registration.training.label"
                                                                             default="training"/></span>

                <span class="property-value" aria-labelledby="training-label"><g:link controller="training"
                                                                                       action="show"
                                                                                       id="${registrationInstance?.training?.id}">${registrationInstance?.training?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${registrationInstance?.operator}">
            <li class="fieldcontain">
                <span id="operator-label" class="property-label"><g:message code="registration.operator.label"
                                                                            default="Operator"/></span>

                <span class="property-value" aria-labelledby="operator-label"><g:fieldValue
                        bean="${registrationInstance}" field="operator"/></span>

            </li>
        </g:if>

        <g:if test="${registrationInstance?.time}">
            <li class="fieldcontain">
                <span id="time-label" class="property-label"><g:message code="registration.time.label"
                                                                        default="Time"/></span>

                <span class="property-value" aria-labelledby="time-label"><g:formatDate
                        date="${registrationInstance?.time}"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${registrationInstance?.id}"/>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
