CREATE DATABASE IF NOT EXISTS literales_cuore;
USE literales_cuore;

CREATE TABLE IF NOT EXISTS literales (
    id INT AUTO_INCREMENT,
    id_html VARCHAR(50) NOT NULL,
    id_element VARCHAR(50) NOT NULL,
    idioma ENUM('es', 'en', 'fr', 'de') NOT NULL,
    texto VARCHAR(255) NOT NULL,
    CONSTRAINT PK_literales PRIMARY KEY (id),
    CONSTRAINT UC_literales UNIQUE (id_html, id_element, idioma)
);

INSERT INTO literales (id_html, id_element, idioma, texto)
VALUES 
('index', 'iniciar_sesion', 'es', 'Inicia sesión'),
('index', 'registrarse', 'es', 'Regístrate'),
('index', 'label_usuario', 'es', 'Usuario:'),
('index', 'usuario_title', 'es', 'El nick debe contener entre 2 y 50 carácteres: minúsculas, números, -, _.'),
('index', 'label_contrasena', 'es', 'Contraseña:'),
('index', 'clave_title', 'es', 'La contraseña debe contener al menos 8 carácteres: una minúscula, una mayúscula, un número y no puede contener espacios.'),
('index', 'entrar', 'es', 'Iniciar sesión'),
('index', 'label_rol', 'es', 'Rol:'),
('index', 'label_nick', 'es', 'Usuario:'),
('index', 'nick_title', 'es', 'El nick debe contener entre 2 y 50 carácteres: minúsculas, números, -, _.'),
('index', 'label_email', 'es', 'Correo:'),
('index', 'email_title', 'es', 'El email debe tener un formato similar a: xxxx@xxxx.xxx'),
('index', 'label_fecha_nacimiento', 'es', 'Fecha de nacimiento:'),
('index', 'label_sexo', 'es', 'Sexo:'),
('index', 'sexo_hombre', 'es', 'Hombre'),
('index', 'sexo_mujer', 'es', 'Mujer'),
('index', 'sexo_otros', 'es', 'Otro'),
('index', 'label_busqueda', 'es', 'Perfil búsqueda:'),
('index', 'busqueda_hombre', 'es', 'Hombres'),
('index', 'busqueda_mujer', 'es', 'Mujeres'),
('index', 'busqueda_ambos', 'es', 'Ambos'),
('index', 'label_imagen', 'es', 'Imagen:'),
('index', 'imagen_title', 'es', 'Sólo se permiten imágenes con extensión: .jpg, .jpeg, .png'),
('index', 'label_video', 'es', 'Video Presentacion:'),
('index', 'video_title', 'es', 'Sólo se permiten videos con extensión: .mp4, .webm, .ogv'),
('index', 'label_clave', 'es', 'Establecer contraseña:'),
('index', 'clave_registro_title', 'es', 'La contraseña debe contener al menos 8 carácteres: una minúscula, una mayúscula, un número y no puede contener espacios.'),
('index', 'label_repetir_clave', 'es', 'Repetir contraseña:'),
('index', 'clave_confirma_title', 'es', 'La contraseña debe contener al menos 8 carácteres: una minúscula, una mayúscula, un número y no puede contener espacios.'),
('index', 'noCoinciden', 'es', '!Las Contraseñas no coinciden, vuelve a intentarlo!'),
('index', 'coinciden', 'es', '!Las Contraseñas coinciden!'),
('index', 'registrar', 'es', 'Registrarse'),
('index', 'server_error_1', 'es', 'El nick debe contener entre 2 y 50 carácteres: minúsculas, números, -, _.'),
('index', 'server_error_2', 'es', '¡Debe ser una fecha válida!'),
('index', 'server_error_3', 'es', 'El email debe tener un formato similar a: xxxx@xxxx.xxx'),
('index', 'server_error_4', 'es', 'La contraseña debe contener al menos 8 carácteres: una minúscula, una mayúscula, un número y no puede contener espacios.'),
('index', 'server_error_5', 'es', 'Sólo se permiten imágenes con extensión: .jpg, .jpeg, .png '),
('index', 'server_error_6', 'es', 'El tamaño máximo de la imagen son 3000000 bytes.'),
('index', 'server_error_7', 'es', 'Sólo se permiten videos con extensión: .mp4, .webm, .ogv '),
('index', 'server_error_8', 'es', 'El tamaño máximo del video son 5000000 bytes.'),
('index', 'server_error_9', 'es', '¡Debes ser mayor de 18 años! ¡Estaremos encantados de verte pronto!'),
('index', 'server_error_501', 'es', '¡El usuario ya existe!'),
('index', 'server_error_502', 'es', '¡El email ya existe!'),
('index', 'server_error_503', 'es', '¡El usuario no existe!'),
('index', 'server_error_504', 'es', '¡La contraseña es incorrecta!'),
('index', 'server_error_505', 'es', '¡Error actualizando visitas!'),
('index', 'server_error_506', 'es', '¡Error insertando visitas!'),
('index', 'server_error_507', 'es', '¡Error publicando la imagen!'),
('index', 'server_error_508', 'es', '¡Error publicando el video!'),
('index', 'error_ubicacion', 'es', 'Es necesario el permiso a la ubicación para continuar.'),
('index', 'registrado_correctamente', 'es', '!Muchas gracias por registrarte!\nInicia sesión para continuar.'),
('index', 'correcto', 'es', 'Éxito'),
('index', 'iniciar_sesion', 'en', 'Log in'),
('index', 'registrarse', 'en', 'Sign up'),
('index', 'label_usuario', 'en', 'User:'),
('index', 'usuario_title', 'en', 'The nick must contain between 2 and 50 characters: lowercase, numbers, -, _.'),
('index', 'label_contrasena', 'en', 'Password:'),
('index', 'clave_title', 'en', 'The password must contain at least 8 characters: one lower case, one upper case, one number and cannot contain spaces.'),
('index', 'entrar', 'en', 'Log in'),
('index', 'label_rol', 'en', 'Role:'),
('index', 'label_nick', 'en', 'User:'),
('index', 'nick_title', 'en', 'The nick must contain between 2 and 50 characters: lowercase, numbers, -, _.'),
('index', 'label_email', 'en', 'E-mail:'),
('index', 'email_title', 'en', 'The email must have a format similar to: xxxx@xxxx.xxx'),
('index', 'label_fecha_nacimiento', 'en', 'Birth date:'),
('index', 'label_sexo', 'en', 'Sex:'),
('index', 'sexo_hombre', 'en', 'Man'),
('index', 'sexo_mujer', 'en', 'Woman'),
('index', 'sexo_otros', 'en', 'Other'),
('index', 'label_busqueda', 'en', 'Search profile:'),
('index', 'busqueda_hombre', 'en', 'Men'),
('index', 'busqueda_mujer', 'en', 'Women'),
('index', 'busqueda_ambos', 'en', 'Both'),
('index', 'label_imagen', 'en', 'Image:'),
('index', 'imagen_title', 'en', 'Only images with extension: .jpg, .jpeg, .png are allowed.'),
('index', 'label_video', 'en', 'Video presentation:'),
('index', 'video_title', 'en', 'Only videos with extension: .mp4, .webm, .ogv are allowed.'),
('index', 'label_clave', 'en', 'Set password:'),
('index', 'clave_registro_title', 'en', 'The password must contain at least 8 characters: one lower case, one upper case, one number and cannot contain spaces.'),
('index', 'label_repetir_clave', 'en', 'Repeat password:'),
('index', 'clave_confirma_title', 'en', 'The password must contain at least 8 characters: one lower case, one upper case, one number and cannot contain spaces.'),
('index', 'noCoinciden', 'en', 'The Passwords do not match, please try again!'),
('index', 'coinciden', 'en', 'The Passwords match!'),
('index', 'registrar', 'en', 'Check in'),
('index', 'server_error_1', 'en', 'The nick must contain between 2 and 50 characters: lowercase, numbers, -, _.'),
('index', 'server_error_2', 'en', 'Must be a valid date!'),
('index', 'server_error_3', 'en', 'The email must have a format similar to: xxxx@xxxx.xxx'),
('index', 'server_error_4', 'en', 'The password must contain at least 8 characters: one lower case, one upper case, one number and cannot contain spaces.'),
('index', 'server_error_5', 'en', 'Only images with extension: .jpg, .jpeg, .png are allowed.'),
('index', 'server_error_6', 'en', 'The maximum image size is 3000000 bytes.'),
('index', 'server_error_7', 'en', 'Only videos with extension: .mp4, .webm, .ogv are allowed.'),
('index', 'server_error_8', 'en', 'The maximum video size is 5000000 bytes.'),
('index', 'server_error_9', 'en', "You should be over 18! We'll be happy to see you soon!"),
('index', 'server_error_501', 'en', 'The user already exists!'),
('index', 'server_error_502', 'en', 'The email already exists!'),
('index', 'server_error_503', 'en', 'The user does not exist!'),
('index', 'server_error_504', 'en', 'The password is incorrect!'),
('index', 'server_error_505', 'en', 'Error updating visits!'),
('index', 'server_error_506', 'en', 'Error inserting visits!'),
('index', 'server_error_507', 'en', "Error posting image"),
('index', 'server_error_508', 'en', 'Error posting the video'),
('index', 'error_ubicacion', 'en', 'Permission to the location is required to proceed.'),
('index', 'registrado_correctamente', 'en', 'Thank you very much for registering!\nSign in to continue.'),
('index', 'correcto', 'en', 'Success'),
('index', 'iniciar_sesion', 'fr', 'Connexion'),
('index', 'registrarse', 'fr', "S'inscrire"),
('index', 'label_usuario', 'fr', 'Utilisateur:'),
('index', 'usuario_title', 'fr', 'Le pseudo doit contenir entre 2 et 50 caractères : minuscules, chiffres, -, _.'),
('index', 'label_contrasena', 'fr', 'Le mot de passe:'),
('index', 'clave_title', 'fr', "Le mot de passe doit contenir au moins 8 caractères : une minuscule, une majuscule, un chiffre et ne doit pas contenir d'espaces."),
('index', 'entrar', 'fr', 'Commencer la session'),
('index', 'label_rol', 'fr', 'Rôle:'),
('index', 'label_nick', 'fr', 'Utilisateur:'),
('index', 'nick_title', 'fr', 'Le pseudo doit contenir entre 2 et 50 caractères : minuscules, chiffres, -, _.'),
('index', 'label_email', 'fr', 'E-mail:'),
('index', 'email_title', 'fr', "L'email doit avoir un format similaire à : xxxx@xxxx.xxx"),
('index', 'label_fecha_nacimiento', 'fr', 'Date de naissance:'),
('index', 'label_sexo', 'fr', 'Sexe:'),
('index', 'sexo_hombre', 'fr', 'Homme'),
('index', 'sexo_mujer', 'fr', 'Femme'),
('index', 'sexo_otros', 'fr', 'Autre'),
('index', 'label_busqueda', 'fr', 'Profil recherche:'),
('index', 'busqueda_hombre', 'fr', 'Les hommes'),
('index', 'busqueda_mujer', 'fr', 'Les femmes'),
('index', 'busqueda_ambos', 'fr', 'Les deux'),
('index', 'label_imagen', 'fr', 'Image:'),
('index', 'imagen_title', 'fr', 'Seules les images avec extension sont autorisées : . jpg, . jpeg, . png'),
('index', 'label_video', 'fr', 'Présentation vidéo:'),
('index', 'video_title', 'fr', 'Seules les vidéos avec extension sont autorisées : . mp4, . Webm, .ogv'),
('index', 'label_clave', 'fr', 'Définir le mot de passe:'),
('index', 'clave_registro_title', 'fr', "Le mot de passe doit contenir au moins 8 caractères : une minuscule, une majuscule, un chiffre et ne doit pas contenir d'espaces."),
('index', 'label_repetir_clave', 'fr', 'Répéter le mot de passe:'),
('index', 'clave_confirma_title', 'fr', "Le mot de passe doit contenir au moins 8 caractères : une minuscule, une majuscule, un chiffre et ne doit pas contenir d'espaces."),
('index', 'noCoinciden', 'fr', 'Les mots de passe ne correspondent pas, veuillez réessayer!'),
('index', 'coinciden', 'fr', 'Les mots de passe correspondent!'),
('index', 'registrar', 'fr', 'Enregistrement'),
('index', 'server_error_1', 'fr', 'Le pseudo doit contenir entre 2 et 50 caractères : minuscules, chiffres, -, _.'),
('index', 'server_error_2', 'fr', 'Doit être une date valide!'),
('index', 'server_error_3', 'fr', "L'email doit avoir un format similaire à : xxxx@xxxx.xxx"),
('index', 'server_error_4', 'fr', "Le mot de passe doit contenir au moins 8 caractères : une minuscule, une majuscule, un chiffre et ne doit pas contenir d'espaces."),
('index', 'server_error_5', 'fr', 'Seules les images avec extension sont autorisées : . jpg, . jpeg, . png'),
('index', 'server_error_6', 'fr', "La taille maximale de l'image est de 3000000 octets."),
('index', 'server_error_7', 'fr', 'Seules les vidéos avec extension sont autorisées : . mp4, . Webm, .ogv'),
('index', 'server_error_8', 'fr', "La taille maximale de l'vidéo est de 5000000 octets."),
('index', 'server_error_9', 'fr', 'Vous devez avoir plus de 18 ans! Nous serons heureux de vous voir bientôt!'),
('index', 'server_error_501', 'fr', "L'utilisateur existe déjà!"),
('index', 'server_error_502', 'fr', "L'email existe déjà!"),
('index', 'server_error_503', 'fr', "Le nom d'utilisateur n'existe pas!"),
('index', 'server_error_504', 'fr', "Le mot de passe est incorrect!"),
('index', 'server_error_505', 'fr', "Erreur de mise à jour des visites!"),
('index', 'server_error_506', 'fr', "Erreur d'insertion de visites!"),
('index', 'server_error_507', 'fr', "Erreur de publication d'image!"),
('index', 'server_error_508', 'fr', 'Erreur lors de la publication de la vidéo!'),
('index', 'error_ubicacion', 'fr', "L'autorisation de l'emplacement est nécessaire pour continuer."),
('index', 'registrado_correctamente', 'fr', 'Merci beaucoup pour votre inscription!\nConnectez-vous pour continuer.'),
('index', 'correcto', 'fr', 'Succès'),
('index', 'iniciar_sesion', 'de', 'Einloggen'),
('index', 'registrarse', 'de', 'Anmelden'),
('index', 'label_usuario', 'de', 'Benutzer:'),
('index', 'usuario_title', 'de', 'Der Nick muss zwischen 2 und 50 Zeichen enthalten: Kleinbuchstaben, Zahlen, -, _.'),
('index', 'label_contrasena', 'de', 'Passwort:'),
('index', 'clave_title', 'de', 'Das Passwort muss mindestens 8 Zeichen enthalten: einen Kleinbuchstaben, einen Großbuchstaben, eine Zahl und darf keine Leerzeichen enthalten.'),
('index', 'entrar', 'de', 'Einloggen'),
('index', 'label_rol', 'de', 'Rolle:'),
('index', 'label_nick', 'de', 'Benutzer:'),
('index', 'nick_title', 'de', 'Der Nick muss zwischen 2 und 50 Zeichen enthalten: Kleinbuchstaben, Zahlen, -, _.'),
('index', 'label_email', 'de', 'Email:'),
('index', 'email_title', 'de','Die E-Mail sollte ein ähnliches format haben wie: xxxx@xxxx.xxx'),
('index', 'label_fecha_nacimiento', 'de', 'Geburtsdatum:'),
('index', 'label_sexo', 'de', 'Sex:'),
('index', 'sexo_hombre', 'de', 'Mann'),
('index', 'sexo_mujer', 'de', 'Frau'),
('index', 'sexo_otros', 'de', 'Andere'),
('index', 'label_busqueda', 'de', 'Suchprofil:'),
('index', 'busqueda_hombre', 'de', 'Frauen'),
('index', 'busqueda_mujer', 'de', 'Manner'),
('index', 'busqueda_ambos', 'de', 'Beide'),
('index', 'label_imagen', 'de', 'Bild:'),
('index', 'imagen_title', 'de', 'Nur Bilder mit der Erweiterung: jpg, . jpeg, . png sind erlaubt.'),
('index', 'label_video', 'de', 'Video Präsentation:'),
('index', 'video_title', 'de', 'Nur Videos mit der Erweiterung: .mp4, .webm, .ogv sind erlaubt.'),
('index', 'label_clave', 'de', 'Passwort festlegen:'),
('index', 'clave_registro_title', 'de', 'Das Passwort muss mindestens 8 Zeichen enthalten: einen Kleinbuchstaben, einen Großbuchstaben, eine Zahl und darf keine Leerzeichen enthalten.'),
('index', 'label_repetir_clave', 'de', 'Passwort wiederholen:'),
('index', 'clave_confirma_title', 'de', 'Das Passwort muss mindestens 8 Zeichen enthalten: einen Kleinbuchstaben, einen Großbuchstaben, eine Zahl und darf keine Leerzeichen enthalten.'),
('index', 'noCoinciden', 'de', 'Die Passwörter stimmen nicht überein, bitte versuchen Sie es erneut!'),
('index', 'coinciden', 'de', 'Die Passwörter stimmen überein!'),
('index', 'registrar', 'de', 'Check-In'),
('index', 'server_error_1', 'de', 'Der Nick muss zwischen 2 und 50 Zeichen enthalten: Kleinbuchstaben, Zahlen, -, _.'),
('index', 'server_error_2', 'de', 'Muss ein gültiges Datum sein!'),
('index', 'server_error_3', 'de', 'Die E-Mail sollte ein ähnliches format haben wie: xxxx@xxxx.xxx'),
('index', 'server_error_4', 'de', 'Das Passwort muss mindestens 8 Zeichen enthalten: einen Kleinbuchstaben, einen Großbuchstaben, eine Zahl und darf keine Leerzeichen enthalten.'),
('index', 'server_error_5', 'de', 'Nur Bilder mit der Erweiterung: jpg, . jpeg, . png sind erlaubt.'),
('index', 'server_error_6', 'de', 'Die maximale Bildgröße beträgt 3000000 Bytes.'),
('index', 'server_error_7', 'de', 'Nur Videos mit der Erweiterung: .mp4, .webm, .ogv sind erlaubt.'),
('index', 'server_error_8', 'de', 'Die maximale Videogröße beträgt 5000000 Bytes.'),
('index', 'server_error_9', 'de', 'Sie müssen mindestens 18 Jahre alt sein! Wir freuen uns, Sie bald zu sehen!'),
('index', 'server_error_501', 'de', 'Der Benutzer existiert bereits!'),
('index', 'server_error_502', 'de', 'E-Mail existiert bereits!'),
('index', 'server_error_503', 'de', 'Der Benutzername existiert nicht!'),
('index', 'server_error_504', 'de', 'Das Passwort ist falsch!'),
('index', 'server_error_505', 'de', 'Fehler beim Aktualisieren der Besuche!'),
('index', 'server_error_506', 'de', 'Fehler beim Einfügen von Besuchen!'),
('index', 'server_error_507', 'de', 'Fehler beim posten des bildes!'),
('index', 'server_error_508', 'de', 'Fehler beim Posten des videos!'),
('index', 'error_ubicacion', 'de', 'Um fortzufahren, ist eine genehmigung für den Standort erforderlich.'),
('index', 'registrado_correctamente', 'de', 'Vielen dank für die registrierung!\nMelden sie sich an, um fortzufahren.'),
('index', 'correcto', 'de', 'Erfolg'),
('perfil', 'titulo_nombre', 'es', 'Nombre:'),
('perfil', 'titulo_correo', 'es', 'Correo:'),
('perfil', 'titulo_sexo', 'es', 'Sexo:'),
('perfil', 'titulo_rol', 'es', 'Rol:'),
('perfil', 'h2_boton_imagenes', 'es', 'TUS IMÁGENES '),
('perfil', 'h2_boton_videos', 'es', 'TUS VÍDEOS '),
('perfil', 'boton_guardar', 'es', 'EDITAR PUBLICACION'),
('perfil', 'boton_edicion', 'es', 'AÑADIR PUBLICACION'),
('perfil', 'boton_anadir_publi', 'es', 'GUARDAR PUBLICACION'),
('perfil', 'p_menu1', 'es', 'CHAT PRIVADO'),
('perfil', 'p_menu2', 'es', ''),
('perfil', 'p_menu3', 'es', 'SUGERENCIAS A CUORE'),
('perfil', 'p_menu4', 'es', 'CONTACTANOS'),
('perfil', 'p_menu5', 'es', 'CERRAR SESION'),
('perfil', 'titulo_nombre', 'en', 'Name:'),
('perfil', 'titulo_correo', 'en', 'Email:'),
('perfil', 'titulo_sexo', 'en', 'Sex:'),
('perfil', 'titulo_rol', 'en', 'Role:'),
('perfil', 'h2_boton_imagenes', 'en', 'YOUR IMAGES '),
('perfil', 'h2_boton_videos', 'en', 'YOUR VIDEOS '),
('perfil', 'boton_guardar', 'en', 'EDIT PUBLICATION'),
('perfil', 'boton_edicion', 'en', 'ADD PUBLICATION'),
('perfil', 'boton_anadir_publi', 'en', 'SAVE THE PUBLICATION'),
('perfil', 'p_menu1', 'en', 'PRIVATE CHAT'),
('perfil', 'p_menu2', 'en', ''),
('perfil', 'p_menu3', 'en', 'SUGGESTIONS TO CUORE'),
('perfil', 'p_menu4', 'en', 'CONTACT US'),
('perfil', 'p_menu5', 'en', 'SIGN OFF'),
('perfil', 'titulo_nombre', 'fr', 'Nom:'),
('perfil', 'titulo_correo', 'fr', 'Email:'),
('perfil', 'titulo_sexo', 'fr', 'Sexe:'),
('perfil', 'titulo_rol', 'fr', 'Rôle:'),
('perfil', 'h2_boton_imagenes', 'fr', 'VOS IMAGES '),
('perfil', 'h2_boton_videos', 'fr', 'VOS VIDÉOS '),
('perfil', 'boton_guardar', 'fr', "PUBLICATION D'ÉDITION"),
('perfil', 'boton_edicion', 'fr', 'AJOUTER PUBLICATION'),
('perfil', 'boton_anadir_publi', 'fr', 'ENREGISTRER LA PUBLICATION'),
('perfil', 'p_menu1', 'fr', 'DISCUSSION PRIVÉE'),
('perfil', 'p_menu2', 'fr', ''),
('home', 'p_menu3', 'fr', 'SUGGESTIONS POUR CUORE'),
('home', 'p_menu4', 'fr', 'NOUS CONTACTER'),
('perfil', 'p_menu5', 'fr', 'FERMER SESSION'),
('perfil', 'titulo_nombre', 'de', 'Name:'),
('perfil', 'titulo_correo', 'de', 'Email:'),
('perfil', 'titulo_sexo', 'de', 'Sex:'),
('perfil', 'titulo_rol', 'de', 'Rolle:'),
('perfil', 'h2_boton_imagenes', 'de', 'IHRE BILDER '),
('perfil', 'h2_boton_videos', 'de', 'IHRE VIDEOS '),
('perfil', 'boton_guardar', 'de', 'VERÖFFENTLICHUNG BEARBEITEN'),
('perfil', 'boton_edicion', 'de', 'VERÖFFENTLICHUNG HINZUFÜGEN'),
('perfil', 'boton_anadir_publi', 'de', 'VERÖFFENTLICHUNG SPEICHERN'),
('perfil', 'p_menu1', 'de', 'PRIVATER CHAT'),
('perfil', 'p_menu2', 'de', ''),
('perfil', 'p_menu3', 'de', 'VORSCHLÄGE ZU CUORE'),
('perfil', 'p_menu4', 'de', 'KONTAKTIERE UNS'),
('perfil', 'p_menu5', 'de', 'ABMELDEN'),
('home', 'p_menu1', 'es', 'IR A PERFIL'),
('home', 'p_menu2', 'es', 'CHAT PRIVADO'),
('home', 'p_menu3', 'es', 'SUGERENCIAS A CUORE'),
('home', 'p_menu4', 'es', 'CONTACTANOS'),
('home', 'p_menu5', 'es', 'CERRAR SESION'),
('home', 'p_menu1', 'en', 'GO TO PROFILE'),
('home', 'p_menu2', 'en', 'PRIVATE CHAT'),
('home', 'p_menu3', 'en', 'SUGGESTIONS TO CUORE'),
('home', 'p_menu4', 'en', 'CONTACT US'),
('home', 'p_menu5', 'en', 'SIGN OFF'),
('home', 'p_menu1', 'fr', 'ALLER AU PROFIL'),
('home', 'p_menu2', 'fr', 'DISCUSSION PRIVÉE'),
('home', 'p_menu3', 'fr', 'SUGGESTIONS POUR CUORE'),
('home', 'p_menu4', 'fr', 'NOUS CONTACTER'),
('home', 'p_menu5', 'fr', 'FERMER SESSION'),
('home', 'p_menu1', 'de', 'ZUM PROFIL GEHEN'),
('home', 'p_menu2', 'de', 'PRIVATER CHAT'),
('home', 'p_menu3', 'de', 'VORSCHLÄGE ZU CUORE'),
('home', 'p_menu4', 'de', 'KONTAKTIERE UNS'),
('home', 'p_menu5', 'de', 'ABMELDEN');
