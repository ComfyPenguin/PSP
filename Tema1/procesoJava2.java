import java.io.IOException;

public class procesoJava2 {
    public static void main(String[] args) {
        ProcessBuilder pb = new ProcessBuilder();
        pb.command("firefox", "https://ieseljust.com");
        try {
            Process p1=pb.start();
            Process p2=pb.start();
            System.out.println("PID del procés 1:"+p1.pid());
            System.out.println("PID del procés 2:"+p2.pid());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}