#ifndef WORLD_HPP
#define WORLD_HPP

#include "object.h"
#include <vector>

class World
{
    public:
    std::vector<Object> objects;
    void addParticle(Object obj);
};
#endif
