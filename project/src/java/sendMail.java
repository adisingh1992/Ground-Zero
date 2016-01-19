package bean;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class sendMail{
	public static void sendE(String email, String uname, String pass) {
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");
		Session session;
                session = Session.getDefaultInstance(props, new javax.mail.Authenticator(){
                        @Override
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication("adi.singh1992","2don2dtitq");
                        }
                    });
		try {
		    Message message = new MimeMessage(session);
		    message.setFrom(new InternetAddress("adi.singh1992@gmail.com"));
                    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
                    message.setSubject("Welcome To Ground-Zero");
                    message.setText("Hey There, \n\nWelcome to Ground-Zero. "
                            + "Below are your Login details for future reference.\n\n User-Name: "+uname+" \n\n "
                            + "Password: "+pass+"");
                    Transport.send(message);
		}catch(MessagingException e){
			throw new RuntimeException(e);
		}
	}
}