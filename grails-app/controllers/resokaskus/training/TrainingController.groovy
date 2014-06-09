package resokaskus.training

class TrainingController {

    def scaffold = Training

    def index() {
        redirect(action: "list")
    }

    def relatedToTrainer(){
        def trainerThis = User.findById(session.user.id)

        render(view: "list", model: [trainingInstanceList: Training.findAllByTrainer(trainerThis), trainingInstanceTotal: Training.countByTrainer(trainerThis)])
    }
}
