package cl.awakelab.cambala_ch.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.cambala_ch.model.entity.Cosas;
import cl.awakelab.cambala_ch.model.entity.Usuario;
import cl.awakelab.cambala_ch.model.service.CosasService;
import cl.awakelab.cambala_ch.model.service.UsuarioService;

@Controller
public class ActualizarCosaController {
	
	@Autowired
	private CosasService cs;
	
	@Autowired
	private UsuarioService us;

    @RequestMapping(path = "/vercosa/{id}", method = RequestMethod.GET)
    public ModelAndView verCosa(@PathVariable("id") long idcosa) {
    	
    	Cosas cosa = cs.getOne(idcosa);
    	
        return new ModelAndView("vercosa", "cosa", cosa);
    }
    
    @RequestMapping(path = "/editarcosa/{id}", method = RequestMethod.GET)
    public ModelAndView mostrarEditarCosa(@PathVariable("id") long idcosa) {
    	
    	Cosas cosa = cs.getOne(idcosa);
    	
        return new ModelAndView("editarcosa", "cosa", cosa);
    }
    
    @RequestMapping(path = "/editarcosa/{id}", method = RequestMethod.POST)
    public ModelAndView editarCosa(@PathVariable("id") long idusuario) {
    	
    	List<Cosas> cosas = cs.getAll();
    	
        return new ModelAndView("panelusuario", "cosa", cosas);
    }
    
    @RequestMapping(path = "/eliminarcosa/{id}", method = RequestMethod.GET)
    public ModelAndView eliminarCosa(@PathVariable("id") long idcosa) {
    	
    	cs.delete(idcosa);
    	
    	Usuario u = new Usuario();
    	
    	/* Uso de SecurityContextHolder para tomar nombre de usuario 
    	de persona que sube la cosa */
    	Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    	if (!(authentication instanceof AnonymousAuthenticationToken)) {
    		// En caso de estar logeado, almacenar uname
    	    String currentUserName = authentication.getName();
    	    
    	    // Debug
    	    // System.out.println(currentUserName);
    	    
    	    // Buscar Usuario por uname
    	    u = us.getByUname(currentUserName);
    	  
    	}
    	
    	List<Cosas> cosas = cs.getByIdusuario(u.getIdusuario());
    	
        return new ModelAndView("panelusuario", "cosas", cosas);
    }
	
}
