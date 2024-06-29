#set page(
  paper: "a4",
  margin: (x:1cm, y:2cm),
) 

#set text(
  font: "Arial",
  size: 12pt,
)


/*
insert some examples of math equations
to understand hoe it works
*/

$
tan(x) = sin(x)/cos(x)
$

Einstein's mass-energy equivalence: 
$
E=(m c)^2
$

The Pythagorean theorem: $a^2 + b^2 = c^2$

The probability of getting (k) heads when flipping (n) coins:
$P(E) = binom(n, k) p^k (1-p)^(n-k)$

The standard normal distribution: 
$
phi(x) = 1/sqrt(2pi) e^((-x^2)/2)
$

The Fourier transform of a function (f) is defined as:

$
F(k) = integral_(-infinity)^(+infinity) (f(x) * e^(-2pi i k x) d x)
$

The Cauchy-Schwarz Inequality:
$
|<x, y>|^2 <= ||x|| ||y||
$

$
sum_(k=1)^n a_k b_k <= ( sum_(k=1)^n a_k^2) ( sum_(k=1)^n b_k^2)
$

== Resources ==
https://sitandr.github.io/typst-examples-book/book/basics/