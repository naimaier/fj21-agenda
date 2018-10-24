package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.jdbc.model.Contato;

public class VisualizaAlteraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Long id = Long.parseLong(req.getParameter("id"));
		
		Contato contato = new ContatoDao().getContato(id);
		
		req.setAttribute("contato", contato);
		
		return "/WEB-INF/jsp/altera-contato.jsp";
	}

}
