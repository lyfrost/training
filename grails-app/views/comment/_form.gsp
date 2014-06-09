<%@ page import="resokaskus.training.Comment" %>


<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="comment.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="100" required="" value="${commentInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="comment.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="100" required="" value="${commentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="comment.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${commentInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="comment.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="500" required="" value="${commentInstance?.content}"/>
</div>



