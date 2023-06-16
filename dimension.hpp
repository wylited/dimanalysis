#ifndef DIMENSION_HPP
#define DIMENSION_HPP

#include <string>
#include <map>
#include <functional>

class Dimension {
public:
    Dimension(const std::string& name) : name(name) {}

    // Add a unit to this dimension
    void addUnit(const std::string& unit_name, std::function<double(double)> to_conversion_formula, std::function<double(double)> from_conversion_formula);

    // Add a base unit to this dimension
    void addBaseUnit(const std::string& unit_name);

    // Convert a value in one unit of this dimension to another unit of this dimension
    double convert(double value, const std::string& from_unit, const std::string& to_unit) const;

    // Get the base unit of this dimension
    const std::string& getBaseUnit() const { return base_unit; }

    // Get the name of this dimension
    const std::string& getName() const { return name; }

private:
    std::string name;
    std::string base_unit;
    std::map<std::string, std::function<double(double)>> to_conversion_formulae;
    std::map<std::string, std::function<double(double)>> from_conversion_formulae;
};

#endif // DIMENSION_HPP