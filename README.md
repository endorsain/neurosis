# 🚀 Neurosis Stack: Comandos de Orquestación Docker

Este documento lista los comandos esenciales para levantar, gestionar y depurar el entorno de desarrollo completo de Neurosis usando **Docker Compose**.

---

## ⚙️ I. Comandos Esenciales de Docker Compose

Estos comandos se ejecutan desde la raíz del proyecto y afectan a **todos** los servicios definidos (`mongo`, `neurosis_fastify_api_rest`, `neurosis_vite`).

| Comando                  | Descripción                                                                                                                                 |
| :----------------------- | :------------------------------------------------------------------------------------------------------------------------------------------ |
| `docker compose up -d`   | **Inicializar Todo**. Construye las imágenes, crea la red y ejecuta todos los servicios en segundo plano (modo **detached**).               |
| `docker compose down`    | **Detener y Limpiar**. Detiene y elimina los contenedores, las redes y los volúmenes por defecto. Útil para un reinicio limpio del entorno. |
| `docker compose logs -f` | **Ver Logs Combinados**. Muestra los logs en tiempo real de todos los servicios. Usa `Ctrl + C` para salir de la vista de logs.             |

---

## 🛠️ II. Gestión de Servicios Individuales

Puedes usar estos comandos para enfocar la acción en un único servicio, lo cual es ideal para el flujo de trabajo de desarrollo y depuración.

| Comando                             | Propósito                                                                                                                                | Ejemplo de Uso                                     |
| :---------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------- |
| `docker compose up [servicio]`      | **Iniciar Servicio Específico**. Inicia uno o más servicios y sus dependencias (ej: la API iniciará MongoDB automáticamente).            | `docker compose up -d neurosis_fastify_api_rest`   |
| `docker compose restart [servicio]` | **Forzar Recarga/Refresh**. Reinicia un contenedor en ejecución. Útil si el _hot-reload_ falla o necesitas un inicio limpio del proceso. | `docker compose restart neurosis_fastify_api_rest` |
| `docker compose logs -f [servicio]` | **Ver Logs Específicos**. Muestra el _log_ en tiempo real de un solo servicio.                                                           | `docker compose logs -f neurosis_vite`             |
| `docker compose exec [servicio]`    | **Ejecutar Shell/Comando**. Abre una terminal (shell) dentro de un contenedor en ejecución (útil para depuración o tareas internas).     | `docker compose exec mongo bash` (o `sh`)          |

---

## 🔗 III. Accesos al Entorno Local

Una vez que los servicios se han iniciado con éxito, puedes acceder a ellos en tu navegador:

- **Cliente Web (Vite):** `http://localhost:5173`
- **API (Endpoints):** `http://localhost:3000/v1/...`
