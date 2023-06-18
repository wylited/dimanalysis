#ifndef DIMENSION_HPP
#define DIMENSION_HPP

#include <string>
#include <map>
#include <functional>

class DimUnit {
    public:

    DimUnit() {}

    DimUnit(
        const std::string& name, 
        const std::string& symbol, 
        std::function<double(double)> to_conversion_formula, 
        std::function<double(double)> from_conversion_formula):
        name(name), symbol(symbol), to_conversion_formula(to_conversion_formula), from_conversion_formula(from_conversion_formula) {}
    
    const std::string& getName() const { return name; }
    const std::string& getSymbol() const { return symbol; }

    std::function<double(double)> to_conversion_formula;
    std::function<double(double)> from_conversion_formula;
    std::string name;
    std::string symbol;
};

class Dimension {
public:
    Dimension(const std::string& name) : name(name) {}

    // Add a unit to this dimension
    void addUnit(const DimUnit& unit);

    // Set a unit as base unit of this dimension
    void setBaseUnit(const std::string& unit_name);

    // Convert a value in one unit of this dimension to another unit of this dimension
    double convert(double value, const std::string& from_unit, const std::string& to_unit);

    const std::string& getName() const { return name; }
    const std::map<std::string, DimUnit>& getUnits() const { return units; }
    const std::string& getBaseUnit() const { return base_unit; }
    
    std::string name;
    std::map<std::string, DimUnit> units; // access key is the unit name
    std::string base_unit;
};

#endif // DIMENSION_HPP