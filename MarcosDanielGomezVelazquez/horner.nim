
proc evHorner(x: float, coeficientes: seq[float]): float =
    var salida: float = 0.0  
    for coef in coeficientes:
        salida = salida * x + coef
    return salida  

# Definir constantes de la funcion
const a = 5.0
const b = 8.0
const c = 2.0

# Ejemplo polinomio primer y segundo grado
var coeficientesGrado1: seq[float] = @[b, a]  # Coeficientes
var xGrado1: float = 5.0  # Punto a evaluar

var coeficientesGrado2: seq[float] = @[c, b, a]  
var xGrado2: float = 6.0  

# Imprimir valor
echo "Para x = ", xGrado1, " el polinomio de primer grado tiene valor de: ", evHorner(xGrado1, coeficientesGrado1)
echo "Para x = ", xGrado2, " el polinomio de primer grado tiene valor de: ", evHorner(xGrado2, coeficientesGrado2)