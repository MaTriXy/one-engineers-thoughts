
source svg
  http://www.svgopen.org/2002/papers/sorotokin__svg_secrets/

source algorithm
  https://en.wikipedia.org/wiki/Anisotropic_filtering
  https://en.wikipedia.org/wiki/Fast_approximate_anti-aliasing

  source implementation
    http://developer.download.nvidia.com/assets/gamedev/files/sdk/11/FXAA_WhitePaper.pdf

source midpoint circle algorithm
  https://en.wikipedia.org/wiki/Midpoint_circle_algorithm
  http://graphics.di.uoa.gr/Downloads/papers/journals/p7.pdf
  http://members.chello.at/~easyfilter/bresenham.html
  http://stackoverflow.com/questions/1201200/fast-algorithm-for-drawing-filled-circles
  https://en.wikipedia.org/wiki/Circle_packing
  https://en.wikipedia.org/wiki/Xiaolin_Wu%27s_line_algorithm

source line algorithm
  http://www.gamedev.net/page/resources/_/technical/graphics-programming-and-theory/bresenhams-line-and-circle-algorithms-r767
  http://en.literateprograms.org/Bresenham%27s_circle_algorithm_%28Python%29
  http://members.chello.at/~easyfilter/bresenham.html

∆xm = (x + 1)m − xm ?= mxm−1

```coffee
difference exponent x, m
  difference
    exponent sum(x, 1), m
    exponent x, m
```
