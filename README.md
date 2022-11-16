



**<center> <h1> Proyecto III: Algoritmo de Booth - Multiplicador con signo** </h1> </center>


<p style="text-align: center;">
Estudiantes: Randall Mariño Oviedo, Pedro Medinila Robles, Tyler Ureña Vargas

</p>
    


# Descripción del circuito 



Para este circuito se utiliza una FPGA Nexys A7 Artix-7, progamandola desde el software de Vivado, utilizando el lenguaje de Verilog. Se programaron 6 entradas (cuatro switches, un botón y un clock) y dos salidas hacia los display de 7 segmentos. Primeramente se introduce un valor en código de Gray utilizando los switches, despues se presiona el botón correspondiente para realizar la lectura del valor, seguidamente se convierte de código Gray a código Binario, esto lo realiza el programa que tiene la FPGA, para iluminar 4 LEDs en representación de base dos y dos displays de siete segmentos en función decimal.

# Diagramas de bloques

![](https://i.imgur.com/zHqvUgs.png)




En el primer bloque entra un código Gray insertado por el usuario, mediante los switches.


En el segundo bloque se realiza la convercion del codigo de Gray a Binario, por medio de la programación, utilizando compuertas XOR, así mismo con el resultado de la conversión se activan los LEDs correspondientes, dependiendo del valor en base dos, esto únicamente cuando se acciona el botón.

En el tercer bloque se realiza la decodificacion del codigo binario a una representacion hexadecimal mediante un displays de siete segmentos.

# Diagramas de estado

![](https://i.imgur.com/I967Mda.png)








S0: En este estado se introduce el valor en codigo de Gray, el TA es el botón que va tener la función de accionar la lectura del mismo.
S1: En este paso se realiza la lectura del valor en Gray
S2: El S2 es la conversion de codigo Gray a Binario.
S3: En este estado se van a encender los LEDs correspondientes en base dos y también se realiza la conversion e iluiminacion de los LEDs de los segmentos del display.

# Simulaciones

![](https://i.imgur.com/Roct3n4.png)




Analizando la simulacion, las entradas G0, G1, G2 y G3, son los valores introducidos en los switches de la FPGA, el bot es el botón que da el paso a realizar la lectura, en la simulacion se observa como son reconocidos los datos introducidos, seguidamente es transformado a codigo binario, esto lo observamos en bin[3:0], luego se realiza la convercion a codigo hexadecimal, esto se observa en seg[6:0], todas esta operaciones fueron realizadas bajo el tiempo del clock.

# Análisis de consumo
Utilizando la herramienta de "Report Utilization" del software de Vivado, dio como resultado que se utilizaron 6 LUT, 11 FF y 25 IO, estos representan un porcentaje muy bajo del total de la FPGA.
![](https://i.imgur.com/ZBWvZOV.png)







Utilizando la herramienta de "Report Power" del software de Vivado,genera una estimación del consumo de FPGA, la utilizada es el modelo Nexys A7 Artix-7, consumiendo 0.111 W.

![](https://i.imgur.com/V1UnUSS.png)

# Reporte de velocidades

Según las pruebas realizadas y el éxito del mismo se pudo lograr utilizar el clock con una frecuencia de 100 MHz

# Problemas hallados

En la realización del proyecto se presentaron distintos errores, el principal fue un error en el programa SystemVerilog el cual no detectaba la licencia por un error en el servidor, como solución se contactó a AMD y se instaló el programa localmente.

Otro problema que se presentó es que al experimentar con la FPGA el pinout de la Nexys era diferente a la que se había establecido en el código anteriormente, por lo que al ejecutarlo se presentaban problemas, para solucionarlo se tuvo que reescribir el pinout correspondiente ya que se tenía un orden diferente y se encendían en orden distintos.

Con los 7 segmentos no se lograban formar números debido a que cada LED tiene un orden distinto y específico, por lo que se tuvo que averiguar cual bit correspondía con el segmento del display para este modelo de Nexys.
