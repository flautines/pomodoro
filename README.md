# pomodoro
**Pomodoro** es una aplicación muy simple implementada en *bash* para contar tiempos pomodoro, es decir, tiempo dedicado a trabajo y tiempo de descanso. La aplicación la creé para mí mientras aprendía scripting en bash, así que es muy simple pero cumple su función. La forma de invocarlo es:
```bash
$ ./pomodoro.sh [tiempo_trabajo] [tiempo_descanso]
```
Si no se especifica ningún parámetro ```tiempo_trabajo=25 minutos``` y ```tiempo_descanso=5 minutos```. En pantalla irá apareciendo una cuenta atrás cada minuto y al llegar a 0 sonará una alarma. También indica si es tiempo de descanso o de trabajar.

De momento sólo es capaz de contar un pomodoro, si se quieren contar más debe ejecutarse el script otra vez. En siguientes versiones haré que se puedan contar tantos pomodoros como se deseen.

**Dependencias:** El script utiliza *paplay*, que forma parte del paquete *pulseaudio* y utiliza ficheros de audio en */usr/share/sounds/freedesktop/*
