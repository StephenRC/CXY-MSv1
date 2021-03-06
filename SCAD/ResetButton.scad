///////////////////////////////////////////////////////////////////////////////////////////////////
// ResetButton.scad
////////////////////////////////////////////////////////////////////////////////////////////////////
// created 12/6/20
// last update 12/10/20
//////////////////////////////////////////////////////////////////////////////////////////////////////
// 12/10/2	- Added the text "reset" to holder
///////////////////////////////////////////////////////////////////////////////////////////////////
// Use: https://www.amazon.com/gp/product/B079HR5Q4R
///////////////////////////////////////////////////////////////////////////////////////////////////
include <inc/screwsizes.scad>
use <inc/cubex.scad>
$fn=100;
///////////////////////////////////////////////////////////////////////////////////////////////////
ButtonD=19.5;
Thickness=5;
//////////////////////////////////////////////////////////////////////////////////////////////////////

Reset();

//////////////////////////////////////////////////////////////////////////////////////////////////////

module Reset() {
	difference() {
		union() {
			color("cyan") cylinder(h=Thickness,d=ButtonD*1.5);
			translate([-13,-35,0]) color("green")  cubeX([ButtonD+7,30,Thickness],2);
		}
		translate([0,0,-3]) color("red") cylinder(h=Thickness+6,d=ButtonD);
		translate([0,-27,0]) {
			translate([-6,0,-3]) color("blue") cylinder(h=Thickness+6,d=screw5);
			translate([6,0,-3]) color("plum") cylinder(h=Thickness+6,d=screw5);
			translate([-6,0,4]) color("blue") cylinder(h=Thickness,d=screw5hd);
			translate([6,0,4]) color("plum") cylinder(h=Thickness,d=screw5hd);
		}
	}
	translate([-8.5,-20,4]) rotate([0,0,0])  printchar("RESET");
}

//////////////////////////////////////////////////////////////////////////////////////////////////

module printchar(String,Height=1.5,Size=4,Font="Liberation Sans",Color="coral") { // print something
	color(Color) linear_extrude(height = Height) text(String, font = Font,size=Size);
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////
