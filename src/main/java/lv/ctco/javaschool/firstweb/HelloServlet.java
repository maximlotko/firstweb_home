package lv.ctco.javaschool.firstweb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Max on 3/13/2017.
 * Updated on 18.Mar.2017 - github commit test
 */
@WebServlet(name = "HelloServlet", urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {

    //Post method
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fName = request.getParameter("firstName");
        String lName = request.getParameter("lastName");
        String bDate = request.getParameter("birthDate");

        User somebody = new User(fName, lName, bDate);

        //response.getWriter().print("Hello, " + userName);

        //try to get a userName from the session & save it to a variable,
        // so that it is pertained in one session & not re-asked
/*        request.getSession().setAttribute("fName", somebody.getFirstName());
        request.getSession().setAttribute("lName", somebody.getLastName());
        request.getSession().setAttribute("bDate", somebody.getBirthDate());*/

        request.getSession().setAttribute("user", somebody);

        //redirect to another JSP page
        response.sendRedirect("/hello.jsp");
    }

    //Get method
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().print("Hello World!");
    }
}
