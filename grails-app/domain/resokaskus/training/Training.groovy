package resokaskus.training

class Training {

    static searchable = true

    Packet packet
    Room room
    User trainer
    String type
    Date deadline
    int quota = 25
    double sum
    int minimum
    int maximum
    
    static transients = ['sum', 'minimum', 'maximum']

    static constraints = {
        type(blank: false, inList: ['Seminar', 'Kelas'])
        deadline(blank: false, attributes: [precision: "minute"])
        quota(blank: false, matches: /[0-9]*/)
        trainer(blank: false)
    }
                                                                     
    static mapping = {
        columns {
            packet lazy: false
            room lazy: false
            trainer lazy: false
        }
    }

    String toString() {
        "Training no: ${id}, Deadline: ${deadline}, (${countofTrainee()}/${quota})"
    }

    int countofTrainee() {
        Registration.countBytraining(this)
    }
    
    int totalIncome(){
        packet.price.toInteger() * countofTrainee()
    }

    boolean isQuotaFull() {
        if (countofTrainee() < quota) {
            false
        }

        else true
    }
    
    // grade
    
    def getGradeList(){
        def gradeList = Grade.findAllByTraining(this)
        gradeList
    }
    
    int getMaxGrade(){
        getGradeList().each{ grade ->
            maximum = 0
            
            if (grade.finalGrade > maximum){
                maximum = grade.finalGrade
            }
        }  
        
        maximum  
    }
    
    int getMinGrade(){
        getGradeList().each{ grade ->
            minimum = 0
            
            if (minimum < grade.finalGrade){
                minimum = grade.finalGrade
            }
        }  
        
        minimum
    }
    
    double getAvgGrade(){
        sum = 0
        def iterator = 0        
        getGradeList().each{ grade ->             
            sum+=grade.finalGrade
            iterator++
        }
        
        sum/iterator
    }
}