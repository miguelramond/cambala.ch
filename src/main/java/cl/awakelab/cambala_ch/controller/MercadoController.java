package cl.awakelab.cambala_ch.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MercadoController {
    /**
     * Maneja las solicitudes que se le hacen a la raíz del sitio
     * 
     * @return un objeto {@link ModelAndView} con la respuesta al cliente
     */
    @RequestMapping(path = "/mercado", method = RequestMethod.GET)
    public ModelAndView mostrarPublicar() {
        return new ModelAndView("mercado");
    }

}