
# Sistema de Reserva de Horas Médicas

Proyecto desarrollado como parte de la asignatura DevOps, cuyo objetivo es implementar una aplicación web estática para simular la reserva de horas médicas.

La aplicación permite visualizar un formulario de reserva donde el usuario puede ingresar sus datos, seleccionar una especialidad médica, un profesional, una fecha y un horario de atención.

El sitio web se desarrolla utilizando HTML y CSS, se sirve mediante Nginx y se despliega localmente utilizando Docker y Docker Compose.

## Tecnologías utilizadas

* HTML5
* CSS3
* Nginx
* Docker
* Docker Compose
* Visual Studio Code
* Git
* GitHub

## Estructura del proyecto

```text
Reservas_Medicas-Proyect-DevOps/
│
├── src/
│   ├── index.html
│   └── styles.css
│
├── .github/
│   └── workflows/
│       └── devops-automation
│
├── Dockerfile
├── docker-compose.yml
├── .env.example
├── .gitignore
└── README.md
```

## Funcionalidades implementadas

* Visualización de una página web de reserva de horas médicas.
* Formulario para ingresar datos del paciente.
* Selección de especialidad médica y profesional.
* Selección de fecha y horario de atención.
* Diseño adaptable a dispositivos móviles.
* Publicación de la aplicación web mediante Nginx.
* Ejecución del servicio mediante Docker Compose.

**Nota:** La aplicación corresponde a una demostración académica. No almacena información ni genera reservas médicas reales.

## Requisitos previos

Para ejecutar el proyecto se requiere:

* Windows 10 Pro o un sistema operativo compatible.
* Docker Desktop instalado y en ejecución.
* Docker Compose disponible mediante Docker Desktop.
* Git para la gestión del control de versiones.

## Construcción y ejecución

Desde la carpeta raíz del proyecto, ejecutar el siguiente comando para construir la imagen e iniciar el contenedor:

```bash
docker compose up -d --build
```

El servicio web quedará disponible en el puerto 8080 del equipo.

## Verificación de la aplicación

Para comprobar el funcionamiento, abrir un navegador web e ingresar a la siguiente dirección:

```text
http://localhost:8080
```

Para consultar el estado del contenedor:

```bash
docker compose ps
```

Para revisar los registros de ejecución:

```bash
docker logs reservas-medicas
```

Para detener el servicio:

```bash
docker compose down
```

## Seguridad

* No publicar contraseñas, tokens, claves privadas ni credenciales.
* Mantener los archivos de configuración locales fuera del repositorio mediante `.gitignore`.
* Utilizar `.env.example` como plantilla de referencia para las variables de configuración.
* No ingresar datos personales reales en el formulario de demostración.

## Autor

anmunozc
