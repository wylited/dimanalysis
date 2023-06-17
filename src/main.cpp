#include "dimension.hpp"
#include <iostream>

int main() {
	// Create a new dimension for temperature and add Celsius and Fahrenheit units
	Dimension temperature("Temperature");

	temperature.addUnit(DimUnit("Celsius", "°C",
			[](double value) { return value + 273.15; }, 
			[](double value) { return value - 273.15; }
	));

	temperature.addUnit(DimUnit("Fahrenheit", "°F", 
			[](double value) { return (value - 32.0) * 5.0 / 9.0 + 273.15; },
			[](double value) { return (value - 273.15) * (9.0 / 5.0) + 32.0; }
	));

	temperature.addUnit(DimUnit("Kelvin", "K", 
			[](double value) { return value; },
			[](double value) { return value; }
	));

	temperature.setBaseUnit("Kelvin");

	// Convert 0 degrees Celsius to Kelvin
	std::cout << temperature.convert(0, "Celsius", "Kelvin") << std::endl;
	
	// convert 0 degrees Kelvin to Fahrenheit
	std::cout << temperature.convert(0, "Kelvin", "Fahrenheit") << std::endl;

	return 0;
}
