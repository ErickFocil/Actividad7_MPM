import UIKit

// Punto 2 y 3
var costo_referencia:[Float] = [8.3,10.5,9.9]
var costo_final:[Float] = [0,0,0]
var ind = 0

func impuesto(entrada:Float) -> Float {
    var result = entrada + (entrada*0.16)
    return result
}

for i in costo_referencia {
    costo_final[ind] = impuesto(entrada:costo_referencia[ind])
    ind += 1
}

print(costo_final)

// Punto 4
func sumaTres(a:Int,b:Int,c:Int) -> Int {
    return a+b+c
}
print(sumaTres(a:4,b:7,c:39))

// Puntos 5 y 6
var datos = [3,7,9,2]
extension Array{
    func Transformar<T> (inicial:T, acumulada:(T,Element) -> T) -> T{
        var respuesta:T = inicial
        for valor in self{
            respuesta = acumulada(respuesta, valor)
        }
        return respuesta
    }
}
print(datos.Transformar(inicial: 0) {(a,b) in a + b})

// Punto 7
var precios = [4.2, 5.3, 8.2, 4.5]
var impuestos2 = precios.map{a in return a + (a * 0.16)}
print(impuestos2)

// Punto 8
var precio_menor = impuestos2.filter{a in a > 6}
print(precio_menor)
