#include <optional>
#include <stdexcept>
#include "system.hpp"

void System::addDimension(Dimension* dim){
    // check if dimension is already in the system
    if (dimensions.find(dim->getName()) != dimensions.end()) {
        throw std::invalid_argument("dimension is already in the system");
    }

    // add dimension to the system
    dimensions[dim->getName()] = dim;   
}

void SysUnit::addDim(Dimension* dim, DimUnit* unit = nullptr, const int power = 0) {
    auto name = dim->name;
    dimensions.insert({name, dim});
    power_matrix.insert({name, power});
    if (unit != nullptr) {
        // check if DimUnit is a valid unit of the dimension
        if (dim->units.find(dim->getBaseUnit()) == dim->units.end()) {
            throw std::invalid_argument("unit is not in dimension");
        }
        dim_units.insert({name, unit});
    } else {
        dim_units.insert({name, &dim->units.at(dim->getBaseUnit())});
    }
}

int SysUnit::getPower(Dimension *dim) {
    // check if dimension is in the system
    auto name = dim->name;
    if (dimensions.find(name) == dimensions.end()) {
        throw std::invalid_argument("dimension is not in the system");
    } return power_matrix.at(name);
}

DimUnit *SysUnit::getDimUnit(Dimension *dim) {
    auto name = dim->name;
    if (dimensions.find(name) == dimensions.end()) {
        throw std::invalid_argument("dimension is not in the system");
    } return dim_units.at(name);
}

void SysUnit::updateDim(Dimension *dim, DimUnit *unit, const int power) {
    // check if dimension is in the system
    auto name = dim->name;
    if (dimensions.find(name) == dimensions.end()) {
        throw std::invalid_argument("dimension is not in the system");
    }
    dim_units.at(name) = unit;
    power_matrix.at(name) = power;
}
