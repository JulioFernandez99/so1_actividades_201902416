# Parte1 1 | Gestion de usuarios

<details>
<summary>Creacion del usuario 1</summary>
        Para la creacion de un usuario es necesario utilizar el comando sudo adduser nombre_usuario. Al ejecutar este comando         establece un password.
        <div align="center">
                        <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/creando_usuario1.png" style="width:50rem"></a>
        </div>

</details>

<details>
<summary>Creacion del usuario 2</summary>
     Para la creacion de un usuario es necesario utilizar el comando sudo adduser nombre_usuario. Al ejecutar este comando establece un password.
     <div align="center">
        <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/creacion_usuario2.png" style="width:50rem"></a>
    </div>

</details>

<details>
    <summary>Creacion del usuario 3</summary>
        <div align="center">
    </div>
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/creacion_usuario3.png" style="width:50rem"></a>
    </div>

</details>

<details>
    <summary>Mostrar informacion de usuario1</summary>
        Para mostrar la informacion de dicho usuario, se ultiliza el siguiente comando, id nombre_usuario1.   
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/info_usuario1.png" style="width:50rem"></a>
    </div>

</details>




<details>
    <summary>Listar directorios de usuarios existentes</summary
    Para ver los directorios raiz de cada usuario hay que hacer el comando ls a la ruta home, de la siguiente manera: ls /home
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/list_directorios_usuarios.png" style="width:50rem"></a>
    </div>

</details>


<details>
    <summary>Base de datos de usuarios</summary>
    Para ver la base de datos de usuarios, utilizar el comando cat /etc/passwd
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/db_usuarios.png" style="width:50rem"></a>
    </div>

</details>


<details>
    <summary>Eliminar usuario, mas no su directorio raiz</summary>
    Para eliminar un usuario y conservar su directorio utilizar el siguiente comando: sudo userdel nombre_usuario.
    <br>
    <br>
    En esta imagen se puede observar que se conservo el directorio raiz del usuario.
    <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/list_directorios_usuarios.png" style="width:50rem"></a>
    </div>
    <br>
    Pero en esta imagen se observa que el usuario ya no eciste en la base de datos.
    <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/db_usuario_eliminado.png" style="width:50rem"></a>
    </div>

</details>
