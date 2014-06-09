<%@ page import="resokaskus.training.Training" %>



<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'type', 'error')} required">
    <label for="type">
        <g:message code="training.type.label" default="Type"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="type" from="${trainingInstance.constraints.type.inList}" required=""
              value="${trainingInstance?.type}" valueMessagePrefix="training.type"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'deadline', 'error')} required">
    <label for="deadline">
        <g:message code="training.deadline.label" default="Deadline"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="deadline" precision="minute" value="${trainingInstance?.deadline}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'quota', 'error')} required">
    <label for="quota">
        <g:message code="training.quota.label" default="Quota"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="quota" required="" value="${fieldValue(bean: trainingInstance, field: 'quota')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'trainer', 'error')} required">
    <label for="trainer">
        <g:message code="training.trainer.label" default="Trainer"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="trainer" name="trainer.id" from="${resokaskus.training.User.findAllByType("Trainer")}" optionKey="id" required=""
              value="${trainingInstance?.trainer?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'packet', 'error')} required">
    <label for="packet">
        <g:message code="training.packet.label" default="Packet"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="packet" name="packet.id" from="${resokaskus.training.Packet.list()}" optionKey="id" required=""
              value="${trainingInstance?.packet?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trainingInstance, field: 'room', 'error')} required">
    <label for="room">
        <g:message code="training.room.label" default="Room"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="room" name="room.id" from="${resokaskus.training.Room.list()}" optionKey="id" required=""
              value="${trainingInstance?.room?.id}" class="many-to-one"/>
</div>

