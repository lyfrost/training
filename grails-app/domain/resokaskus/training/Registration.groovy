package resokaskus.training

class Registration {

    static belongsTo = [training: Training]
    Date time
    String operator
    User user

    static constraints = {
        user(blank:false)
        training(blank:false)
    }
    
    int getPrice(){
        training.packet.price.toInteger()
    }
}
