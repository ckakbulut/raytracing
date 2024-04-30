#ifndef RAY_H
#define RAY_H

#include "vec3.h"

namespace ray {
    class Ray {

        public:
        Ray() {}

        Ray(const vec3::Point3& origin, const vec3::Vec3& direction) : orig(origin), dir(direction) {}

        const vec3::Point3& origin() const {
            return orig;
        }

        const vec3::Vec3& direction() const {
            return dir;
        }

        // return a copy of where the ray will be at 
        vec3::Point3 at(double t) const {
            return orig + t * dir;
        }

        private :
        vec3::Point3 orig;
        vec3::Vec3 dir;
    };
}

#endif