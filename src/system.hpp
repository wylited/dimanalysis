#ifndef SYSTEM_HPP
#define SYSTEM_HPP

#include <vector>
#include <optional>
#include <unordered_map>
#include "dimension.hpp"

class SysUnit {
    public:
    SysUnit(const std::vector<DimUnit*>& dim_units, const std::vector<int>& power_matrix) {
        auto dim_it = dimensions.begin();
        for (int i = 0; i < dim_units.size(); i++, dim_it++) {
            this->dim_units[dim_it->first] = dim_units[i];
        }
        dim_it = dimensions.begin();
        for (int i = 0; i < power_matrix.size(); i++, dim_it++) {
            this->power_matrix[dim_it->first] = power_matrix[i];
        }
    }
    
    const std::unordered_map<std::string, Dimension*>& getDimensions() const { return dimensions; }

    void addDim(Dimension* dim, DimUnit* unit = nullptr, const int power = 0);

    // get the power and dim unit of the dimension from 
    int getPower(Dimension* dim);
    DimUnit* getDimUnit(Dimension* dim);

    void updateDim(Dimension* dim, DimUnit* unit, const int power);

    std::string name;
    std::string symbol;
    std::unordered_map<std::string, DimUnit*> dim_units;
    std::unordered_map<std::string, int> power_matrix;
    
    private:
    std::unordered_map<std::string, Dimension*> dimensions; // Private tracking of dimensions
};

class System {
public:
    System() {};
    System(std::unordered_map<std::string, Dimension*>& dimensions) : dimensions(dimensions) {};

    void addDimension(Dimension* dim);

    void addSysUnit();

    const std::vector<SysUnit*>& getSysUnits() const { return units; };

    std::unordered_map<std::string, Dimension*> dimensions;

private:
    std::vector<SysUnit*> units;
};
// a unit in the system should be represented through the power matrix and the units it chooses for the dimensions.
// better implementation coming soon.

#endif // SYSTEM_HPP