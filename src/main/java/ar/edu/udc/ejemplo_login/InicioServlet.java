package ar.edu.udc.ejemplo_login;


import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rmpalacio
 */
@WebServlet("")
public class InicioServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().setAttribute("hora_ingreso", new Date());
        req.getRequestDispatcher("/WEB-INF/inicio.jsp").forward(req, resp);
    }
    
}
