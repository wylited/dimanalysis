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

	SysUnit velocity("Velocity", "m/s", {length.getBaseUnit(), time.getBaseUnit()}, {1, -1});

	// SysUnit power("Watt", "W", {mass.getBaseUnit(), length.getBaseUnit(), time.getBaseUnit()}, {1, 2, -2});
	// standard.addUnit(&power); 

	return 0;
}
