import java.io.IOException;

public class procesoJava1 {
    public static void main(String[] args) {
        ProcessBuilder pb = new ProcessBuilder();
        pb.command("firefox", "https://ieseljust.com");
        try {
            pb.start();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}