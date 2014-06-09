package resokaskus.training

class TrainingUnit {

    static belongsTo = [training: Training]
    Date start
    Date end

    static constraints = {
        start(blank: false, attributes: [precision: "minute"])
        end(blank: false, attributes: [precision: "minute"])
    }

    static mapping = {
        columns {
            training lazy:false
        }
    }
}
