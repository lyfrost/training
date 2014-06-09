<%@ page import="dwiwahyudi.protectionPackage.RijndaelUtil; resokaskus.training.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userId', 'error')} required">
    <label for="userId">
        <g:message code="user.userId.label" default="User Id"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="userId" maxlength="20" required="" value="${userInstance?.userId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'prename', 'error')} required">
    <label for="prename">
        <g:message code="user.prename.label" default="Prename"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="prename" maxlength="80" required="" value="${userInstance?.prename}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'surname', 'error')} required">
    <label for="surname">
        <g:message code="user.surname.label" default="Surname"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="surname" maxlength="80" required="" value="${userInstance?.surname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="user.password.label" default="Password"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="password" maxlength="64" required="" value="${RijndaelUtil.decrypt(userInstance?.password)}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'contact', 'error')} required">
    <label for="contact">
        <g:message code="user.contact.label" default="Contact"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="contact" pattern="${userInstance.constraints.contact.matches}" required=""
                 value="${userInstance?.contact}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'KTP', 'error')} required">
    <label for="KTP">
        <g:message code="user.KTP.label" default="KTP"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="KTP" maxlength="40" required="" value="${userInstance?.KTP}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address', 'error')} required">
    <label for="address">
        <g:message code="user.address.label" default="Address"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="address" maxlength="100" required="" value="${userInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'type', 'error')} required">
    <label for="type">
        <g:message code="user.type.label" default="Type"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="type" from="${userInstance.constraints.type.inList}" required="" value="${userInstance?.type}"
              valueMessagePrefix="user.type"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="user.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="email" maxlength="100" required="" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'photo', 'error')} required">
    <label for="photo">
        <g:message code="user.photo.label" default="Photo"/>
        <span class="required-indicator">*</span>
    </label>
    <input type="file" id="photo" name="photo"/>
</div>

