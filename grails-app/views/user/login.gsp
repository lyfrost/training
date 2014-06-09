<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Login</title>
</head>

<body>

<g:if test="${flash.message}">

    <div class="message">${flash.message}</div>
</g:if>
<g:form action="validate">
    <input type="hidden" name="cName" value="${cName}">
    <input type="hidden" name="aName" value="${aName}">
    <input type="hidden" name="usertype" value="${usertype}">
    <br/>
    <br/>
    <center><img
            src="${resource(dir: 'images', file: 'lock.png')}" width=110/><br/>
        Laman yang anda akses membutuhkan otentifikasi</center>
    <table>
        <tr class="prop">
            <td class="name">
                <label for="userId">User ID:</label>
            </td>
            <td class="value">
                <input type="text" id="userId" name="userId" value="">
            </td>
        </tr>

        <tr class="prop">
            <td class="name">
                <label for="password">Password:</label>
            </td>
            <td class="value">
                <input type="password" id="password" name="password" value="">
            </td>
        </tr>
        <tr>
            <td>
                <img src="${createLink(controller: 'simpleCaptcha', action: 'captcha')}"/>
            </td>
            <td>
                <label for="captcha">Ketik kode capcay tersebut</label>
                <g:textField name="captcha"/>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Login"/>
            </td>
        </tr>
    </table>
</g:form>

<br/>
Anda belum punya akun? Silakan <g:link controller="user" action="create"><img
        src="${resource(dir: 'images', file: 'daftarakun.png')}"/><br/></g:link>
</body>
</html>