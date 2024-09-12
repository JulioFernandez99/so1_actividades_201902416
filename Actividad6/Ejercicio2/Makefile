# Nombre del archivo ejecutable
TARGET = ejercicio2

# Comando de compilación
CC = gcc

# Flags de compilación (opcionalmente puedes agregar -Wall para más advertencias)
CFLAGS = -Wall

# Objetivo principal, compilar el programa
all: $(TARGET)

# Reglas de compilación
$(TARGET): ejercicio2.c
	$(CC) $(CFLAGS) -o $(TARGET) ejercicio2.c

# Regla para limpiar archivos compilados
clean:
	rm -f $(TARGET)
