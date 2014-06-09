package resokaskus.training

class TrainingUnitController {

    def scaffold = TrainingUnit

    def index() {
        redirect(action: "list")
    }

    def related(){
        def trainingThis = Training.findById(params.id)

        render(view:"list",model:[ trainingUnitInstanceList: TrainingUnit.findAllByTraining(trainingThis), trainingUnitInstanceTotal: TrainingUnit.countByTraining(trainingThis)])
    }
}
