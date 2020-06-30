# Verificaci-nFormal

Se implementan los siguientes algoritmos utilizando verificación formal.

1. Function AlphaValues (InStr : String) return Natural_Array;
   Función a la que se le pasa como parámetro una String de caracteres, ésta devuelve un vector con las posiciones de cada caracter 
   en el abecedario. (A=1,B=2...Y=25,Z=26) (hola -> {8,15,12,1}) 

2. Function DivVector(vectorInicial : Natural_Array; n : Positive) return Natural_Array;
   Función a la que se le pasa como parámetros un vector de enteros y un entero positivo, ésta devuelve un vector de números naturales.
   Para rellenar las posiciones del vector, se calcula el módulo de cada posición del vector de entra con el entero positivo, si se obtiene 0, se copia
   el valor de esa posición del vector de entrada a la misma posición del vector de salida, si el módulo es distinto de 0, entonces se copia un 0.

3. Function RandomVector (In1 : Positive; In2 : Positive) return Positive_Array;
   Función a la que se le pasa 2 números como parámetros, se calcula el módulo de estos dos, se crea un vector de ese tamaño y se rellena cada espacio de
   dicho vector aplicando In1*(posición del vector) + v(i). Siendo v(i) el valor con el que se inicializa cada posición del vector (1 en este caso).
   --Los parámetros admitidos son de tipo Positive para evitar divisiones por 0.

4. Function ReverseString (InStr : String) return String;
   Función a la que se le pasa como parámetro una String de caracteres, la cual es invertida y retornada como String. (hola -> aloh).   

5. Procedure ScaleChanger (InTemp : in out Integer; InScale : in Character)
   Procedimiento al que se le pasan dos parámetros, uno es un entero con la temperatura origen y donde se almacenará la temperatura final, el segundo es un 
   caracter (Cc, Ff) que representa la escala origen. Si el caracter pasado es distinto de (CcFf) entonces no se realiza la conversión.
   --Se aplica la fórmula yºF = (xºC · 2) + 32 -> Celsius a Fahrenheit.
   --Se aplica la fórmula yºC = (xºF - 32)/2  -> Fahrenheit a Celsius.

6. Procedure SumVector (v : in Natural_Array; sum : out Natural)
   Se pasa un vector como parámetro de entrada, se busca el número más pequeño y más grande, y se obtiene la media de estos dos valores, almacenando su resultado
   en la variable 'sum'. 
   --Se aplica la fórmula sum = (Max(v) + Min(v))/2.
   
