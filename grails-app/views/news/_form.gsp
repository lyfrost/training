<%@ page import="resokaskus.training.News" %>



<div class="fieldcontain ${hasErrors(bean: newsInstance, field: 'judul', 'error')} required">
    <label for="judul">
        <g:message code="news.judul.label" default="Judul"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="judul" maxlength="50" required="" value="${newsInstance?.judul}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: newsInstance, field: 'isi', 'error')} required">
    <label for="isi">
        <ckeditor:resources/>
        <g:message code="news.isi.label" default="Isi"/>
        <span class="required-indicator">*</span>
    </label>
    <ckeditor:editor name="isi">
        ${newsInstance?.isi}
    </ckeditor:editor>
</div>

