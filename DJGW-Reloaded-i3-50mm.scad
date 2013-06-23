module prior(){
import("jonaskuehling-gregs-wade-i3-30.stl");
holePatches();
}

module holePatches(){
translate([-11,-5,0]) 
	cube([10,10,38]);
translate([19,-5,0]) 
	cube([10,10,38]);
}

x_position = 3;

module mountHoles(){
	translate([-10+x_position,0, 25])
		cylinder(r=2, h=50, center=true);
	translate([-10+x_position,0, 5])
		cylinder(r=4, h=10, center=true);

	translate([40+x_position,0, 25])
		cylinder(r=2, h=50, center=true);
	translate([40+x_position,0, 5])
		cylinder(r=4, h=10, center=true);
}

difference(){
	prior();
	mountHoles();
}