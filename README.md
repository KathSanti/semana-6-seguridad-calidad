# Semana2-CDY2203 - SEMANA 6

## Ejecución y Despliegue (Docker)

**Levantar contenedores (MySQL y Backend)**

Antes de levantar el entorno, es necesario asegurarse de comentar la segunda línea del `datasource.url` en el archivo `application.properties` para que apunte al contenedor de la base de datos y no a localhost:

```properties
spring.datasource.url=jdbc:mysql://mysql-cdy2203:3306/mydatabase
#spring.datasource.url=jdbc:mysql://localhost:3306/mydatabase
```

Dar permisos solo si es necesario

```bash
`chmod +x mvnw`
```
compilar proyecto 

```bash
`./mvnw clean package -DskipTests`
*(En Windows usar: `mvnw clean package -DskipTe
```

Una vez generada la carpeta `target`, levanta la base de datos y el backend con:
```bash
docker-compose up -d --build
```
 ## API Login

**Endpoint:** `POST http://localhost:8080/login`

**Headers requeridos:**
- `Content-Type: application/json`

**Cuerpo de la petición (Request Body):**
```json
{
  "username": "admin",
  "password": "123"
}
```

## Uusarios de prueba 

| Rol / Perfil | Username | Password | Email |
| :--- | :--- | :--- | :--- |
| **Administrador** | `admin` | `123` | `admin@veterinaria.cl` |
| **Asistente** | `asistente` | `123` | `asistente@veterinaria.cl` |
| **Cliente** | `cliente` | `123` | `cliente@veterinaria.cl` |
