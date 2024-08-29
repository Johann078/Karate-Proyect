# Instrucciones de ejecución del proyecto

## Requisitos previos
- Java Development Kit (JDK) 17
- Apache Maven
- IntelliJ IDEA

## Pasos para ejecutar el proyecto

1. Clonar el repositorio (si aún no lo has hecho)
   ```
   git clone [URL_DEL_REPOSITORIO]
   cd [NOMBRE_DEL_PROYECTO]
   ```

2. Abrir el proyecto en IntelliJ IDEA
   - Abre IntelliJ IDEA
   - Selecciona "File" > "Open" y navega hasta el directorio del proyecto
   - Selecciona el archivo `pom.xml` y elige "Open as Project"

3. Asegúrate de que IntelliJ IDEA está usando Java 17
   - Ve a "File" > "Project Structure"
   - En "Project Settings" > "Project", asegúrate de que "Project SDK" está configurado a Java 17

4. Actualizar las dependencias de Maven
   - Abre la ventana de Maven (generalmente en el lado derecho)
   - Haz clic en el botón "Reload All Maven Projects"

5. Ejecutar el proyecto
   - Navega hasta la clase `karateRunner` en el explorador de proyectos
   - Haz clic derecho en la clase y selecciona "Run 'karateRunner'"

   Alternativamente, puedes usar la configuración de ejecución de IntelliJ:
   - Haz clic en "Run" > "Edit Configurations"
   - Haz clic en el "+" y selecciona "JUnit"
   - Nombra la configuración (por ejemplo, "Karate Tests")
   - En "Class", selecciona la clase `karateRunner`
   - Haz clic en "Apply" y luego en "OK"
   - Ahora puedes ejecutar esta configuración desde el menú principal de ejecución

   6. Ver los resultados
      - Después de la ejecución, Karate genera un informe HTML detallado
      - En la consola de salida, busca una línea similar a:
      ```  
      file:///C:/Users/[USER]/OneDrive/Documentos/Proyectos/karate3/karate-project/target/karate-reports/karate-summary.html
      ``` 
      - Copia esta URL y pégala en tu navegador web para ver el informe detallado
      - El informe incluye información sobre todas las pruebas ejecutadas, incluyendo éxitos, fallos y estadísticas
## Notas adicionales
- Asegúrate de que el archivo `demoblaze.feature` está en el directorio correcto (`src/test/resources` por defecto)
- Si encuentras algún problema durante la ejecución, verifica que estás usando Java 17 y que todas las dependencias se han descargado correctamente
- Para ejecutar pruebas específicas, puedes modificar el método `testSample()` en `karateRunner` para que apunte a features o escenarios específicos
- El informe HTML generado por Karate es una herramienta poderosa para analizar los resultados de las pruebas. Asegúrate de revisarlo después de cada ejecución para obtener insights detallados sobre el rendimiento de tus pruebas
