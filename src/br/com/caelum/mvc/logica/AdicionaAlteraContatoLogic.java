package br.com.caelum.mvc.logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.jdbc.model.Contato;

public class AdicionaAlteraContatoLogic implements Logica{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		Contato contato = new Contato();
		
		contato.setNome(req.getParameter("nome"));
		contato.setEndereco(req.getParameter("endereco"));
		contato.setEmail(req.getParameter("email"));
		
		//Converte a data
		String dataEmTexto = req.getParameter("dataNascimento");
		Calendar dataNascimento = null;
		try {
			Date data = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(data);
		} catch (ParseException e) {
			System.out.println("Erro de conversão de data");
		}
		contato.setDataNascimento(dataNascimento);
		
		ContatoDao dao = new ContatoDao();
		
		if (req.getParameter("id") != null) {
			contato.setId(Long.parseLong(req.getParameter("id")));
			dao.altera(contato);
		} else {
			dao.adiciona(contato);
		}
		
		return "mvc?logica=ListaContatosLogic";
	}

}
