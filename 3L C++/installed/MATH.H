/*
 * MATH.H
 */

#define EDOM     33
#define ERANGE   34

#define HUGE_VAL LL_HUGE_VAL
extern double HUGE_VAL;

double atof(const char *);
double acos(double);
double asin(double);
double atan(double);
double atan2(double, double);
double cos(double);
double sin(double);
double tan(double);
double cosh(double);
double sinh(double);
double tanh(double);
double exp(double);
double frexp(double, int *);
double ldexp(double, int);
double log(double);
double log10(double);
double modf(double, double *);
double pow(double, double);
double sqrt(double);
double ceil(double);
double fabs(double);
double floor(double);
double fmod(double, double);
#ifdef _IMST8
#pragma __3L inline fabs 39
#pragma __3L inline ceil 40
#pragma __3L inline floor 41
#pragma __3L inline modf 43
#endif
