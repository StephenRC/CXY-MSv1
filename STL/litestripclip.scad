///////////////////////////////////////////////////////////////////////////////////////
// litstripclip.scad - clips to hold a led strip to 20mm aluminum extrusion
//////////////////////////////////////////////////////////////////////////////////////
// create 11/19/2016
// last update 11/19/16
//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
//include <inc/screwsizes.scad>
use <inc/cubeX.scad>	// http://www.thingiverse.com/thing:112008
$fn=50;
////////////////////////////////////////////////////////////////////////////////////////
// vars
height = 12;
b_width = 12;
top_w = 2.5;
tab_t = 2;
thickness = 3;
lite_t = 2;
tab_d = 5;
/////////////////////////////////////////////////////////////////////////////////////////

clips(6); // must be multiples of two

/////////////////////////////////////////////////////////////////////////////////////

module clips(Qty=1) {
	if(Qty==1)
		translate([-1,-top_w-thickness*2,height+0.5-tab_t/2]) rotate([-45,0,0]) cube([thickness*2,thickness*2,tab_t*2]);
	if(Qty>1) {
		for (i=[0:(Qty/2)-1]) translate([i*20,0,0]) rotate([0,-90,0]) clip();
		for (i=[0:(Qty/2)-1]) translate([i*20,20,0]) rotate([0,-90,0]) clip();
	}
}


/////////////////////////////////////////////////////////////////////////////////////////////

module clip() {
	translate([0,0,thickness-2]) cubeX([thickness,thickness,height+2]);
	translate([0,-b_width,0]) cubeX([thickness,b_width+thickness,thickness]);
	translate([0,-b_width,thickness-2]) cubeX([thickness,thickness,lite_t+2]);
	difference() {
		translate([0,-top_w-2,height]) cubeX([thickness,top_w*2+2,thickness]);
		anglecut();
	}
	difference() {
		translate([0,-top_w-thickness,height-tab_t]) cubeX([thickness,thickness,thickness+tab_t]);
		anglecut();
	}
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module anglecut() {
	translate([-1,-top_w-thickness*2,height+0.5-tab_t/2]) rotate([-45,0,0]) cube([thickness*2,thickness*2,tab_t*2]);
}


//////////////////// end of litestripclip.scad //////////////////////////////////////////////////////////////////////
