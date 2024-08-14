#!/bin/bash

#^ Definir variables
SCRIPT_PATH="/usr/local/bin/saludo.sh"
SERVICE_PATH="/etc/systemd/system/saludo.service"
SERVICE_NAME="saludo.service"

#^ Función para eliminar el servicio existente
eliminar_servicio() {
    echo "Deteniendo y eliminando el servicio existente..."
    sudo systemctl stop $SERVICE_NAME
    sudo systemctl disable $SERVICE_NAME
    sudo rm -f $SERVICE_PATH
    sudo systemctl daemon-reload
}

#^ Verificar si el servicio ya existe
if [ -f "$SERVICE_PATH" ]; then
    echo "El servicio ya existe. Procediendo a eliminarlo..."
    eliminar_servicio
else
    echo "No se encontró el servicio existente."
fi

#^ Crear el script de saludo
echo "Creando el script de saludo..."
sudo tee $SCRIPT_PATH > /dev/null << 'EOF'
#!/bin/bash

while true
do
    echo "Hola, la fecha y hora actual es: $(date)"
    sleep 1
done
EOF

#^ Dar permisos de ejecución al script
sudo chmod +x $SCRIPT_PATH

#^ Crear el archivo de servicio systemd
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

#^ Recargar systemd para reconocer el nuevo servicio
sudo systemctl daemon-reload

#^ Habilitar el servicio para que se inicie con el sistema
sudo systemctl enable $SERVICE_NAME

#^ Iniciar el servicio
sudo systemctl start $SERVICE_NAME

#^ Mostrar el estado del servicio
sudo systemctl status $SERVICE_NAME


# comando para ver los logs -> sudo journalctl -f -u saludo.service
# detener el servicio -> sudo systemctl stop saludo.service
