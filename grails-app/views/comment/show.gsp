
<%@ page import="resokaskus.training.Comment" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comment.label', default: 'Comment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-comment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comment">
			
				<g:if test="${commentInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="comment.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${commentInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="comment.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${commentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="comment.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${commentInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="comment.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${commentInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="comment.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${commentInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${commentInstance?.news}">
				<li class="fieldcontain">
					<span id="news-label" class="property-label"><g:message code="comment.news.label" default="News" /></span>
					
						<span class="property-value" aria-labelledby="news-label"><g:link controller="news" action="show" id="${commentInstance?.news?.id}">${commentInstance?.news?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${commentInstance?.id}" />
					<g:link class="edit" action="edit" id="${commentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
