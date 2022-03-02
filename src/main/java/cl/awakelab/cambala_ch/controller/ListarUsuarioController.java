package cl.awakelab.cambala_ch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.cambala_ch.model.entity.Usuario;
import cl.awakelab.cambala_ch.model.service.UsuarioService;

@Controller
public class ListarUsuarioController {
	
	@Autowired
	private UsuarioService us;
	
    /**
     * Maneja las solicitudes que se le hacen a la raíz del sitio
     * 
     * @return un objeto {@link ModelAndView} con la respuesta al cliente
     */
    @RequestMapping(path = "/listarusuario", method = RequestMethod.GET)
    public ModelAndView mostrarListarUsuario() {
    	
    	List<Usuario> usuario = us.getAll();
    	
        return new ModelAndView("listarusuario", "usuario", usuario);
    }

}

