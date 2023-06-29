#ifndef SYSTEM_HPP
#define SYSTEM_HPP

#include <vector>
#include <iostream>
#include <unordered_map>
#include "dimension.hpp"

class System {
public:
    std::unordered_map<std::string, Dimension *> dims;                        // dim name -> dim
    std::unordered_map<std::string, std::string> units;                       // unit name -> unit symbol
    std::unordered_map<std::string, int> powers;                              // unit name -> power
    std::unordered_map<std::string, std::unordered_map<std::string, std::string>> unit_dims; // unit name -> (dim name -> dim unit name)

    System(){};
    System(std::unordered_map<std::string, Dimension *> &dimensions) : dims(dimensions){};

    void addDimension(Dimension *dim);
    void addDimensions(std::vector<Dimension *> dimensions);

    void addUnit(std::string name, std::string symbol, std::unordered_map<std::string, std::string> dim_units, std::vector<int> power_matrix);
};

#endif // SYSTEM_HPP