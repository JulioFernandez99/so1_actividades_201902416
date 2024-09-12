#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main() {
    pid_t pid;

    // Crear un proceso hijo
    pid = fork();

    if (pid < 0) {
        // Error al crear el proceso hijo
        perror("fork failed");
        exit(1);
    } else if (pid == 0) {
        // Proceso hijo
        printf("Proceso hijo con PID: %d\n", getpid());
        printf("Se convertira en un proceso zombie.\n");
        exit(0); // El proceso hijo termina, se convierte en zombie
    } else {
        // Proceso padre
        printf("Proceso padre con PID: %d\n", getpid());
        printf("El proceso hijo ha terminado.\n");

        // Esperar más tiempo antes de hacer wait()
        sleep(60); 

        // Usa el comando `ps` o verifica el PID manualmente para ver el estado zombie
        printf("Verifique el proceso hijo con PID: %d usando ps -l.\n", pid);

        // Ahora hacemos wait() para eliminar el proceso zombie
        wait(NULL);
        printf("El proceso zombie ha sido eliminado.\n");
    }

    return 0;
}
