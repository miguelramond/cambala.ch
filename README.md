                /\-/\    /\-/\    /\-/\    /\-/\    /\-/\    /\-/\    /\-/\    /\-/\
               (=^Y^=)  (=^Y^=)  (=^Y^=)  (=^Y^=)  (=^Y^=)  (=^Y^=)  (=^Y^=)  (=^Y^=)
                (>o<)    (>o<)    (>o<)    (>o<)    (>o<)    (>o<)    (>o<)    (>o<)

# cambala.ch

Una página sencilla para facilitar el trueque de cosas.

Somos un sitio de trueques, y nos gustan las curiosidades y lo inesperado. 

Queremos ser ese puesto del persa al que siempre vuelves, porque no sabes con qué te vas a encontrar.

Trae algo, y - ojalá - saldrás con algo completamente distinto. 

//

A simple page for bartering goods, locally.

We're a bartering website, with an interest fur curiosities and the unexpcted.

We aim to be that spot in the fleamarket you always end up going back, not knowing what you'll find.

Bring something with you and - hopefully - you'll come out with something completelly different.

# Change Log

Changes made by Thursdsay, March 3rd, 2022
 
Repo: (https://github.com/miguelramond/cambala.ch)

By: Miguel Ramón
 
## [1.0.0] - 2022-03-03
 
First stable version of proyect.
 
### Added
- Integration of HTML frontend into Spring-MVC project with Java backend
- Creation of database for storage of users and things
- MySQL Database integration via JPA and Hibernate
- Ability to upload image files to database via CommonsMultiPartFile
- Implementation of Spring Security for auth handling
- User hierarchy (admins and users) with assigned permissions
- User signup functionality
- User panel displaying current items in marketplace
 
### Changed
 - Modified Marketplace Carrousel to properly display items stored in DB
 - Creation of '/commons' folder in views to store recurring elements in JSP (Such as header 	      	declarations, navbar and footers)
 
### Fixed
- Minor changes in syntax and indentation