package resokaskus.training

import dwiwahyudi.dateUtil.*

/*

#Jumlah user yang ikut training
A: total user
B: bulan / minggu diadakannya training

jadi bisa milih mau ditampilkan perbulan atau per minggu

#Diagram jumlah user yang ikut training
A: nama pelatihan
B: jumlah user yang jdi peserta

#Diagram income yang didapat 
 A: jumlah income bulan-x
 B: bulan-x 

#Diagram income per training
 A: jumlah income training-x
 B: training-x

#diagram score user
 A: score max,min n average user per training 
 B: training-x
x = variabel yang sesuai. misal bulan juli, bulan agustus, training linux, training design, 

*/

class StatController {

    def dateUtil = new DateUtil() 
    def df = new DateFormatter()

    def index() {
        //println regisPerTime()
        def myColumns = [['string', 'Bulan'], ['number', 'Registrasi']]
        def myColumns2 = [['string', 'Training'], ['number', 'Registrasi']]
        def myColumns3 = [['string', 'Bulan'], ['number', 'Income']]
        def myColumns4 = [['string', 'Training'], ['number', 'Income']]
        def myColumns5 = [['string', 'Training'], ['number', 'tertinggi'], ['number', 'terendah'], ['number', 'rata rata']]
        [
            regisPerTime:regisPerTime(), columns:myColumns,
            userPerTraining:userPerTraining(), columns2:myColumns2,
            incomePerMonth:incomePerMonth(), columns3:myColumns3,
            incomePerTraining:incomePerTraining(), columns4:myColumns4,
            gradeStat:gradeStat(), columns5:myColumns5
        ]                    
    }
       
    def regisPerTime(){       
        def dataToRender = [] 
        def regisCountPerMonthList = []
        Date starting = dateUtil.firstOfMonth(new Date())
        Date ending = new Date()
        24.times{    
            dataToRender = []        
            def regisCounter = Registration.countByTimeBetween(starting, ending)
            dataToRender<<df.onlyMonthAndYear(starting) 
            dataToRender<<regisCounter                                
            ending = starting      
            starting = dateUtil.firstOfPrevMonth(starting)       
            regisCountPerMonthList<<dataToRender  
        }
        
        regisCountPerMonthList
    }
    
    def userPerTraining(){
        def dataToRender = [] 
        def trainingCountPerTrainingList = []   
        def trainingCounter = Training.list(max: 30, sort: "deadline", order: "desc")     
          trainingCounter.each{ trainingCounterEach ->
            dataToRender = []
            dataToRender<<"${trainingCounterEach.packet} (${trainingCounterEach.id})"
            dataToRender<<trainingCounterEach.countofTrainee()
            trainingCountPerTrainingList<<dataToRender
          }
        
         trainingCountPerTrainingList
    }
    
    def incomePerMonth(){
        def dataToRender = [] 
        def incomePerMonthList = []
        Date starting = dateUtil.firstOfMonth(new Date())
        Date ending = new Date()
        def sum = 0
        24.times{    
            dataToRender = []        
            def incomePerMonth = Registration.findAllByTimeBetween(starting, ending)
            
            sum = 0
            incomePerMonth.each{ regis ->                
                sum+=regis.getPrice()   
            }
            
            dataToRender<<df.onlyMonthAndYear(starting) 
            dataToRender<<sum                                
            ending = starting      
            starting = dateUtil.firstOfPrevMonth(starting)       
            incomePerMonthList<<dataToRender  
        }
        
        incomePerMonthList    
    }
    
    def incomePerTraining(){
        def dataToRender = [] 
        def incomePerTrainingList = []   
        def incomeCounter = Training.list(max: 30, sort: "deadline", order: "desc")     
          incomeCounter.each{ incomeCounterEach ->
            dataToRender = []
            dataToRender<<"${incomeCounterEach.packet} (${incomeCounterEach.id})"
            dataToRender<<incomeCounterEach.totalIncome()
            incomePerTrainingList<<dataToRender
          }
        incomePerTrainingList
    }    
    
    def gradeStat(){
        def dataToRender = []
        def gradeList = []
        
        def trainingCounter = Training.list(max: 30, sort: "deadline", order: "desc")
        trainingCounter.each { trainingCounterEach ->
            dataToRender = []
            dataToRender<<"${trainingCounterEach.packet} (${trainingCounterEach.id})"
            println trainingCounterEach.getMaxGrade()
            println trainingCounterEach.getMinGrade()
            println trainingCounterEach.getAvgGrade()
            dataToRender<<trainingCounterEach.getMaxGrade()
            dataToRender<<trainingCounterEach.getMinGrade()
            dataToRender<<trainingCounterEach.getAvgGrade()
            gradeList<<dataToRender
        }
        
        gradeList
    }
}