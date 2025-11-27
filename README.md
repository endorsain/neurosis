COMANDOS ESENCIALES DE DOCKER COMPOSE
docker compose up -d
Inicializa todo, construye las imagenes, crea la red y ejecuta todos los servicios(mongo, neurosis_fastify_api_rest, neurosis_vite) en segundo plano(modo detached)

docker compose down
Detener y Limpiar. Detiene y elimina los contenedores, las redes y los volúmenes por defecto. Útil para un reinicio limpio.

docker compose logs -f
Ver Logs Combinados. Muestra los logs de todos los servicios. Usa Ctrl + C para salir.


GESTION DE SERVICIOS INDIVIDUALES
docker compose up	
Iniciar Servicio Específico. Inicia uno o más servicios y sus dependencias (ej: la API iniciará MongoDB).	
docker compose up -d neurosis_fastify_api_rest

docker compose restart	
Forzar Recarga/Refresh. Reinicia un contenedor en ejecución. Útil si el hot-reload falla o necesitas un inicio limpio.	
docker compose restart neurosis_fastify_api_rest

docker compose logs -f	
Ver Logs Específicos. Muestra el log en tiempo real de un solo servicio.	
docker compose logs -f neurosis_vite

docker compose exec	
Ejecutar Shell/Comando. Abre una terminal dentro de un contenedor en ejecución (útil para depuración).	
docker compose exec mongo bash (o sh)


Cliente Web (Vite): http://localhost:5173
API (Endpoints): http://localhost:3000/v1/...




