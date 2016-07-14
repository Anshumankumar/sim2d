#ifndef OBJECT_H
#define OBJECT_H
class Position
{
    double x;
    double y;
};

class Object
{
    public:
    double mass;
    double charge;
    Position position;
};

#endif
