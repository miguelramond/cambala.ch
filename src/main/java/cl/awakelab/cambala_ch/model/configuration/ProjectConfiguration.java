package cl.awakelab.cambala_ch.model.configuration;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;


@Configuration
public class ProjectConfiguration {
	
	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver getCommonsMultipartResolver() {
	    CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
	    multipartResolver.setMaxUploadSize(20971520);   // 20MB
	    multipartResolver.setMaxInMemorySize(1048576);  // 1MB
	    return multipartResolver;
	}
	
}
