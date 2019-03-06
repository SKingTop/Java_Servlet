package kz.karaev.jsp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Main extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public Main() {
        super();
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        if (request.getParameter("calcSubmit") != null) {

            Result obj = null;
            try {
                double a = Double.parseDouble(request.getParameter("a"));
                double b = Double.parseDouble(request.getParameter("b"));
                double x = Double.parseDouble(request.getParameter("x"));
                
                double y;
                
                if (x >= 4) {
                    y = 12 * (x/(Math.pow(a, 3) - b));
                } else {
                    y = 3 * Math.pow(x, 2) - a * b;
                }

                obj = new Result();
                obj.setY(y);

                request.setAttribute("form", obj);
                getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
                return;
            } catch (Exception e) {
                getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
                return;

            }
        }

        getServletContext().getRequestDispatcher("/input.jsp").forward(request, response);

    }

}
