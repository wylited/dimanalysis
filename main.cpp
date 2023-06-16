#include "dimension.hpp"
#include <iostream>

int main() {
  // Create a new dimension for temperature and add Celsius and Fahrenheit units
  Dimension temperature("Temperature");
  temperature.addBaseUnit("Kelvin");
  temperature.addUnit("Celsius", [](double value) { return value - 273.15; }, [](double value) { return value + 273.15; });

  // Convert 0 degrees Celsius to Kelvin
  std::cout << temperature.convert(0, "Celsius", "Kelvin") << std::endl;
  // convert 0 degrees Kelvin to Celsius
  std::cout << temperature.convert(0, "Kelvin", "Celsius") << std::endl;

  return 0;
}
