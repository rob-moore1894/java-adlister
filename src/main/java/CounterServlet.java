import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CounterServlet", urlPatterns = "/count")
public class CounterServlet extends HttpServlet {
    private int count = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String reset = request.getParameter("reset");
        if (reset == null) {
            count += 1;
        } else {
        count = 0;
        }
        response.getWriter().println("Count for this page: " + count);
    }
}
