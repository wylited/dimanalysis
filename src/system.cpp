#include <stdexcept>
#include "system.hpp"

void System::addDimension(Dimension *dim) {
    if (dims.find(dim->name) != dims.end()) {
        throw std::invalid_argument("dimension is already in the system");
    }

    dims[dim->name] = dim;
}

void System::addDimensions(std::vector<Dimension *> dimensions) {
    for (auto &dim : dimensions) {
        addDimension(dim);
    }
}

void System::addUnit(std::string name, std::string symbol, std::unordered_map<std::string, std::string> dim_units, std::vector<int> power_matrix) {
    if (units.find(name) != units.end()) {
        throw std::invalid_argument("unit is already in the system");
    }

    for (const auto &[dim, unit] : dim_units) {
        // if (dims.find(dim) != dims.end()) {
        //     throw std::invalid_argument("Dimension " + dim + " is not in the system");
        // } else 
        if (dims[dim]->units.find(unit) == dims[dim]->units.end()) {
            throw std::invalid_argument("unit is not in the dimension");
        }
    }
}