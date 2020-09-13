//https://de.wikipedia.org/wiki/Übersetzung_(Technik)

use <lib/involute_gears.scad>


$fn=60;
color("blue")gear(mm_per_tooth=5, number_of_teeth=20, thickness=7, hole_diameter=5);
translate([19.6, 14.2, 0])
color("lightgreen")gear(mm_per_tooth=5, number_of_teeth=10, thickness=7, hole_diameter=5);

translate([-37.5, 14.9, 0])
color("red")gear(mm_per_tooth=5, number_of_teeth=30, thickness=7, hole_diameter=5);
