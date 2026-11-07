# Sistema de Reserva de Horas Médicas

Proyecto desarrollado como parte de la asignatura DevOps, cuyo objetivo es implementar una aplicación web estática para simular la reserva de horas médicas en un centro de salud.

La aplicación presenta un formulario que permite ingresar datos del paciente, seleccionar una especialidad médica, un profesional, una fecha y un horario de atención.

El sitio web está desarrollado utilizando HTML5 y CSS3, se sirve mediante Nginx y se ejecuta localmente utilizando Docker y Docker Compose.

## Tecnologías utilizadas

- HTML5
- CSS3
- Nginx
- Docker
- Docker Compose
- Visual Studio Code
- Git
- GitHub
- GitHub Actions

## Estructura del proyecto

```text
Reservas_Medicas-Proyect-DevOps/
│
├── .github/
│   └── workflows/
│       └── devops-automation.yml
│
├── src/
│   ├── index.html
│   └── styles.css
│
├── Dockerfile
├── docker-compose.yml
├── .env.example
├── .gitignore
└── README.md
```

## Funcionalidades implementadas

- Visualización de una página web de reserva de horas médicas.
- Formulario para ingresar datos del paciente.
- Selección de especialidad médica y profesional.
- Selección de fecha y horario de atención.
- Diseño adaptable a diferentes tamaños de pantalla.
- Publicación de la aplicación web mediante Nginx.
- Construcción y ejecución del servicio mediante Docker Compose.
- Validación automatizada de la estructura del proyecto mediante GitHub Actions.

**Nota:** La aplicación corresponde a una demostración académica. No almacena información ni genera reservas médicas reales. No utiliza API ni requiere una base de datos.

## Requisitos previos

Para ejecutar el proyecto se requiere:

- Sistema operativo compatible con Docker Desktop.
- Docker Desktop instalado y en ejecución.
- Docker Compose disponible mediante Docker Desktop.
- Git instalado para clonar y gestionar el repositorio.
- Navegador web para verificar la aplicación.

## Instalación del proyecto

Clonar el repositorio público desde una terminal:

```bash
git clone https://github.com/anmunozc/Reservas_Medicas-Proyect-DevOps.git
```

Ingresar a la carpeta del proyecto:

```bash
cd Reservas_Medicas-Proyect-DevOps
```

## Construcción y ejecución

Desde la carpeta raíz del proyecto, ejecutar el siguiente comando para construir la imagen e iniciar el contenedor:

```bash
docker compose up -d --build
```

Docker Compose construirá la imagen utilizando el Dockerfile basado en `nginx:alpine` e iniciará el servicio web.

La aplicación quedará disponible en el puerto 8080 del equipo local.

## Verificación de la aplicación

Para comprobar el funcionamiento, abrir un navegador web e ingresar a la siguiente dirección:

http://localhost:8080

Para consultar el estado del contenedor:

```bash
docker compose ps
```

Para revisar los registros de ejecución de Nginx:

```bash
docker logs reservas-medicas
```

Para consultar el consumo de recursos del contenedor:

```bash
docker stats --no-stream
```

Para detener el servicio y eliminar el contenedor y la red creada por Docker Compose:

```bash
docker compose down
```

## Automatización con GitHub Actions

El proyecto incorpora un flujo básico de integración continua mediante GitHub Actions, ubicado en:

`.github/workflows/devops-automation.yml`

El flujo se ejecuta cuando se realizan cambios mediante `push` a la rama `main` o cuando se genera un `pull request` dirigido a dicha rama.

Su función es comprobar la existencia de los archivos principales del proyecto. Si todos se encuentran presentes, la validación finaliza correctamente; de lo contrario, informa el archivo faltante y detiene la ejecución.

Esta automatización permite realizar una comprobación básica de la estructura del repositorio y mantener la trazabilidad de los cambios.

## Seguridad

Durante el desarrollo se consideraron las siguientes buenas prácticas:

- No publicar contraseñas, tokens, claves privadas ni credenciales reales.
- Mantener los archivos de configuración locales fuera del repositorio mediante `.gitignore`.
- Utilizar `.env.example` como plantilla de referencia para documentar variables de configuración de ejemplo.
- Evitar ingresar datos personales reales en el formulario de demostración.
- Revisar los archivos antes de incorporarlos al control de versiones para prevenir la exposición accidental de información sensible.

El archivo `.env.example` contiene parámetros de ejemplo del proyecto. En la configuración actual, estos valores son referenciales y no se utilizan directamente en el archivo `docker-compose.yml`.

## Repositorio

El código fuente y la documentación del proyecto se encuentran disponibles en GitHub:

https://github.com/anmunozc/Reservas_Medicas-Proyect-DevOps

## Autor

anmunozc