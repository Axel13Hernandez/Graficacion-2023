proc FindSpan(n, p: int, u: float, U: seq[float]): int =
  # Determine the knot span index
  # Input: n, p, u, U
  # Return: the knot span index

  if u == U[n + 1]: 
    return n  # Special case
  
  var low = p
  var high = n + 1
  var mid = 0

  # Do binary search
  while u < U[mid] or u >= U[mid + 1]:
    mid = (low + high) div 2

    if u < U[mid]:
      high = mid
    else:
      low = mid

  return mid

let n = 5  # Entero
let p = 2  # Entero
let u = 2.5  # Número en punto flotante
let U = @[0.0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0]  # Secuencia de números en punto flotante
let result = FindSpan(n, p, u, U)
echo "\n\tEl índice del nudo span es: ", result  