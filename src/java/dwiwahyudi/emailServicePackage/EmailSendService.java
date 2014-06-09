package dwiwahyudi.emailServicePackage;

public class EmailSendService {

	/**
	 * @param args
	 */
	public void SendGreetingMail(String dest, String username) {
		SendMailTLS smt = new SendMailTLS();
		smt.doSend("training.bprtik@gmail.com", "sman12jkt", "Selamat Datang di Training BPRTIK",
		dest, "Akun anda yakni " + username + ", sudah didaftarkan pada sistem training BPRTIK, harap hubungi administrator kami atau kunjungi langsung gedung BPRTIK.<br /> <br /> <br /> dikirim oleh ${appname}");
	}

	public void SendNotificationMail() {
			SendMailTLS smt = new SendMailTLS();
			smt.doSend("training.bprtik@gmail.com", "sman12jkt", "Selamat Datang di Training BPRTIK",
			"dwi.wahyudi.14@gmail.com", "Akun anda yakni , sudah didaftarkan pada sistem training BPRTIK, harap hubungi administrator kami atau kunjungi langsung gedung BPRTIK.");
	}
}
