<%@ page import="resokaskus.training.Registration; resokaskus.training.Training; dwiwahyudi.protectionPackage.RijndaelUtil; resokaskus.training.User" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-user" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list user">

        <g:if test="${userInstance?.userId}">
            <li class="fieldcontain">
                <span id="userId-label" class="property-label"><g:message code="user.userId.label"
                                                                          default="User Id"/></span>

                <span class="property-value" aria-labelledby="userId-label"><b><g:fieldValue bean="${userInstance}"
                                                                                          field="userId"/></b></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.prename}">
            <li class="fieldcontain">
                <span id="prename-label" class="property-label"><g:message code="user.prename.label"
                                                                           default="Prename"/></span>

                <span class="property-value" aria-labelledby="prename-label"><g:fieldValue bean="${userInstance}"
                                                                                           field="prename"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.surname}">
            <li class="fieldcontain">
                <span id="surname-label" class="property-label"><g:message code="user.surname.label"
                                                                           default="Surname"/></span>

                <span class="property-value" aria-labelledby="surname-label"><g:fieldValue bean="${userInstance}"
                                                                                           field="surname"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.password}">
            <li class="fieldcontain">
                <span id="password-label" class="property-label"><g:message code="user.password.label"
                                                                            default="Password"/></span>

                <span class="property-value" aria-labelledby="password-label">${RijndaelUtil.decrypt(userInstance.password)}</span>

            </li>
        </g:if>

        <g:if test="${userInstance?.contact}">
            <li class="fieldcontain">
                <span id="contact-label" class="property-label"><g:message code="user.contact.label"
                                                                           default="Contact"/></span>

                <span class="property-value" aria-labelledby="contact-label"><g:fieldValue bean="${userInstance}"
                                                                                           field="contact"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.KTP}">
            <li class="fieldcontain">
                <span id="KTP-label" class="property-label"><g:message code="user.KTP.label" default="KTP"/></span>

                <span class="property-value" aria-labelledby="KTP-label"><g:fieldValue bean="${userInstance}"
                                                                                       field="KTP"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.address}">
            <li class="fieldcontain">
                <span id="address-label" class="property-label"><g:message code="user.address.label"
                                                                           default="Address"/></span>

                <span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${userInstance}"
                                                                                           field="address"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.type}">
            <li class="fieldcontain">
                <span id="type-label" class="property-label"><g:message code="user.type.label" default="Type"/></span>

                <span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${userInstance}"
                                                                                        field="type"/></span>

            </li>
        </g:if>

        <g:if test="${userInstance?.photo}">
            <li class="fieldcontain">
                <span id="photo-label" class="property-label"><g:message code="user.photo.label"
                                                                         default="Photo"/></span>
                <img width="150" src="${createLink(action: 'displayLogo', id: userInstance?.id)}"/>
            </li>
        </g:if>

    </ol>

    <hr>

    <br />

    <h1>Daftar training/pelatihan yang sudah dijalani:</h1>

    <ul>
        <g:each var='n' in="${Registration.findAllByUser(userInstance, [order: "time", order: "desc"])}">
            <li style="margin-left: 30px">
                <g:link controller="training" action="show" id="${n.training.id}">
                    ${n.training.toString()}
                </g:link>
            </li>
        </g:each>

        <br>
    </ul>

    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${userInstance?.id}"/>
            <g:link class="edit" action="edit" id="${userInstance?.id}"><g:message code="default.button.edit.label"
                                                                                   default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
