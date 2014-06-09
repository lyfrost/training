package resokaskus.training

class Packet {

    String name
    String description
    String price

    static constraints = {
        name(blank: false, size: 5..200)
        description(blank: false, size: 5..200)
        price(blank: false, matches: /[0-9]*/)
    }

    String toString() {
        "Paket ${name} Rp. ${price}"
    }
}
