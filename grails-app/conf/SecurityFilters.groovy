import resokaskus.training.User
import resokaskus.training.UserController

class SecurityFilters {
    UserController a = new UserController()

    def filters = {

        doLogin(controller: 'grade', action: 'create|edit|delete') {
            before = {
                if (!controllerName)
                    return true

                User userThis = session.user
                a.redirectNow(userThis, 'Trainer')
            }
        }

        doLogin(controller: 'user', action: 'show|edit') {
            before = {
                if (!controllerName)
                    return true

                User userThis = session.user
                if (userThis?.getType() != "Admin") {

                    if(params.id.toString() != userThis?.getId().toString()){
                        redirect(controller:'user', action:'login')
                        return false
                    }

                    else return true
                }

                else return true
            }
        }

        doLogin(controller: 'packet|training|trainingUnit|packet|room|trainerSkill|news|stat', action: 'create|edit|delete') {
            before = {
                if (!controllerName)
                    return true

                User userThis = session.user
                a.redirectNow(userThis, 'Admin')
            }
        }
    }
}