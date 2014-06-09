package resokaskus.training

class News {

    static searchable = true
    
    String judul
    String isi
    Date date
    String operator

    static hasMany = [comment:Comment]

    static constraints = {
        judul(blank: false, size: 5..50)
        isi(blank: false, size: 5..5000)
        date(blank: false,attributes: [precision: "minute"])
        operator(blank: false, size: 5..50)
    }

    String toString(){
        "${judul}, ${date}"
    }
}
