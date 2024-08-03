# Parte 1 | Gestion de usuarios

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
        Para la creacion de un usuario es necesario utilizar el comando sudo adduser nombre_usuario. Al ejecutar este comando establece un password.
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


# Parte 2 | Gestion de grupos

<details>
    <summary>Creacion de grupo 1</summary>
    Para crear un grupo se utiliza el comando sudo groupadd nombre_grupo.
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/creando_grupo1.png" style="width:50rem"></a>
    </div>

</details>


<details>
    <summary>Creacion de grupo 2</summary>
    Para crear un grupo se utiliza el comando sudo groupadd nombre_grupo.
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/crando_grupo2.png" style="width:50rem"></a>
    </div>
</details>

<details>
    <summary>Verficar creacion de grupos </summary>
    Para verificar la creacion de grupos se utilizo el comando cat /etc/group, para poder observar la base de datos de grupos.
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/cat_grupos.png" style="width:50rem"></a>
    </div>
    <br>
    Tambien se podria utilizar el comando groups nombre_usuario para verificar a que grupo pertenece el usuario.
</details>

<details>
    <summary>Agregar usuario1 a grupo1</summary>
    Para agregar un usuario a un grupo se utiliza el comando sudo usermod -aG grupo1  usuario1.
    <br>
    En donde:<br>
    a: (append): Añade el usuario al grupo sin eliminarlo de otros grupos a los que ya pertenece.<br>
    G: (group): Especifica el grupo al que quieres añadir el usuario.
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/agregando_U1G1.png" style="width:50rem"></a>
    </div>
</details>


<details>
    <summary>Agregar usuario2 a grupo2</summary>
    Para agregar un usuario a un grupo se utiliza el comando sudo usermod -aG grupo2  usuario2.
    <br>
    En donde:<br>
    a: (append): Añade el usuario al grupo sin eliminarlo de otros grupos a los que ya pertenece.<br>
    G: (group): Especifica el grupo al que quieres añadir el usuario.
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/agregando_U2G2.png" style="width:50rem"></a>
    </div>
</details>

<details>
    <summary>Verificando usuarios agregados a grupos</summary>
    Para verificar que un usuario se ha agregado correctamente se utiliza el comando groups nombre_usuario para verificar a grupo pertenece el usuario.
    <br>
    <br>
    Verificiando usuario1
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/verf_grupo1.png" style="width:50rem"></a>
    </div>
    <br>
    <br>
    Verificiando usuario2
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/verf_grupo2.png" style="width:50rem"></a>
    </div>
</details>

# Parte 3 | Gestion de permisos

<details>
    <summary>Acceso a usuario</summary>
    Para poder acceder desde un usuario a otro usuario es necesario ejecutar el comando  sudo -i -u nombre_usuario. 
    <br>
    En donde:
    <br>
    u: se utiliza para especificar el usuario con el que deseas ejecutar el comando. En el caso de sudo -i -u usuario1, -u usuario1 indica que se quiere ejecutar el comando como el usuario usuario1.
    <br>
    i:se utiliza para iniciar una sesión de shell interactiva como el usuario especificado. En el caso de sudo -i -u usuario1, -i abre una nueva sesión de shell como usuario1, lo que permite trabajar en la línea de comandos como si fuera ese usuario. Esto es útil si se necesita realizar varias acciones como el usuario objetivo.
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/crando_grupo2.png" style="width:50rem"></a>
    </div>
</details>


<details>
    <summary>Creacion archivo</summary>
    Para poder crear un archivo se utiliza el comando touch nombre_usuario.extension
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/crando_grupo2.png" style="width:50rem"></a>
    </div>
</details>

<details>
    <summary>Creacion de directorio</summary>
    Para poder crear un directorio se utiliza el comando mkdir nombre_directorio
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/crando_grupo2.png" style="width:50rem"></a>
    </div>
</details>


<details>
    <summary>Escribir en un archivo</summary>
    Para poder escribir en un archivo se utiliza el comando vi nombre_archivo.extension dando la opcion de escribir en el archivo, para salir de esa opcion precionar : y escribir el codigo que desee.
    <br>
    Por ejemplo:<br>
    :w -> Guarda el archivo.<br>
    :wq o :x -> Guarda el archivo y sale.<br>
    :q -> Sale (solo si no hay cambios sin guardar).<br>
    :q! -> Sale sin guardar los cambios.
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/crando_grupo2.png" style="width:50rem"></a>
    </div>
</details>

<details>
    <summary>Creacion de directorio</summary>
    Para poder crear un directorio se utiliza el comando mkdir nombre_directorio
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/crando_grupo2.png" style="width:50rem"></a>
    </div>
</details>


<details>
    <summary>Agregar permisos root a usuarios</summary>
    Para otorgar permisos root es necesario acceder al archivo /etc/sudoers y agregar los permisos usuario1 ALL=(ALL) ALL.
    <br>
        <div align="center">
            <a href="" target="_blank"><img src="https://github.com/JulioFernandez99/so1_actividades_201902416/blob/main/Recursos/Actividad3/crando_grupo2.png" style="width:50rem"></a>
    </div>
</details>


