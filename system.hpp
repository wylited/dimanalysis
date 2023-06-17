#ifndef SYSTEM_HPP
#define SYSTEM_HPP

#include <vector>
#include "dimension.hpp"

class System {
public:
    System(const std::vector<Dimension>& dimensions) : dimensions(dimensions) {}

    void addDimension(const Dimension& dim);

    const std::vector<Dimension> getDimensions() { return dimensions; };

    // Convert a value from one unit to another
    double convert(double value, const std::string& from_unit, const std::string& to_unit, const std::vector<std::string>& unit_names) const;

private:
    std::vector<Dimension> dimensions;
};

#endif // SYSTEM_HPP