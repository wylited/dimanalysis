#include "dimension.hpp"
#include <stdexcept>
#include <cmath>

void Dimension::addUnit(const DimUnit& unit) {
    // check if unit is already in this dimension
    if (units.find(unit.getName()) != units.end()) {
        throw std::invalid_argument("unit is already in this dimension");
    }

    // add unit to this dimension
    units[unit.getName()] = unit;
}

void Dimension::setBaseUnit(const std::string& unit_name) {
    if (units.find(unit_name) == units.end()) {
        throw std::invalid_argument("unit is not in this dimension");
    } else {
        base_unit = unit_name;
    }
}

double Dimension::convert(double value, const std::string& from_unit, const std::string& to_unit) {
    // check if units are in this dimension
    if (units.find(from_unit) == units.end() || units.find(to_unit) == units.end()) {
        throw std::invalid_argument("units are not in this dimension");
    }

    // check if units are the same
    if (from_unit == to_unit) {
        return value;
    }
    
    // check if units are the base unit
    if (from_unit == base_unit) {
        return units[to_unit].from_conversion_formula(value);
    } else if (to_unit == base_unit) {
        return units[from_unit].to_conversion_formula(value);
    }

    // convert to base unit first
    double base_value = units[from_unit].to_conversion_formula(value);
    // return converted value
    return units[to_unit].from_conversion_formula(base_value);
}