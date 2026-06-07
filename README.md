Scripts de Administración

Este repositorio contiene los scripts de automatizacion de tareas administrativas dentro del proyecto de infraestructura cliente-servidor basado en Ubuntu Server, OpenLDAP y MySQL.

El objetivo de estos scripts es simplificar las tareas habituales de gestión del sistema, reducir errores manuales y facilitar el mantenimiento de la infraestructura.

---

"crear_usuario.sh"

Este script permite crear nuevos usuarios de forma rápida y automatizada.

Su función principal es evitar que el administrador tenga que realizar manualmente todos los pasos necesarios para dar de alta a un nuevo usuario. Mediante una única ejecución del script, se introducen los datos necesarios y el sistema realiza automáticamente las acciones definidas para la creación de la cuenta.

-Uso

```bash
bash crear_usuario.sh <usuario> <uid> <contraseña>
```

-Ejemplo

```bash
bash crear_usuario.sh empleado4 10004 1234
```

---

"eliminar_usuario.sh"

Este script permite eliminar usuarios que ya no necesitan acceso al sistema.

Su utilización facilita la gestión de cuentas cuando un empleado abandona la empresa o cuando es necesario retirar permisos de acceso. De esta forma se mantiene el sistema organizado y se evita la acumulación de cuentas innecesarias.

-Uso

```bash
bash eliminar_usuario.sh <usuario>
```

-Ejemplo

```bash
bash eliminar_usuario.sh empleado4
```

---

"estado_sistema.sh"

Este script está orientado a la supervisión rápida del servidor.

Permite comprobar desde una única herramienta el estado de los servicios más importantes de la infraestructura, facilitando la detección de posibles problemas sin necesidad de ejecutar múltiples comandos manualmente.

Actualmente se utiliza para verificar el estado de:

* OpenLDAP.
* MySQL.
* Firewall UFW.

Su uso resulta especialmente útil durante tareas de mantenimiento, diagnóstico de incidencias o comprobaciones previas a la puesta en producción del sistema.

-Uso

```bash
bash estado_sistema.sh
```

---

"backup.sh"

Este script permite realizar una copia de seguridad manual del sistema en cualquier momento.

Su principal utilidad es generar un respaldo adicional antes de realizar modificaciones importantes en el servidor, como cambios de configuración, instalación de nuevos servicios o tareas de mantenimiento que puedan afectar al funcionamiento del sistema.

Aunque la infraestructura dispone de un sistema de copias de seguridad automáticas programadas, este script proporciona al administrador una forma rápida de crear una copia inmediata cuando se considere necesario, añadiendo una capa extra de seguridad antes de efectuar cambios relevantes.

De esta forma se garantiza la posibilidad de recuperar la configuración o la información previa en caso de que se produzca algún error durante la intervención.

-Uso

```bash
sudo bash backup.sh
```
