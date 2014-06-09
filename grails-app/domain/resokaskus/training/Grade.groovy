package resokaskus.training

class Grade {

    User user
    Training training
    int finalGrade = 70
    String additionalInformation = "Belum ada informasi tambahan"

    static constraints = {
        user(blank: false)
        training(blank: false)
        finalGrade(blank: false, matches: /[0-9]*/)
        additionalInformation(blank: false)
    }
}
