package cl.awakelab.cambala_ch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.cambala_ch.model.entity.Cosas;
import cl.awakelab.cambala_ch.model.service.CosasService;

@Controller
public class ListarCosasController {
	
	@Autowired
	private CosasService cs;
	
    /**
     * Maneja las solicitudes que se le hacen a la raíz del sitio
     * 
     * @return un objeto {@link ModelAndView} con la respuesta al cliente
     */
    @RequestMapping(path = "/listarcosas", method = RequestMethod.GET)
    public ModelAndView mostrarListarCosas() {
    	
    	List<Cosas> cosas = cs.getAll();
    	
        return new ModelAndView("listarcosas", "cosas", cosas);
    }

}
