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
to understand how it works
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


== Resources
https://sitandr.github.io/typst-examples-book/book/basics/


= Report calculations for the mosfet

threshold voltge:

$
V_t = V_"t_id" + phi_"ms" = 2.77 - 1.05 = 1.72 V
$

$
V_"t_id" = 2phi_F + gamma sqrt(2phi_F) = 1.06 + 1.66  sqrt(1.06) = 2.77 V
$

$
2phi_F = 2(k T) / q ln(N_a / n_i) = 0.026 * ln(10^19 / (1.4*10^10)) = 1.06 V
$

$
gamma = sqrt((2 epsilon_"si" q N_"sub")) / C_"ox" = sqrt(2 * 10^(-12) * 1.6*10^(-19) * 10^18) / (3.4 * 10^(-7)) = 1.66 V
$

$
C_"ox" = epsilon_"ox" / t_"ox" = 0.34 * 10^(-12) / 10^(-6) = 3.4 * 10^(-7) F/"cm"^2
$
mosfet current:

$
I_"d_lin" = K_n W/L ((V_g - V_t)V_"ds" - V_"ds"^2/2)
$

assuming $V_g = 3.3 V$ and $W = 10 "nm"$
$
I_"d_sat" = K_n/2 W/L (V_g - V_t)^2 = (81.6 * 10^(-6)) / 2 * ("W")/(0.5 * 10^(-6)) * (V_g - 1.72)^2 = 2.04 mu A
$

$
K_n = mu_n C_"ox" = 240 * 3.4 * 10^(-7)= 81.6 (mu A)/V^2
$

$
mu_n = mu_"min" + mu_0 / (1 + (N_t / N_0)^alpha) #h(4mm) = #h(4mm) 92 + 1268 / (1 + ((1.2*10^18) / (1.3 * 10^17))^0.91) #h(4mm) = #h(4mm) 240 "cm"^2/"Vs"
$

threshold adjustment:

$
Delta V_t = plus.minus (q N_i) / C_"ox"
$

$
V_t = V_"t_old" - Delta V_t = 1.72 - (1.6*10^(-19) * N_i) / (3.4 * 10^(-7)) = 0.8 V
$

so 
$
N_i = 1.955 * 10^12 "cm"^(-3)
$

Capacitances:

$
A = W L = 0.5 * 10^(-4) * 10 * 10^(-7) = 5 * 10^(-11) "cm"^2
#h(7mm)
C_"ox" = epsilon_"ox" / t_"ox" = 3.4 * 10^(-7) F/"cm"^2
$

$
w_"max" = sqrt(((2 epsilon_"si") / (q N_"sub")) * 2 phi_F) = sqrt(((2 * 10^(-12)) / (1.6 * 10^(-19) * 10^18)) * 1.06) = 3.64 * 10^(-6) "cm"
$
$
C_"si_min" = epsilon_"si" / w_"max" = 10^(-12) / (3.64 * 10^(-6)) = 2.7 * 10^(-7) F/"cm"^2
$

$
C_"Max" = C_"ox" A = 
$

$
C_"Min" = C_"inv" A =
$

$
C_"fb" = C_"fb_series" A = 
$