#include <stdexcept>
#include <cmath>
#include "dimension.hpp"

void Dimension::newUnit(const std::string& name,
                 const std::string& symbol,
                 std::function<double(double)> to, 
                 std::function<double(double)> from) {
    if (!checkPresence({name})) {
        throw std::invalid_argument("unit is already in this dimension, use setBaseUnit");
    }
    units[name] = symbol;
    conversion_formulae[name] = std::make_tuple(to, from);
}

void Dimension::newBaseUnit(const std::string& name, const std::string& symbol) {
    if (!checkPresence({name})) {
        throw std::invalid_argument("unit is already in this dimension, use setBaseUnit");
    }
    units[name] = symbol;
}


void Dimension::setBaseUnit(const std::string& name) {
    if (!checkPresence({name})) {
        throw std::invalid_argument("unit is already in this dimension, use setBaseUnit");
    } else {
        base_unit = name;
    }
}

double Dimension::convert(double value, const std::string& from_unit, const std::string& to_unit) {
    // check if units are in this dimension
    if (!checkPresence({from_unit, to_unit})) {
        throw std::invalid_argument("unit is already in this dimension, use setBaseUnit");
    } 

    if (from_unit == to_unit) {
        return value;
    } 

    if (from_unit == base_unit) { // check if units are the base unit
        return std::get<0>(conversion_formulae[to_unit])(value);
    } else if (to_unit == base_unit) {
        return std::get<0>(conversion_formulae[from_unit])(value);
    }

    // convert to base unit first
    double base_value = std::get<0>(conversion_formulae[from_unit])(value);
    return std::get<1>(conversion_formulae[to_unit])(base_value);
}