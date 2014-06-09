package resokaskus.training

class Room {

    static searchable = true

    String name
    byte[] photo

    static constraints = {
        name(blank: false, size: 5..50)
        photo(maxSize: 1000000)
    }

    String toString() {
        "${name}"
    }
}
