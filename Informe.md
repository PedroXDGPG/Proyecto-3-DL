



**<center> <h1> Proyecto III: Algoritmo de Booth - Multiplicador con signo** </h1> </center>


<p style="text-align: center;">
Estudiantes: Tyler Ureña Vargas, Randall Mariño Oviedo y Pedro Medinila Robles, 

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
![imagen](https://user-images.githubusercontent.com/110325468/202393736-bbca4861-f827-44e8-9544-3238fc161064.png)




Para los dos primeros bloques, el multiplicando y el multiplicador se colocan en los registros m y Q respectivamente. Un registro de 1 bit se coloca lógicamente a la derecha del LSB (bit menos significativo) Q0 del registro Q. Esto se denota por Q-1. A y Q-1 se establecen inicialmente en 0. La lógica de control verifica los dos bits Q0 y Q-1. Si los bits twi son iguales (00 u 11), todos los bits de A, Q, Q-1 se desplazan 1 bit a la derecha. Si no son iguales y si la combinación es 10 entonces se resta el multiplicando de A y si la combinación es 01 entonces se suma el multiplicando con A. En ambos casos los resultados se almacenan en A, y luego de la operación de suma o resta , A, Q, Q-1 se desplazan a la derecha. El cambio es la operación aritmética de cambio a la derecha en la que el bit más a la izquierda, es decir, An-1, no solo se cambia a An-2 sino que también permanece en An-1. Esto es para conservar el signo del número en A y Q. El resultado de la multiplicación aparecerá en A y Q.

En el tercer bloque se realiza la decodificacion del codigo binario a una BCD el cual pasa al siguiente bloque que representa el resultado en pantalla mediante un displays de siete segmentos.

# Diagramas de estado


![351](https://user-images.githubusercontent.com/110325468/202138251-6cb19533-175c-4218-9faa-011bff72f5cb.png)








S0: En este estado se introduce el valor el valor de A y B, Button es el botón que dice cuando iniciar la operación.

S1: Este estado es meramente el multiplicador, posee una bandera valid que evalúa si la operación se puede relacionar o no.

S2: El S2 consiste en la conversión de binario a BCD, posee una bandera DONE que indica si logró realizar la conversión.

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
El principal problema que hemos tenido a lo largo del proyecto es que a la hora de interconectar los subsistemas creados individualmente, estos no funcionan de manera correcta a como funcionaban probándolos uno por uno, a la hora de representar los números decimales en los displays de 7 segmentos, estos no representan el numero correctamente al usar 8 displays, si se utilizan 4 displays si funciona, sin embargo al usar únicamente 4, no se puede multiplicar los números negativos. 

En el momento en que se juntaron los subsistemas el multiplicador dejó de funcionar debido a que no está leyendo multiplicador, solo el multiplicando, generando un operación errónea.
