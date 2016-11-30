package demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Ian on 30/11/2016.
 */
@WebServlet(name = "ControllerServlet", urlPatterns = "/controller")
public class ControllerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String guess = request.getParameter("guess");
        String nric = (String) session.getAttribute("nricc");
        String name = (String) session.getAttribute("name");


        int guessInt = Integer.parseInt(guess);

        int result = Guess.getInstance().guess(nric, guessInt);
        System.out.println("res" + result);

        if (result == 0) {
            request.setAttribute("guess", guess);
            getServletContext().getRequestDispatcher("/sucess.jsp").forward(request, response);


        } else if (result == 999) {

            getServletContext().getRequestDispatcher("/nomore.jsp").forward(request, response);

        } else {
            System.out.println("ran");

            if (result > 0) {

                request.setAttribute("try", "higher");
                System.out.println("higher");


            } else if (result < 0) {

                request.setAttribute("try", "lower");
                System.out.println("lower");

            }
            getServletContext().getRequestDispatcher("/tryagain.jsp").forward(request, response);

        }


    }
}
