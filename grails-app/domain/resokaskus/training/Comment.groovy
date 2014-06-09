package resokaskus.training

class Comment {
    String name
    String email
    String title
    String content
    Date dateCreated

    static belongsTo = [news: News]

    static constraints = {
        title(blank: false, size: 5..100)
        name(blank: false, size: 3..100)
        email(blank: false, email: true)
        content(blank: false, size: 3..500)
        dateCreated(attributes: [precision: "minute"])
    }

    static mapping = {
        columns {
            news lazy: false
        }

        sort dateCreated: "desc"
    }
}
