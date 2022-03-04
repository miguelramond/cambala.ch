package cl.awakelab.cambala_ch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.cambala_ch.model.entity.Cosas;
import cl.awakelab.cambala_ch.model.entity.Usuario;
import cl.awakelab.cambala_ch.model.service.UsuarioService;

@Controller
public class CrearUsuarioController {
	
	@Autowired
	private UsuarioService us;
	
	/* Se inyecta instancia de PasswordEncoder para codificar con Bcrypt 
	 * contraseña ingresada en creacion de nuevo usuario */
	@Autowired
	PasswordEncoder pe;
	
    @RequestMapping(path = "/crearusuario", method = RequestMethod.GET)
    public ModelAndView crearUsuario() {
    	
        return new ModelAndView("crearusuario", "usuario", new Usuario());
    }
    
    @RequestMapping(path = "/crearusuario", method = RequestMethod.POST)
    public ModelAndView docrearUsuario(@ModelAttribute("usuario")Usuario u,
    		BindingResult result, ModelMap model) {
    	
    	String psw = pe.encode(u.getPsw());
    	u.setPsw(psw);
    	
    	// Se asigna tipo de usuario '2' por defecto (Usuario)
    	u.setTipousuario(2);
    	
    	model.addAttribute("idusuario", u.getIdusuario());
    	model.addAttribute("uname", u.getUname());
    	model.addAttribute("psw", u.getPsw());
    	model.addAttribute("email", u.getEmail());
    	model.addAttribute("tlf", u.getTlf());
    	model.addAttribute("run", u.getRun());
    	model.addAttribute("direccion", u.getDireccion());
    	model.addAttribute("comuna", u.getComuna());
    	model.addAttribute("tipousuario", u.getTipousuario());
    	
    	us.create(u);
    	
        return new ModelAndView("publicar", "cosas", new Cosas());
    }

}