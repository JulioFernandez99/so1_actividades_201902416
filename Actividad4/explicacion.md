

# <div align="center"><img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Smilies/Alien%20Monster.png" width="50px" /> &nbsp; Tarea#4 | SOPES1 &nbsp; <img src="https://raw.githubusercontent.com/Tarikul-Islam-Anik/Animated-Fluent-Emojis/master/Emojis/Smilies/Alien%20Monster.png" width="50px" />

Crear un systemd Unit de tipo servicio que realice lo siguiente.

- Ejecutar un script imprima un saludo y la fecha actual infinitamente con una pausa de un segundo.

- Habilitar el servicio para que se inicie con el sistema 


# Explicación del Script


## eliminar_servicio
Esta función detiene y elimina el servicio existente, y recarga systemd para que reconozca los cambios.

## Verificación
Antes de crear el nuevo servicio, el script verifica si el archivo del servicio ya existe. Si existe, llama a la función eliminar_servicio.

## Creación del Script y del Servicio
Luego, el script crea el nuevo archivo de servicio y el script de saludo.

## Recargar y Reiniciar
 Finalmente, recarga systemd, habilita y reinicia el servicio, y muestra su estado.


## Obervaciones
- Antes de ejecutar darle permisos -> chmod +x configurar_servicio.sh

- Verificar que exista -> ls -l /usr/local/bin/

- Por temas de intalacion del servicio no debe de preocuparse, ya que el script gestiona todo esto

- Para poder ver los logs ejecutar el comando -> sudo journalctl -f -u saludo.service

- Para correr el script utilice el comando -> ./script.sh

- Para eliminar el sericio:
    - Detener el servicio  
        <details>
        <summary>Detener servidor</summary>

                sudo systemctl stop saludo.service


        </details>
        <br>

    - Deshabilitar el servicio:Desactiva el servicio para que no se inicie automáticamente al arrancar el sistema
        <details>
        <summary>Deshabiliar servicio</summary>

                sudo systemctl disable saludo.service


        </details>
        <br>

    - Eliminar el Archivo de Unidad:Elimina el archivo de unidad del servicio para que systemd deje de reconocerlo
        <details>
        <summary>Eliminar el Archivo de Unidad</summary>
            sudo rm /etc/systemd/system/saludo.service


        </details>
        <br>

    - Recargar systemd:Recarga la configuración de systemd para que los cambios surtan efecto
        <details>
        <summary>Recargar systemd</summary>

                sudo systemctl daemon-reload


        </details>
        <br>
        
    - Verificar la Eliminación  
        <details>
        <summary>Verificar la Eliminación</summary>

                systemctl status saludo.service

        </details>

    


 ![](https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif)

#### <div align="center"> Desarrollado por
<div align="center">
Julio Alfredo Fernandez Rodriguez
201902416

<br>

![](https://user-images.githubusercontent.com/73097560/115834477-dbab4500-a447-11eb-908a-139a6edaec5c.gif)