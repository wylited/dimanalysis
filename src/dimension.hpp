#ifndef DIMENSION_HPP
#define DIMENSION_HPP

#include <string>
#include <unordered_map>
#include <functional>
#include <tuple>

class Dimension {
    public:
    std::string name;
    std::unordered_map<std::string, std::string> units;
    std::unordered_map<std::string, 
             std::tuple<std::function<double(double)>, std::function<double(double)>>
            > conversion_formulae; // .0 is to, .1 is from
    std::string base_unit;

    Dimension(const std::string& name) : name(name) {}
    Dimension(const std::string& name, const std::string& base_name, const std::string& base_symbol) : name(name), base_unit(base_name) {
        units[base_name] = base_symbol;
        base_unit = base_name;
    }

    std::vector<std::string> Units() { 
        std::vector<std::string> unit_names;
        for (auto& unit : units) {
            unit_names.push_back(unit.first);
        }
        return unit_names;
    }
    
    void newUnit(const std::string& name,
                 const std::string& symbol,
                 std::function<double(double)> to, 
                 std::function<double(double)> from);
    
    void newBaseUnit(const std::string& name, const std::string& symbol);
    
    void setBaseUnit(const std::string& name);

    double convert(double value, const std::string& from_unit, const std::string& to_unit);

    bool checkPresence(const std::vector<std::string>& unit_names) const {
        for (const auto& name : unit_names) {
            if (units.find(name) != units.end()) {
                return false;
            }
            return true;
        }
        return false;
    }
};

#endif // DIMENSION_HPP