///////////////////////////////////////////////////////////////////////////////////////////////////
// ResetButton.scad
////////////////////////////////////////////////////////////////////////////////////////////////////
// created 12/6/20
// last update 12/6/20
///////////////////////////////////////////////////////////////////////////////////////////////////
include <inc/screwsizes.scad>
use <inc/cubex.scad>
$fn=100;
///////////////////////////////////////////////////////////////////////////////////////////////////

ButtonD=19.5;
Thickness=5;

difference() {
	union() {
		color("cyan") cylinder(h=Thickness,d=ButtonD*1.5);
		translate([-13,-27,0]) color("green")  cubeX([ButtonD+7,25,Thickness],2);
	}
	translate([0,0,-3]) color("red") cylinder(h=Thickness+6,d=ButtonD);
	translate([-6,-20,-3]) color("blue") cylinder(h=Thickness+6,d=screw5);
	translate([6,-20,-3]) color("plum") cylinder(h=Thickness+6,d=screw5);
	translate([-6,-20,4]) color("blue") cylinder(h=Thickness,d=screw5hd);
	translate([6,-20,4]) color("plum") cylinder(h=Thickness,d=screw5hd);
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////