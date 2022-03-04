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

import cl.awakelab.cambala_ch.model.entity.Usuario;
import cl.awakelab.cambala_ch.model.service.UsuarioService;

@Controller
public class ActualizarUsuarioController {
	
	@Autowired
	private UsuarioService us;
	
	/* Se inyecta instancia de PasswordEncoder para codificar con Bcrypt 
	 * contraseña ingresada en creacion de nuevo usuario */
	@Autowired
	PasswordEncoder pe;
	
    @RequestMapping(path = "/actualizarusuario/{id}", method = RequestMethod.GET)
    public ModelAndView mostrarActualizarUsuario(@PathVariable("id") long idusuario) {
    	
    	Usuario usuario = us.getOne(idusuario);
    	
        return new ModelAndView("actualizarusuario", "usuario", usuario);
    }
    
    @RequestMapping(path = "/actualizar", method = RequestMethod.POST)
    public ModelAndView actualizarUsuario(@ModelAttribute("usuario")Usuario u,
    		BindingResult result, ModelMap model) {
    	
    	String psw = pe.encode(u.getPsw());
    	u.setPsw(psw);
    	
    	// u.setTipousuario(2);
    	
    	model.addAttribute("idusuario", u.getIdusuario());
    	model.addAttribute("uname", u.getUname());
    	model.addAttribute("psw", u.getPsw());
    	model.addAttribute("email", u.getEmail());
    	model.addAttribute("tlf", u.getTlf());
    	model.addAttribute("run", u.getRun());
    	model.addAttribute("direccion", u.getDireccion());
    	model.addAttribute("comuna", u.getComuna());
    	model.addAttribute("tipousuario", u.getTipousuario());
    	
    	us.update(u);
    	
    	List<Usuario> usuario = us.getAll();
    	
        return new ModelAndView("listarusuario", "usuario", usuario);
    }
    
    @RequestMapping(path = "/eliminarusuario/{id}", method = RequestMethod.GET)
    public ModelAndView eliminarUsuario(@PathVariable("id") long idusuario) {
    	
    	us.delete(idusuario);
    	
    	List<Usuario> usuario = us.getAll();
    	
        return new ModelAndView("listarusuario", "usuario", usuario);
    }

}