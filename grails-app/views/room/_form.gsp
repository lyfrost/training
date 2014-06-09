<%@ page import="resokaskus.training.Room" %>



<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="room.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" maxlength="50" required="" value="${roomInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'photo', 'error')} required">
    <label for="photo">
        <g:message code="room.photo.label" default="Photo"/>
        <span class="required-indicator">*</span>
    </label>
    <input type="file" id="photo" name="photo"/>
</div>

