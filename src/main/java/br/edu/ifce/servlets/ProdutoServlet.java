package br.edu.ifce.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.bean.Produto;
import br.edu.ifce.service.ProdutosService;

public class ProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ProdutoServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String user = (String) request.getSession().getAttribute("usuario");
		if (user == null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
    	ProdutosService produtosService = new ProdutosService();
    	if(request.getParameter("codigo") != null) {
	    	Integer codigo = Integer.parseInt(request.getParameter("codigo"));
	    	Produto produto = produtosService.pegar(codigo);
	        request.setAttribute("produto", produto);
	        request.getRequestDispatcher("produto.jsp").forward(request, response);
    	}else {
    		RequestDispatcher dispatcher = request.getRequestDispatcher("produtos");
			dispatcher.forward(request, response);
    	}
    }

}
