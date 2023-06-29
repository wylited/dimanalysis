#include "dimension.hpp"
#include "system.hpp"
#include <iostream>

int main() {
	System standard;

	Dimension time("Time", "Second", "s");
	Dimension length("Length", "Meter", "m");
	Dimension mass("Mass", "Kilogram", "kg");
	Dimension current("Eletric Current", "Ampere", "A");
	Dimension temperature("Thermodynamic Temperature", "Kelvin", "K");
	Dimension amount("Amount of Substance", "Mole", "mol");
	Dimension luminous("Luminous Intensity", "Candela", "cd");

	standard.addDimensions({&time, &length, &mass, &current, &temperature, &amount, &luminous});

	standard.addUnit("Velocity", "m/s", {{"Length", "Meter"}, {"Time", "Second"}}, {1, -1, 0, 0, 0, 0, 0});

	return 0;
}
