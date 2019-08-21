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
@WebServlet("/admin/listado")
public class AdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("hora", new Date());
        req.getRequestDispatcher("/admin/index.jsp").forward(req, resp);
    }
    
}
