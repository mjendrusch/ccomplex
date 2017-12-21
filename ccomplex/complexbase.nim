##  Trigonometric functions.
##  Arc cosine of Z.

const complexHeader = "complex.h"

{. passL: "-lm" .}

type
  cfloatcomplex* {. bycopy, importc: "float complex", nodecl .} = object
    re, im: cfloat
  cdoublecomplex* {. bycopy, importc: "double complex", nodecl .} = object
    re, im: cdouble
  clongdoublecomplex* {. bycopy, importc: "long double complex", nodecl .} = object
    re, im: clongdouble


proc acos*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "cacos",
    header: complexHeader.}
##  Arc sine of Z.

proc asin*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "casin",
    header: complexHeader.}
##  Arc tangent of Z.

proc atan*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "catan",
    header: complexHeader.}
##  Cosine of Z.

proc cos*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "ccos",
    header: complexHeader.}
##  Sine of Z.

proc sin*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "csin",
    header: complexHeader.}
##  Tangent of Z.

proc tan*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "ctan",
    header: complexHeader.}
##  Hyperbolic functions.
##  Hyperbolic arc cosine of Z.

proc acosh*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "cacosh",
    header: complexHeader.}
##  Hyperbolic arc sine of Z.

proc asinh*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "casinh",
    header: complexHeader.}
##  Hyperbolic arc tangent of Z.

proc atanh*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "catanh",
    header: complexHeader.}
##  Hyperbolic cosine of Z.

proc cosh*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "ccosh",
    header: complexHeader.}
##  Hyperbolic sine of Z.

proc sinh*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "csinh",
    header: complexHeader.}
##  Hyperbolic tangent of Z.

proc tanh*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "ctanh",
    header: complexHeader.}
##  Exponential and logarithmic functions.
##  Exponential function of Z.

proc exp*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "cexp",
    header: complexHeader.}
##  Natural logarithm of Z.

proc log*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "clog",
    header: complexHeader.}
##  Power functions.
##  Return X to the Y power.

proc pow*(x: cdoublecomplex; y: cdoublecomplex): cdoublecomplex {.cdecl, importc: "cpow",
    header: complexHeader.}
##  Return the square root of Z.

proc sqrt*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "csqrt",
    header: complexHeader.}
##  Absolute value, conjugates, and projection.
##  Absolute value of Z.

proc abs*(z: cdoublecomplex): cdouble {.cdecl, importc: "cabs", header: complexHeader.}
##  Argument value of Z.

proc arg*(z: cdoublecomplex): cdouble {.cdecl, importc: "carg", header: complexHeader.}
##  Complex conjugate of Z.

proc conj*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "conj",
    header: complexHeader.}
##  Projection of Z onto the Riemann sphere.

proc proj*(z: cdoublecomplex): cdoublecomplex {.cdecl, importc: "cproj",
    header: complexHeader.}
##  Decomposing complex values.
##  Imaginary part of Z.

proc imag*(z: cdoublecomplex): cdouble {.cdecl, importc: "cimag", header: complexHeader.}
##  Real part of Z.

proc real*(z: cdoublecomplex): cdouble {.cdecl, importc: "creal", header: complexHeader.}

proc acos*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "cacosf",
    header: complexHeader.}
##  Arc sine of Z.

proc asin*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "casinf",
    header: complexHeader.}
##  Arc tangent of Z.

proc atan*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "catanf",
    header: complexHeader.}
##  Cosine of Z.

proc cos*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "ccosf",
    header: complexHeader.}
##  Sine of Z.

proc sin*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "csinf",
    header: complexHeader.}
##  Tangent of Z.

proc tan*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "ctanf",
    header: complexHeader.}
##  Hyperbolic functions.
##  Hyperbolic arc cosine of Z.

proc acosh*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "cacoshf",
    header: complexHeader.}
##  Hyperbolic arc sine of Z.

proc asinh*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "casinhf",
    header: complexHeader.}
##  Hyperbolic arc tangent of Z.

proc atanh*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "catanhf",
    header: complexHeader.}
##  Hyperbolic cosine of Z.

proc cosh*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "ccoshf",
    header: complexHeader.}
##  Hyperbolic sine of Z.

proc sinh*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "csinhf",
    header: complexHeader.}
##  Hyperbolic tangent of Z.

proc tanh*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "ctanhf",
    header: complexHeader.}
##  Exponential and logarithmic functions.
##  Exponential function of Z.

proc exp*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "cexpf",
    header: complexHeader.}
##  Natural logarithm of Z.

proc log*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "clogf",
    header: complexHeader.}
##  Power functions.
##  Return X to the Y power.

proc pow*(x: cfloatcomplex; y: cfloatcomplex): cfloatcomplex {.cdecl, importc: "cpowf",
    header: complexHeader.}
##  Return the square root of Z.

proc sqrt*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "csqrtf",
    header: complexHeader.}
##  Absolute value, conjugates, and projection.
##  Absolute value of Z.

proc abs*(z: cfloatcomplex): cdouble {.cdecl, importc: "cabsf", header: complexHeader.}
##  Argument value of Z.

proc arg*(z: cfloatcomplex): cdouble {.cdecl, importc: "cargf", header: complexHeader.}
##  Complex conjugate of Z.

proc conj*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "conjf",
    header: complexHeader.}
##  Projection of Z onto the Riemann sphere.

proc proj*(z: cfloatcomplex): cfloatcomplex {.cdecl, importc: "cprojf",
    header: complexHeader.}
##  Decomposing complex values.
##  Imaginary part of Z.

proc imag*(z: cfloatcomplex): cdouble {.cdecl, importc: "cimagf", header: complexHeader.}
##  Real part of Z.

proc real*(z: cfloatcomplex): cdouble {.cdecl, importc: "crealf", header: complexHeader.}

proc acos*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "cacosl",
    header: complexHeader.}
##  Arc sine of Z.

proc asin*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "casinl",
    header: complexHeader.}
##  Arc tangent of Z.

proc atan*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "catanl",
    header: complexHeader.}
##  Cosine of Z.

proc cos*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "ccosl",
    header: complexHeader.}
##  Sine of Z.

proc sin*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "csinl",
    header: complexHeader.}
##  Tangent of Z.

proc tan*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "ctanl",
    header: complexHeader.}
##  Hyperbolic functions.
##  Hyperbolic arc cosine of Z.

proc acosh*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "cacoshl",
    header: complexHeader.}
##  Hyperbolic arc sine of Z.

proc asinh*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "casinhl",
    header: complexHeader.}
##  Hyperbolic arc tangent of Z.

proc atanh*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "catanhl",
    header: complexHeader.}
##  Hyperbolic cosine of Z.

proc cosh*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "ccoshl",
    header: complexHeader.}
##  Hyperbolic sine of Z.

proc sinh*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "csinhl",
    header: complexHeader.}
##  Hyperbolic tangent of Z.

proc tanh*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "ctanhl",
    header: complexHeader.}
##  Exponential and logarithmic functions.
##  Exponential function of Z.

proc exp*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "cexpl",
    header: complexHeader.}
##  Natural logarithm of Z.

proc log*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "clogl",
    header: complexHeader.}
##  Power functions.
##  Return X to the Y power.

proc pow*(x: clongdoublecomplex; y: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "cpowl",
    header: complexHeader.}
##  Return the square root of Z.

proc sqrt*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "csqrtl",
    header: complexHeader.}
##  Absolute value, conjugates, and projection.
##  Absolute value of Z.

proc abs*(z: clongdoublecomplex): clongdouble {.cdecl, importc: "cabsl", header: complexHeader.}
##  Argument value of Z.

proc arg*(z: clongdoublecomplex): clongdouble {.cdecl, importc: "cargl", header: complexHeader.}
##  Complex conjugate of Z.

proc conj*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "conjl",
    header: complexHeader.}
##  Projection of Z onto the Riemann sphere.

proc proj*(z: clongdoublecomplex): clongdoublecomplex {.cdecl, importc: "cprojl",
    header: complexHeader.}
##  Decomposing complex values.
##  Imaginary part of Z.

proc imag*(z: clongdoublecomplex): clongdouble {.cdecl, importc: "cimagl", header: complexHeader.}
##  Real part of Z.

proc real*(z: clongdoublecomplex): clongdouble {.cdecl, importc: "creall", header: complexHeader.}
