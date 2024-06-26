#include <iostream>

#include "include/vec3.h"
#include "include/color.h"
#include "include/ray.h"

bool hit_sphere (const vec3::Point3& center, double radius, const ray::Ray& r) {

  // calculating the ray-sphere intersection formula using the following:
  // for a sphere centered at Cx, Cy, Cz, and a sphere x2 + y2 + z2 = r2:
  // Vector from a point P to center of sphere is C-P
  // (Cx - x)2 + (Cy - y)2 + (Cz - z)2 = r2
  // which is basically the dot product squared of C-P 
  // We want to know if a point on ray P(t) = Q + td satisfies the equation
  // So subbing point with ray equation to solve for t
  // we get t2d dot d - 2td dot (C - Q) + (C - Q) dot (C - Q) -r2 = 0
  // using quadratic formula (since t2d is quadratic) and solving for t:
  // a = d dot d 
  // b = -2d dot (C - Q)
  // c = (C - Q) dot (C - Q) - r2
  // with the discriminant, we only want to return the higher value (if 2 solutions, will give us the one that hit the sphere closer to the viewport)
  vec3::Vec3 oc = center - r.origin();
  auto a = vec3::dot(r.direction(), r.direction());
  auto b = -2.0* vec3::dot(r.direction(), oc);
  auto c = vec3::dot(oc, oc ) - radius * radius;
  auto discriminant = b*b - 4*a*c;
  return (discriminant >= 0);
  

}

color::Color ray_color(const ray::Ray& r) {

  // place a sphere at 0, 0, -1 on the z-axis
  if(hit_sphere(vec3::Point3(0, 0, -1), 0.5, r)){
    return color::Color(1, 0, 0);
  }
  vec3::Vec3 unit_direction = vec3::unit_vector(r.direction());
  float a = 0.5 * (unit_direction.y() + 1.0);
  // using linear interpolation (lerp) formula to get linearly blended colors on output
  return (1.0 - a) * color::Color(1.0,1.0,1.0) + a * color::Color(0.5, 0.7, 1.0);
}

// using the PPM format to render images
void render() {
  // image dimensions

  float aspect_ratio = 16.0/9.0;
  int image_width = 400;

  // calculate the image hieght and ensure that it's at least 16.0
  int image_height = int(image_width/ aspect_ratio);
  image_height = (image_height < 1) ? 1 : image_height;

  // camera
  float focal_length = 1.0;
  float viewport_height = 2.0;
  float viewport_width = viewport_height * (double(image_width)/image_height);
  vec3::Point3 camera_center = vec3::Point3(0, 0, 0);

  // Calcutlate the vectors across the horizontal and down the vertical viewport edges
  vec3::Vec3 viewport_u = vec3::Vec3(viewport_width, 0, 0);
  vec3::Vec3 viewport_v = vec3::Vec3(0, -viewport_height, 0);

  // Calculate the horizontal and vertical delta vectors from pixel to pixel
  vec3::Vec3 pixel_delta_u = viewport_u / image_width;
  vec3::Vec3 pixel_delta_v = viewport_v / image_height;

  // Calculate the position of the upper left pixel
  vec3::Point3 viewport_upper_left = camera_center - vec3::Vec3(0, 0, focal_length) - viewport_u/2 - viewport_v/2;
  vec3::Point3 pixel00_loc = viewport_upper_left + 0.5 * (pixel_delta_u + pixel_delta_v); 


  // providing the metadata for the PPM format image (check Wiki for info) 

  std::cout << "P3\n" << image_width << " " << image_height << "\n255\n";

  // rendering the pixels
  for(int j = 0; j < image_height; j++){
    // add progress bar to see how far along we are with rendering
    std::clog << "\rScan lines remaining: " << (image_height - j) << ' ' << std::flush;
    for(int i = 0; i < image_width; i++){
      vec3::Point3 pixel_center = pixel00_loc + (i * pixel_delta_u) + (j * pixel_delta_v);
      // ray direction isn't a unit vector for simpler code
      vec3::Vec3 ray_direction = pixel_center - camera_center;
      ray::Ray r(camera_center, ray_direction);

      color::Color pixel_color = ray_color(r);
      color::write_color(std::cout, pixel_color);
    }
  }

  std::clog << "\rDone.         \n";
}

int main(){

  render();

  return 0;
}
