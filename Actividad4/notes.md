# Shebang
Indica que el script debe ser ejecutado con bash.

<details>
<summary>Shebang </summary>

    #!/bin/bash
</details>

<br>


# Definicion de variables 

SCRIPT_PATH: Ruta donde se almacenará el script saludo.sh.

SERVICE_PATH: Ruta donde se almacenará el archivo de unidad systemd.

SERVICE_NAME: Nombre del archivo de unidad, que también se usa en los comandos systemctl.

<details>
<summary>Definicion de variables </summary>

    # Definir variables

    SCRIPT_PATH="/usr/local/bin/saludo.sh"
    
    SERVICE_PATH="/etc/systemd/system/saludo.service"
    
    SERVICE_NAME="saludo.service"


</details>
<br>

# eliminar_servicio
Esta función maneja la eliminación del servicio existente.
echo "Deteniendo y eliminando el servicio existente...": Muestra un mensaje indicando que se va a detener y eliminar el servicio.

- sudo systemctl stop $SERVICE_NAME: Detiene el servicio si está en ejecución.

- sudo systemctl disable $SERVICE_NAME: Desactiva el servicio para que no se inicie automáticamente al arrancar el sistema.

- sudo rm -f $SERVICE_PATH: Elimina el archivo de unidad del servicio.

- sudo systemctl daemon-reload: Recarga la configuración de systemd para que reconozca la eliminación del archivo de unidad.

<details>
<summary>eliminar_servicio </summary>

    # Función para eliminar el servicio existente
    eliminar_servicio() {
        echo "Deteniendo y eliminando el servicio existente..."
        sudo systemctl stop $SERVICE_NAME
        sudo systemctl disable $SERVICE_NAME
        sudo rm -f $SERVICE_PATH
        sudo systemctl daemon-reload
    }

</details>
<br>

# Verificacion del servicio 
- if [ -f "$SERVICE_PATH" ]; then: Verifica si el archivo de unidad del servicio existe.

- echo "El servicio ya existe. Procediendo a eliminarlo...": Muestra un mensaje si el archivo de unidad existe.

- eliminar_servicio: Llama a la función eliminar_servicio para eliminar el servicio existente.

- else: Si el archivo de unidad no existe.

- echo "No se encontró el servicio existente.": Muestra un mensaje indicando que no se encontró el servicio.

<details>
<summary>Verificacion de servicio </summary>

    #Crear el script de saludo
    echo "Creando el script de saludo..."
    sudo tee $SCRIPT_PATH > /dev/null << 'EOF'
    #!/bin/bash

    while true
    do
        echo "Hola, la fecha y hora actual es: $(date)"
        sleep 1
    done
    EOF

   
</details>
<br>

# Creacion del script de saludo
- echo "Creando el script de saludo...": Muestra un mensaje indicando que se va a crear el script de saludo.

- sudo tee \$SCRIPT_PATH > /dev/null << 'EOF': Usa tee para escribir el contenido del script en la ruta especificada. > /dev/null redirige la salida de tee para evitar que se muestre en la consola.

- El contenido entre << 'EOF' y EOF es el contenido del script saludo.sh:

    - #!/bin/bash: Shebang para el script.

    - while true: Un bucle infinito que se ejecuta continuamente.

    - do: Inicio del bucle.
    - echo "Hola, la fecha y hora actual es: $(date)": Imprime un saludo con la fecha y hora actuales.
    - sleep 1: Pausa de 1 segundo entre cada mensaje.
    - done: Fin del bucle.

<details>
<summary>Creacion del script </summary>

   #Crear el script de saludo
    echo "Creando el script de saludo..."
    sudo tee $SCRIPT_PATH > /dev/null << 'EOF'
    #!/bin/bash

    while true
    do
        echo "Hola, la fecha y hora actual es: $(date)"
        sleep 1
    done
    EOF


</details>
<br>


# Permisos de ejecucion
sudo chmod +x $SCRIPT_PATH: Cambia los permisos del script para hacerlo ejecutable.

<details>
<summary>Permisos  </summary>

    # Dar permisos de ejecución al script
    sudo chmod +x $SCRIPT_PATH

    
</details>

<br>


# Crear el Archivo de Servicio systemd
- echo "Creando el archivo de servicio systemd...": Muestra un mensaje indicando que se va a crear el archivo de servicio.

- sudo tee $SERVICE_PATH > /dev/null << EOF: Usa tee para escribir el contenido del archivo de unidad en la ruta especificada. > /dev/null redirige la salida de tee para evitar que se muestre en la consola.

- El contenido entre << EOF y EOF es el contenido del archivo de unidad systemd:

    - [Unit]: Sección de configuración de la unidad.
        - Description=Servicio de Saludo Infinito: Descripción del servicio.

        - After=network.target: Indica que el servicio debe iniciarse después de que la red esté disponible.

    - [Service]: Configuración del servicio.
        - ExecStart=$SCRIPT_PATH: Comando para iniciar el servicio (ruta al script).

        - Restart=always: Reinicia el servicio automáticamente si falla.

        - User=root: Ejecuta el servicio como usuario root.

    - [Install]: Configuración de instalación.
        - WantedBy=multi-user.target: Indica que el servicio debe iniciarse en el nivel de ejecución multiusuario.

<details>
<summary>Creacion del servicio </summary>

        # Crear el archivo de servicio systemd
    echo "Creando el archivo de servicio systemd..."
    sudo tee $SERVICE_PATH > /dev/null << EOF
    [Unit]
    Description=Servicio de Saludo Infinito
    After=network.target

    [Service]
    ExecStart=$SCRIPT_PATH
    Restart=always
    User=root

    [Install]
    WantedBy=multi-user.target
    EOF

</details>
<br>



# Recargar systemd
Recargar systemd:
sudo systemctl daemon-reload: Recarga la configuración de systemd para que reconozca el nuevo archivo de unidad.

<details>
<summary>Recargar systemd </summary>

        # Recargar systemd para reconocer el nuevo servicio
    sudo systemctl daemon-reload


</details>
<br>


# Habilitar servicio
sudo systemctl enable $SERVICE_NAME: Configura el servicio para que se inicie automáticamente al arrancar el sistema.

<details>
<summary>Habilitar servicio </summary>

    # Habilitar el servicio para que se inicie con el sistema
    sudo systemctl enable $SERVICE_NAME

</details>
<br>

# Inicar servicio
Iniciar el Servicio:
sudo systemctl start $SERVICE_NAME: Inicia el servicio.
<details>
<summary>Iniciar servicio </summary>

    # Iniciar el servicio
    sudo systemctl start $SERVICE_NAME


</details>

<br>

# Mostrar el estado del servicio
sudo systemctl status $SERVICE_NAME: Muestra el estado actual del servicio, permitiendo verificar que está funcionando correctamente.
<details>
<summary>Mostrar servicio </summary>

    # Mostrar el estado del servicio
    sudo systemctl status $SERVICE_NAME


</details>

<br>