package resokaskus.training

class User {

    static searchable = true

    String userId
    String prename
    String surname
    String password
    String contact
    String KTP
    String address
    String type
    String email
    byte[] photo

    static constraints = {
        userId(blank: false, size: 5..20, unique: true)
        prename(blank: false, size: 2..80)
        surname(blank: false, size: 2..80)
        password(blank: false, size: 5..64)
        contact(blank: false, matches: /[0-9]*/)
        KTP(blank: false, size: 5..40)
        address(blank: false, size: 5..100)
        type(blank: false, inList: ['Admin', 'Student', 'Trainer'])
        email(blank: false, email: true)
        photo(maxSize: 1000000)
    }

    String toString() {
        "${userId} (${prename} ${surname}) <${type}>"
    }
}
