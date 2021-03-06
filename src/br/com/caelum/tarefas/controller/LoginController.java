package br.com.caelum.tarefas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.tarefas.dao.JdbcUsuarioDao;
import br.com.caelum.tarefas.modelo.Usuario;

@Controller
public class LoginController {

	@RequestMapping("loginForm")
	public String loginForm() {
		return "formulario-login";
	}

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(Usuario usuario, HttpSession session) {
		if (new JdbcUsuarioDao().existeUsuario(usuario)) {
			session.setAttribute("usuarioLogado", usuario);
			System.out.println("[INFO] Usuário logado.");
			return "redirect:menu";
		}
		System.out.println("[ERRO] Usuário ou senha não encontrado.");
		return "redirect:loginForm";
	}
	
	@RequestMapping("menu")
	public String menuPrincipal() {
		return "menu";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:loginForm";
	}

}
