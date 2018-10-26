package br.com.caelum.mvc.logica;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.jdbc.model.Contato;

public class VisualizaAlteraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Long id = Long.parseLong(req.getParameter("id"));
		
		//busca a conexao pendurada na requisicao
		Connection connection = (Connection) req.getAttribute("conexao");
				
		Contato contato = new ContatoDao(connection).getContato(id);
		
		req.setAttribute("contato", contato);
		
		return "/WEB-INF/jsp/altera-contato.jsp";
	}

}
