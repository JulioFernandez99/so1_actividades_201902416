![](https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif)

<div style="text-align: center;">
    <span style="font-size: 18px;">Universidad de San Carlos de Guatemala</span><br>
    <span style="font-size: 18px;">Facultad de Ingeniería</span><br>
    <span style="font-size: 18px;">Escuela de Ciencias y Sistemas</span><br>
    <span style="font-size: 18px;">Laboratorio de Sistemas de Bases de Datos 1 Sección B</span><br>
    <span style="font-size: 18px;">Julio Alfredo Fernández Rodríguez 201902416</span><BR>

</div>

<br>

![](https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif)


El **Completely Fair Scheduler (CFS)** es el planificador de procesos por defecto en el núcleo de Linux desde la versión 2.6.23 (lanzada en 2007). CFS se introdujo para mejorar el rendimiento del sistema en situaciones donde múltiples procesos compiten por tiempo de CPU, logrando una asignación de tiempo de CPU más justa y eficiente en comparación con los planificadores anteriores. A continuación se detallan sus características principales y su funcionamiento:

### Características Principales de CFS:

1. **Justicia en la Asignación de CPU**:
   - El principio fundamental de CFS es la equidad (fairness). CFS intenta asignar el tiempo de CPU de manera proporcional a la prioridad de cada proceso, garantizando que todos los procesos reciban una cantidad justa de CPU.
   - Para lograr esto, utiliza una estructura de datos llamada **árbol rojo-negro** para mantener un seguimiento de los procesos en ejecución y ordenarlos en función del tiempo de ejecución virtual.

2. **Tiempo de Ejecución Virtual**:
   - CFS asigna a cada proceso un **tiempo de ejecución virtual**, que es una métrica abstracta del tiempo que un proceso ha "consumido" de la CPU.
   - Los procesos con menor tiempo de ejecución virtual tienen prioridad para ser programados, ya que han consumido menos tiempo de CPU en comparación con otros.
   - El tiempo de ejecución virtual se ajusta según la prioridad del proceso: los procesos con mayor prioridad tienen un tiempo virtual que avanza más lentamente, dándoles más tiempo de CPU.

3. **Árbol Rojo-Negro**:
   - CFS utiliza un árbol rojo-negro (una estructura de datos de búsqueda balanceada) para mantener y gestionar los procesos que están listos para ejecutarse.
   - Este árbol organiza los procesos en función de su tiempo de ejecución virtual, lo que permite a CFS encontrar rápidamente el proceso que debe ejecutarse a continuación.
   - El proceso con el menor tiempo de ejecución virtual siempre se selecciona como el siguiente en la cola para ejecutar.

4. **Grano de Tiempo (Granularity)**:
   - CFS no usa el concepto tradicional de "quanta de tiempo" (time slices) como los planificadores antiguos. En cambio, divide el tiempo de CPU de forma continua y ajusta la duración que cada proceso puede ejecutar dependiendo de la carga total del sistema.
   - Si hay muchos procesos, el tiempo que cada proceso recibe disminuye, pero sigue siendo distribuido de forma justa.

5. **Latencia de Planificación (Scheduling Latency)**:
   - La **latencia de planificación** es el intervalo de tiempo durante el cual CFS intenta garantizar que cada proceso reciba tiempo de CPU al menos una vez.
   - CFS ajusta dinámicamente esta latencia según el número de procesos en el sistema, permitiendo que los sistemas cargados con muchos procesos mantengan la responsividad.

6. **Compatibilidad con Prioridades de Procesos**:
   - CFS respeta las prioridades de los procesos, pero en lugar de asignar más tiempo de CPU a los procesos de mayor prioridad (como en otros planificadores), ajusta la rapidez con la que avanza el tiempo virtual para esos procesos. Un proceso con mayor prioridad verá su tiempo de ejecución virtual avanzar más lentamente, dándole más CPU.
   
7. **Grupos de Carga (Cgroups)**:
   - CFS se integra con los **Control Groups (cgroups)** de Linux, permitiendo controlar y limitar el uso de recursos de un conjunto de procesos, lo que es útil en entornos de contenedores y servidores virtualizados.

### Funcionamiento del CFS:

1. **Selección del Proceso a Ejecutar**:
   - CFS mantiene un seguimiento del tiempo de ejecución virtual acumulado de cada proceso. Al estar todos los procesos listos para ejecutarse almacenados en el árbol rojo-negro, el proceso con el menor tiempo de ejecución virtual es seleccionado para ejecutarse.
   
2. **Ejecución y Actualización del Tiempo Virtual**:
   - Una vez que el proceso es seleccionado, se ejecuta durante un tiempo determinado, calculado en función de la latencia de planificación y el número total de procesos. Durante su ejecución, el tiempo de ejecución virtual del proceso se incrementa.
   
3. **Reinserción en el Árbol**:
   - Después de que un proceso ha consumido su tiempo de CPU, su tiempo de ejecución virtual actualizado se usa para reintegrarlo en el árbol rojo-negro. El proceso vuelve a la cola en la posición correcta en función de su nuevo tiempo virtual, y el ciclo se repite.

### Ventajas del CFS:
- **Justicia en la asignación de CPU**: CFS distribuye equitativamente el tiempo de CPU entre procesos sin favorecer excesivamente a ningún proceso.
- **Eficiencia**: El uso de la estructura del árbol rojo-negro permite que la búsqueda y selección del siguiente proceso a ejecutar sea eficiente.
- **Adaptabilidad**: CFS ajusta dinámicamente sus parámetros para adaptarse a la carga del sistema, asegurando que los sistemas con muchos procesos sigan siendo responsivos.

### Desventajas:
- **Sobrecarga en sistemas ligeros**: Aunque CFS es altamente eficiente en sistemas con una carga de trabajo significativa, puede agregar cierta sobrecarga en sistemas con pocos procesos debido a la complejidad de mantener el árbol rojo-negro.
