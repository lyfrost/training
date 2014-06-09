package traininganto

class trainingAntoTagLib {
    def loginToggle = {
        out << "<div>"

        if (session.user) {
            out << "<span style='float:left; margin-left:10px'>"
            out << "Login Sebagai: <a href='http://${request.serverName}:${request.serverPort}${request.contextPath}/user/show/${session.user.getId()}'>"
            out << "${session.user.getUserId()} (${session.user.getType()})"
            out << "</a></span><span style='float:right;margin-right:10px'>"
            out << "<a href='${createLink(controller: 'user', action: 'logout')}'>"
            out << "<img src='${request.contextPath}/images/logoutbtn.png'/></a></span>"
        }

        else {
            out << "<span style='float:right;margin-right:10px'>"
            out << "Anda belum login, silakan "
            out << "<a href='${createLink(controller: 'user', action: 'login')}'>"
            out << "<img src='${request.contextPath}/images/loginbtn.png'/></a></span>"
        }
        out << "</div><br/>"
    }
}