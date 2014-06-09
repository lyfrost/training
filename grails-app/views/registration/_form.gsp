<%@ page import="resokaskus.training.Registration" %>



<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="registration.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${resokaskus.training.User.findAllByTypeOrType("Student", "Trainer")}" optionKey="id" required="" value="${registrationInstance?.user?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationInstance, field: 'training', 'error')} required">
	<label for="training">
		<g:message code="registration.training.label" default="training" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="training" name="training.id" from="${resokaskus.training.Training.findAllByDeadlineGreaterThan(new Date())}" optionKey="id" required="" value="${registrationInstance?.training?.id}" class="many-to-one"/>
</div>