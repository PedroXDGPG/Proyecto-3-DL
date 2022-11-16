



**<center> <h1> Proyecto III: Algoritmo de Booth - Multiplicador con signo** </h1> </center>


<p style="text-align: center;">
Estudiantes: Randall Mariño Oviedo, Pedro Medinila Robles, Tyler Ureña Vargas

</p>
    


# Descripción del circuito 



Para este circuito se utiliza una FPGA Nexys A7 Artix-7, progamandola desde el software de Vivado, utilizando el lenguaje de Verilog.
Este proyecto consiste en una unidad de multiplicación de signo con base en el Algoritmo de Booth.
El mismo deberá construirse según las pautas fundamentales de diseño digital sincrónico.
El circuito consta de tres bloques de constructivos o subsistemas:
1. Subsistema de lectura de datos.
2. Subsistema de cálculo de multiplicación.
3. Subsistema de conversión de binario a representación BCD.
4. Subsistema de despliegue en display de 7 segmentos.

Estos subsistemas deberán interconectarse para dar visualmente el resultado en el display
# Diagramas de bloques

![](https://i.imgur.com/oUW2mWd.png)



Para los dos primeros bloques, el multiplicando y el multiplicador se colocan en los registros m y Q respectivamente. Un registro de 1 bit se coloca lógicamente a la derecha del LSB (bit menos significativo) Q0 del registro Q. Esto se denota por Q-1. A y Q-1 se establecen inicialmente en 0. La lógica de control verifica los dos bits Q0 y Q-1. Si los bits twi son iguales (00 u 11), todos los bits de A, Q, Q-1 se desplazan 1 bit a la derecha. Si no son iguales y si la combinación es 10 entonces se resta el multiplicando de A y si la combinación es 01 entonces se suma el multiplicando con A. En ambos casos los resultados se almacenan en A, y luego de la operación de suma o resta , A, Q, Q-1 se desplazan a la derecha. El cambio es la operación aritmética de cambio a la derecha en la que el bit más a la izquierda, es decir, An-1, no solo se cambia a An-2 sino que también permanece en An-1. Esto es para conservar el signo del número en A y Q. El resultado de la multiplicación aparecerá en A y Q.

En el tercer bloque se realiza la decodificacion del codigo binario a una BCD el cual pasa al siguiente bloque que representa el resultado en pantalla mediante un displays de siete segmentos.

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
