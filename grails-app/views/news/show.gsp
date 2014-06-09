<%@ page import="resokaskus.training.Comment; resokaskus.training.News" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'news.label', default: 'News')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-news" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-news" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list news">

        <g:if test="${newsInstance?.judul}">
            <li class="fieldcontain">
                <span id="judul-label" class="property-label"><g:message code="news.judul.label"
                                                                         default="Judul"/></span>

                <span class="property-value" aria-labelledby="judul-label"><g:fieldValue bean="${newsInstance}"
                                                                                         field="judul"/></span>

            </li>
        </g:if>

        <g:if test="${newsInstance?.isi}">
            <li class="fieldcontain">
                <span id="isi-label" class="property-label"><g:message code="news.isi.label" default="Isi"/></span>

                <span class="property-value" aria-labelledby="isi-label">${newsInstance.isi}</span>

            </li>
        </g:if>

        <g:if test="${newsInstance?.date}">
            <li class="fieldcontain">
                <span id="date-label" class="property-label"><g:message code="news.date.label" default="Date"/></span>

                <span class="property-value" aria-labelledby="date-label"><g:formatDate
                        date="${newsInstance?.date}"/></span>

            </li>
        </g:if>

        <g:if test="${newsInstance?.operator}">
            <li class="fieldcontain">
                <span id="operator-label" class="property-label"><g:message code="news.operator.label"
                                                                            default="Operator"/></span>

                <span class="property-value" aria-labelledby="operator-label"><g:fieldValue bean="${newsInstance}"
                                                                                            field="operator"/></span>
            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${newsInstance?.id}"/>
            <g:link class="edit" action="edit" id="${newsInstance?.id}"><g:message code="default.button.edit.label"
                                                                                   default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>

    <br />

    <g:link controller="comment" action="create" params="[idNews:newsInstance.id]">
        Buat Komentar Baru
    </g:link>

    <br />
    <br />

    <g:each var="relatedComment" in="${Comment.findAllByNews(newsInstance)}">
        <table border="0">

            <h2>
                ${relatedComment.getTitle()}
            </h2>

            <tr>
                <td>
                    Nama
                </td>
                <td>
                    ${relatedComment.getName()}
                </td>
            </tr>

            <tr>
                <td>
                    E-mail
                </td>
                <td>
                    ${relatedComment.getEmail()}
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    ${relatedComment.getContent()}
                </td>
            </tr>
        </table>

        Komentar dibuat pada: ${relatedComment.getDateCreated()}
		<br/>
        <hr/>
        <br/>
    </g:each>
</div>
</body>
</html>
