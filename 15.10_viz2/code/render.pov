#version 3.7;
 
#include "colors.inc"
#include "./load_mesh.inc"    

camera { 
 perspective
 location <0,0.2,-1.3> 
 direction <0,0,1> * 5 // change focal length here
 right <-1.33, 0, 0>
 look_at <0,0.05,0>
}

background { color White }

light_source {
    <100, 500, -1000>
    color White
    area_light <400, 0, 0>, <0, 0, 400>, 20, 20
    adaptive 1
  }

plane 
{ 
     <0,1,0>, 0
     pigment { color White }
     finish {
             ambient 0.7
             brilliance 0
     }
}

LOAD_MESH("./cat2.mesh",true,0.5,0.7,0.5)
object{
	shape
	rotate<0,90,0>
	rotate<0,0,90>
	scale 0.001
	translate<0,0.036,0>
	rotate<0,120,0>
}
