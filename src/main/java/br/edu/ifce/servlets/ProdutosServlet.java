package br.edu.ifce.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifce.bean.Produto;
import br.edu.ifce.service.ProdutosService;

public class ProdutosServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = (String) request.getSession().getAttribute("usuario");
		if (user == null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
		
	    ProdutosService produtosService = new ProdutosService();
		List<Produto> produtos = produtosService.listar();
        request.setAttribute("produtos", produtos);
        request.getRequestDispatcher("/produtos.jsp").forward(request, response);

	}

}
