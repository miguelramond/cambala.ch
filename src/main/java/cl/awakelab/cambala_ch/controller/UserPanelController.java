package cl.awakelab.cambala_ch.controller;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
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
import cl.awakelab.cambala_ch.model.repository.ICosasRepository;
import cl.awakelab.cambala_ch.model.service.CosasService;
import cl.awakelab.cambala_ch.model.service.UsuarioService;

@Controller
public class UserPanelController {

	@Autowired
	private CosasService cs;
	
	@Autowired
	private UsuarioService us;
	
	@Autowired
	private ICosasRepository ics;
	
    @RequestMapping(path = "/panelusuario", method = RequestMethod.GET)
    public ModelAndView panelUsuarioGET() throws SQLException {
    	
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
    	
    	// byte[] photo = cs.getFile_DataByIdcosa(27);
    	
		// byte[] bytes = photo.getBytes(1, (int) photo.length());
    	// InputStream inputStream = new ByteArrayInputStream(bytes);
    	
    	// cosas.get(5).setFile_data(photo);
    	
    	/* List <Blob> photos = new ArrayList<>();
    	
    	for (int i = 0; i < cosas.size(); i++) {
			photos.add(cs.getFile_DataByIdcosa(cosas.get(i).getIdcosa()));
			
			byte[] bytes = photos.get(i).getBytes(1, (int) photos.get(i).length());
			InputStream inputStream = new ByteArrayInputStream(bytes);
			} */
		 
    	
        return new ModelAndView("panelusuario", "cosas", cosas);
    }
    
    /* Metodo que se llama al cargar una imagen, que hace un SELECT a DB para mostrar */
	@RequestMapping(value = "/foto/{id}")
	public void getFoto(HttpServletResponse response, @PathVariable("id") long idcosa) throws Exception {
		response.setContentType("image/*");
		
		// Crear instancia vacía de 'cosa'
		Cosas c = new Cosas();
		
		/* Tomar imagen, que es entregada por la base de datos 
		como byte[] y almacenar en atributo de cosa 
		NOTA: Pareciera que la anotacion @Lob en la clase 
		'Cosa' se encarga de hacer la conversión de BLOB a byte[]
		
		Importante saberlo por que originalmente se intentaba 
		almacenar el BLOB retorna desde la DB en un objeto BLOB, cosa 
		que nunca funcinó. El método personalizado en la interfaz
		funcionó finalmente cuando se agrego la anotación @Lob, y se almacenó 
		directo en el atributo como está ahora. */
		c.setFile_data(ics.getFile_DataByIdcosa(idcosa));
		
		// Pasar imagen al inputstream
		InputStream inputStream = new ByteArrayInputStream(c.getFile_data());
		IOUtils.copy(inputStream, response.getOutputStream());
	}
    
}