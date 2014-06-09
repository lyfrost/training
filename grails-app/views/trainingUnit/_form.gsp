<%@ page import="resokaskus.training.TrainingUnit" %>



<div class="fieldcontain ${hasErrors(bean: trainingUnitInstance, field: 'start', 'error')} required">
    <calendar:resources lang="en" theme="tiger"/>
    <label for="start">
        <g:message code="trainingUnit.start.label" default="Start"/>
        <span class="required-indicator">*</span>
    </label>
    <calendar:datePicker dateFormat="%d-%m-%Y %I:%M" showTime="true" name="start" precision="minute" value="${trainingUnitInstance?.start}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingUnitInstance, field: 'end', 'error')} required">
    <label for="end">
        <g:message code="trainingUnit.end.label" default="End"/>
        <span class="required-indicator">*</span>
    </label>
    <calendar:datePicker dateFormat="%d-%m-%Y %I:%M" showTime="true" name="end" precision="minute" value="${trainingUnitInstance?.end}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingUnitInstance, field: 'training', 'error')} required">
    <label for="training">
        <g:message code="trainingUnit.training.label" default="training"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="training" name="training.id" from="${resokaskus.training.Training.list()}" optionKey="id"
              required="" value="${trainingUnitInstance?.training?.id}" class="many-to-one"/>
</div>

