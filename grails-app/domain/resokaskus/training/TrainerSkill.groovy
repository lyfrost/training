package resokaskus.training

class TrainerSkill {

    static belongsTo = [user: User]
    boolean isSE
    boolean isNetworking
    boolean isMultimedia

    static constraints = {
        user(blank: false)
        isSE()
        isNetworking()
        isMultimedia()
    }

    String toString() {
        "${user.prename} ${user.surname}"
    }

    static mapping = {
        columns {
            user lazy:false
        }
    }
}
