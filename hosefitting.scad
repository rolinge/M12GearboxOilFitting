include <threads.scad>
// Create a standard sized metric bolt with hex head and hex key.
//module MetricBolt(diameter, length, tolerance=0.4)

translate([0,0,0])
difference(){
MetricBolt(12,12);
cylinder(30,3,3);
}

translate([0,0,-10])
difference() {
  cylinder(21,5,5,$fn=32);
  translate([0,0,-1])  
    cylinder(23,3,3);
}

translate([0,0,-2]) rib(12,9.9,3);
translate([0,0,-5]) rib(12,9.9,1.0);
translate([0,0,-8]) rib(12,9.9,1.0);


/*rotate([180,0,0])
difference(){
MetricBolt(12,12);
 translate([0,0,-6])
   linear_extrude(-2)   square(7);
}

*/

module rib(od, id, h) {
difference(){
    cylinder(h,od/2,od/2,$fn=36);
    translate([0,0,-0.5])
    cylinder(h+1,id/2,id/2);
    }    
    
}
