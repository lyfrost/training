package resokaskus.training

class TrainerSkillController {

    def scaffold = TrainerSkill

    def index() {
        redirect(action: "list")
    }
}
