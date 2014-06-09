<%@ page import="resokaskus.training.Grade" %>



<div class="fieldcontain ${hasErrors(bean: gradeInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="grade.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${resokaskus.training.User.list()}" optionKey="id" required="" value="${gradeInstance?.user?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gradeInstance, field: 'training', 'error')} required">
	<label for="training">
		<g:message code="grade.training.label" default="training" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="training" name="training.id" from="${resokaskus.training.Training.list()}" optionKey="id" required="" value="${gradeInstance?.training?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gradeInstance, field: 'finalGrade', 'error')} required">
	<label for="finalGrade">
		<g:message code="grade.finalGrade.label" default="Final Grade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="finalGrade" required="" value="${fieldValue(bean: gradeInstance, field: 'finalGrade')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gradeInstance, field: 'additionalInformation', 'error')} required">
	<label for="additionalInformation">
		<g:message code="grade.additionalInformation.label" default="Additional Information" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="additionalInformation" required="" value="${gradeInstance?.additionalInformation}"/>
</div>

