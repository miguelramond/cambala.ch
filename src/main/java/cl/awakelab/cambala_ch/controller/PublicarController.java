package cl.awakelab.cambala_ch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cl.awakelab.cambala_ch.model.entity.Cosas;
import cl.awakelab.cambala_ch.model.entity.Usuario;
import cl.awakelab.cambala_ch.model.service.CosasService;
import cl.awakelab.cambala_ch.model.service.UsuarioService;

@Controller
public class PublicarController {

	@Autowired
	CosasService cs;
	
	@Autowired
	UsuarioService us;
	
    @RequestMapping(path = "/publicar", method = RequestMethod.GET)
    public ModelAndView mostrarPublicarGET() {
    	
    	
        return new ModelAndView("publicar", "cosas", new Cosas());
    }
    
    @RequestMapping(path = "/publicar", method = RequestMethod.POST)
    public ModelAndView mostrarPublicarPOST(@RequestParam String nombre, @RequestParam String descripcion, 
    		@RequestParam String region,@RequestParam String comuna,
    		@RequestParam CommonsMultipartFile file_data, ModelMap model) {
    	
    	Usuario u = new Usuario();
    	
    	Cosas c = new Cosas();
    	
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
    	
    	CommonsMultipartFile file = file_data;
    	
    	c.setIdusuario(u.getIdusuario());
    	
		/* Tomar info del archivo subido para agregar a instancia de 
		clase que se guardará en base de datos */
		c.setFile_name(StringUtils.cleanPath(file.getOriginalFilename()));
		c.setFile_data(file.getBytes());
		
		c.setNombre(nombre);
		c.setDescripcion(descripcion);
		c.setRegion(region);
		c.setComuna(comuna);
    	
	    // Debug
	    // System.out.println("ID del usuario publicando: " + u.getIdusuario());
    	model.addAttribute("nombre", nombre);
    	model.addAttribute("descripcion", descripcion);
    	model.addAttribute("region", region);
    	model.addAttribute("comuna", comuna);
    	model.addAttribute("idusuario", c.getIdusuario());
    	model.addAttribute("file_name", c.getFile_name());
    	model.addAttribute("file_data", file);
    
    	cs.crear(c);
    	
    	return new ModelAndView("mercado");
    }
 

}
