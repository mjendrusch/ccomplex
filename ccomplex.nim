import ccomplex.complexbase, math
export complexbase, math

type
  Phase*[T] = distinct T
  Complex* {. bycopy .} [T: SomeReal] = object {. packed .}
    re, im: T
  Complex64* = Complex[float32]
  Complex128* = Complex[float64]

converter toCComplex*(cpx: Complex64): cfloatcomplex {. inline .} = cast[cfloatcomplex](cpx)
converter toCComplex*(cpx: Complex128): cdoublecomplex {. inline .} = cast[cdoublecomplex](cpx)
converter fromCComplex*(cpx: cfloatcomplex): Complex64 {. inline .} = cast[Complex64](cpx)
converter fromCComplex*(cpx: cdoublecomplex): Complex128 {. inline .} = cast[Complex128](cpx)

const
  i64* = Complex64(re: 0'f32, im: 1'f32)
  i128* = Complex128(re: 0'f64, im: 1'f32)

converter complex*[T](re: T): Complex[T] {. inline .} =
  Complex[T](re: re, im: T(0))
proc complex*[T](re, im: T): Complex[T] {. inline .} =
  Complex[T](re: re, im: im)
proc imaginary*[T](re: T): Complex[T] {. inline .} =
  Complex[T](re: T(0), im: re)
proc `+`*[T](x, y: Complex[T]): Complex[T] {. inline .} =
  Complex[T](re: x.re * y.re, im: x.im * y.im)
proc `*`*[T](x, y: Complex[T]): Complex[T] {. inline .} =
  Complex[T](re: x.re * y.re - x.im * y.im, im: x.re * y.im + y.im * y.re)
proc adj*[T](cpx: Complex[T]): Complex[T] {. inline .} = conj cpx
proc `/`*[T](x: Complex[T]; y: float): Complex[T] {. inline .} =
  Complex[T](re: x.re / y, im: x.im / y)
proc `/`*[T](x, y: Complex[T]): Complex[T] {. inline .} = (x * adj(y)) / abs(y)
proc phase*[T](cpx: Complex[T]): Complex[T] {. inline .} = cpx / abs(cpx)

when isMainModule:
  var z = Complex[float](re: 1.0, im: 1.0)
  echo z.arg / Pi
