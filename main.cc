#include <iostream>

#include "vec3.h"
#include "color.h"

// using the PPM format to render images
void render() {
  // image dimensions

  int image_width = 256;
  int image_height = 256;

  // providing the metadata for the PPM format image (check Wiki for info) 

  std::cout << "P3\n" << image_width << " " << image_height << "\n255\n";

  // rendering the pixels
  for(int j = 0; j < image_height; j++){
    // add progress bar to see how far along we are with rendering
    std::clog << "\rScan lines remaining: " << (image_height - j) << ' ' << std::flush;
    for(int i = 0; i < image_width; i++){

      auto pixel_color = color::Color( double(i)/(image_width-1), double(j)/(image_height-1), 0);
      color::write_color(std::cout, pixel_color);
    }
  }

  std::clog << "\rDone.         \n";
}

int main(){

  render();

  return 0;
}
