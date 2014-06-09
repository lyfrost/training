package resokaskus.training

class PacketController {

    def scaffold = Packet

    def index() {
        redirect(action: "list")
    }
}
