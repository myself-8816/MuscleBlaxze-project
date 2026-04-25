package com.gym.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import com.gym.dao.ProductDAO;

public class ProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("products", ProductDAO.getProducts());
        RequestDispatcher rd = request.getRequestDispatcher("views/products.jsp");
        rd.forward(request, response);
    }
}
