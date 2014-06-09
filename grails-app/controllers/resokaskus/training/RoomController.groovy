package resokaskus.training

class RoomController {

    def scaffold = Room

    def displayLogo = {
        def room = Room.get(params.id)
        response.contentType = "image/jpeg"
        response.contentLength = room?.photo.length
        response.outputStream.write(room?.photo)
    }

    def index() {
        redirect(action: "list")
    }
}
