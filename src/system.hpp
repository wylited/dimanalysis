#ifndef SYSTEM_HPP
#define SYSTEM_HPP

#include <vector>
#include "dimension.hpp"

class System {
public:
    System(const std::vector<Dimension>& dimensions) : dimensions(dimensions) {}

    void addDimension(const Dimension& dim);

    const std::vector<Dimension> getDimensions() { return dimensions; };

private:
    std::vector<Dimension> dimensions;
    // std::vector<SysUnit> units;
};

// class SysUnit {
//     public:
//     SysUnit(const std::map<Dimension, DimUnit>& dim_units, const std::vector<int>& power_matrix) : dim_units(dim_units), power_matrix(power_matrix) {}

//     const std::map<Dimension, DimUnit>& getDimUnits() const { return dim_units; }
//     const std::vector<int>& getPowerMatrix() const { return power_matrix; }


//     private:
//     std::map<Dimension, DimUnit> dim_units;
//     std::vector<int> power_matrix;
// };

// a unit in the system should be represented through the power matrix and the units it chooses for the dimensions.
// better implementation coming soon.

#endif // SYSTEM_HPP