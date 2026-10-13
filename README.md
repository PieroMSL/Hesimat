# Hesimat — Constructora y Consultora

Web institucional de Hesimat E.I.R.L., Huancayo, Junín. RUC y dirección según información proporcionada; verificar con la empresa antes de la publicación comercial.

## Estado actual
- Inicio, Nosotros, Servicios, Portafolio y Contacto.
- Formulario con envío mediante WhatsApp a Hegel Sierra Matos (+51 920 759 227).
- No almacena datos ni contiene un CRM operativo.
- Fotografías de obras y ubicación exacta pendientes de confirmar.

## Desarrollo local
Sin dependencias ni compilación:

```sh
python3 -m http.server 8080 --directory dist
```

Abrir http://localhost:8080.

## Vercel
Importar el repositorio. Framework: Other. Sin comando de compilación ni instalación. Directorio de salida: dist. La configuración está en vercel.json. No se ha desplegado todavía en Vercel.

## Evolución a CRM con PostgreSQL
`database/schema.sql` contiene un esquema inicial para contactos, solicitudes y seguimientos. Es una propuesta; no se ha ejecutado. Para conectarlo:
1. Provisionar PostgreSQL y configurar DATABASE_URL solo en el servidor.
2. Añadir un endpoint de solicitudes con validación, límites de uso y consentimiento para registrar datos.
3. Guardar el contacto y la solicitud en una transacción; conservar el enlace de WhatsApp.
4. Crear un panel autenticado con acceso restringido a la empresa.
5. Incorporar cotizaciones, responsables, recordatorios y copias de seguridad.

Nunca incluir credenciales en Git ni consultar PostgreSQL desde el navegador.

## Contenido pendiente
Fotos autorizadas del antes, durante y después; nombre, ubicación y descripción de cada obra; logotipo; dirección exacta; experiencia verificable y habilitaciones aplicables.
