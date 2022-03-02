package cl.awakelab.cambala_ch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
    /**
     * Maneja las solicitudes que se le hacen a la raíz del sitio
     * 
     * @return un objeto {@link ModelAndView} con la respuesta al cliente
     */
    @RequestMapping(path = "/login", method = RequestMethod.GET)
    public ModelAndView mostrarInicio() {
        return new ModelAndView("login");
    }
    
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public ModelAndView errorLogin() {
		
		return new ModelAndView("login", "error", "true");
	}

}
