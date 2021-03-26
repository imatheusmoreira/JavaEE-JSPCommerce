package br.edu.ifce.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CheckCredentials extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String dbPasswd;

	public String getDbPasswd() {
		return dbPasswd;
	}

	public void setDbPasswd(String dbPasswd) {
		this.dbPasswd = dbPasswd;
	}

	public CheckCredentials() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		this.dbPasswd = config.getInitParameter("admin");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nomeUsuario = request.getParameter("nomeUsuario");
		String senhaUsuario = request.getParameter("senhaUsuario");
		if (nomeUsuario.equals("admin") && senhaUsuario.equals(this.dbPasswd)) {
			request.getSession().setAttribute("usuario", nomeUsuario);
			response.sendRedirect("produtos");
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
		}
	}

}
