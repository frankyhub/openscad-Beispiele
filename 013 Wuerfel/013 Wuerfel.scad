module rounded_cube(size,r,center=false)
{
  s = is_list(size) ? size : [size,size,size];
  translate(center ? -s/2 : [0,0,0])
    hull() {
      translate([    r,    r,    r]) sphere(r=r);
      translate([    r,    r,s.z-r]) sphere(r=r);
      translate([    r,s.y-r,    r]) sphere(r=r);
      translate([    r,s.y-r,s.z-r]) sphere(r=r);
      translate([s.x-r,    r,    r]) sphere(r=r);
      translate([s.x-r,    r,s.z-r]) sphere(r=r);
      translate([s.x-r,s.y-r,    r]) sphere(r=r);
      translate([s.x-r,s.y-r,s.z-r]) sphere(r=r);
    }
}

module example006()
{

  difference() {
    rounded_cube(100, 10, center=true);
    union() {
      for (i = [
        [ 0, 0, [ [0, 0] ] ],
        [ 90, 0, [ [-20, -20], [+20, +20] ] ],
        [ 180, 0, [ [-20, -25], [-20, 0], [-20, +25], [+20, -25], [+20, 0], [+20, +25] ] ],
        [ 270, 0, [ [0, 0], [-25, -25], [+25, -25], [-25, +25], [+25, +25] ] ],
        [ 0, 90, [ [-25, -25], [0, 0], [+25, +25] ] ],
        [ 0, -90, [ [-25, -25], [+25, -25], [-25, +25], [+25, +25] ] ]
      ]) {
      rotate(i[0], [0, 0, 1])
        rotate(i[1], [1, 0, 0])
          translate([0, -50, 0])
            for (j = i[2]) {
              translate([j[0], 0, j[1]]) sphere(10);
            }
      }
    }
  }
}

echo(version=version());

example006();


