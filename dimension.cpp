#include "dimension.hpp"
#include <stdexcept>
#include <cmath>

void Dimension::addUnit(const std::string& unit_name, std::function<double(double)> to_conversion_formula, std::function<double(double)> from_conversion_formula) {
    to_conversion_formulae[unit_name] = to_conversion_formula;
    from_conversion_formulae[unit_name] = from_conversion_formula;
}

void Dimension::addBaseUnit(const std::string& unit_name) { base_unit = unit_name; }

double Dimension::convert(double value, const std::string& from_unit, const std::string& to_unit) const {
    if (from_unit == to_unit) { // same unit case
        return value;
    }

    // check if either are base units
    if (from_unit == base_unit) {
        return to_conversion_formulae.at(to_unit)(value);
    } else if (to_unit == base_unit) {
        return from_conversion_formulae.at(from_unit)(value);
    }
    
    // if not convert from unit into base unit and then return from base unit into to unit. 
    double base_value = from_conversion_formulae.at(from_unit)(value);
    return to_conversion_formulae.at(to_unit)(base_value);
}