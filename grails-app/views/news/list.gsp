<%@ page import="resokaskus.training.News" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'news.label', default: 'News')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<g:form action="search">
    <div class="search" style="text-align: right;margin-right: 10px; font-size: small;">
        Cari Berita
        <input type="text" name="q" value="${params.q}"/>
        <input type="submit" value="Cari"/>
    </div>
</g:form>

<br/>

<a href="#list-news" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-news" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="judul" title="${message(code: 'news.judul.label', default: 'Judul')}"/>

            <g:sortableColumn property="isi" title="${message(code: 'news.isi.label', default: 'Isi')}"/>

            <g:sortableColumn property="date" title="${message(code: 'news.date.label', default: 'Date')}"/>

            <g:sortableColumn property="operator" title="${message(code: 'news.operator.label', default: 'Operator')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${newsInstanceList}" status="i" var="newsInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${newsInstance.id}">${fieldValue(bean: newsInstance, field: "judul")}</g:link></td>

                <td>${newsInstance.isi.length() > 100 ? newsInstance.isi[0..99]+"... <i>baca lebih lanjut</i>" : newsInstance.isi}</td>

                <td><g:formatDate date="${newsInstance.date}"/></td>

                <td>${fieldValue(bean: newsInstance, field: "operator")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${newsInstanceTotal}"/>
    </div>
</div>
</body>
</html>
