/**
 * Written by Emanuele Rodola <rodola@in.tum.de>
 * TU Munich, Mar 2015
 */

// Reads a triangulated mesh and renders it
#macro LOAD_MESH (fname, load_colors, ambient_value, phong_value, transparency)

#fopen fid fname read           

#read (fid,nv,nt)
#declare pts = array[nv][3];
#declare nrms = array[nv][3];
#declare tris = array[nt][3];
#declare cols = array[nt][3];

#for (i,0,nv-1)
   #read (fid,px,py,pz)
   #declare pts[i][0] = px;   
   #declare pts[i][1] = py;
   #declare pts[i][2] = pz;
#end
#for (i,0,nv-1)
   #read (fid,nx,ny,nz)
   #declare nrms[i][0] = nx;   
   #declare nrms[i][1] = ny;
   #declare nrms[i][2] = nz;
#end
#for (i,0,nt-1)
   #read (fid,t1,t2,t3)
   #declare tris[i][0] = t1;   
   #declare tris[i][1] = t2;
   #declare tris[i][2] = t3;
#end
#for (i,0,nt-1)
   #read (fid,r,g,b)
   #declare cols[i][0] = r;   
   #declare cols[i][1] = g;
   #declare cols[i][2] = b;
#end
#fclose fid

#declare textures = array[nt];
#for (i,0,nt-1)              
   #declare textures[i] = texture { pigment {color rgbf<cols[i][0],cols[i][1],cols[i][2],transparency>} finish { ambient ambient_value phong phong_value } };
#end

#declare shape = mesh {
#for (i,0,nt-1)                            
   // p1
   #declare p1x = pts[ tris[i][0] ][0];
   #declare p1y = pts[ tris[i][0] ][1];
   #declare p1z = pts[ tris[i][0] ][2];
   // p2
   #declare p2x = pts[ tris[i][1] ][0];
   #declare p2y = pts[ tris[i][1] ][1];
   #declare p2z = pts[ tris[i][1] ][2];
   // p3
   #declare p3x = pts[ tris[i][2] ][0];
   #declare p3y = pts[ tris[i][2] ][1];
   #declare p3z = pts[ tris[i][2] ][2];
   
   // n1
   #declare n1x = nrms[ tris[i][0] ][0];
   #declare n1y = nrms[ tris[i][0] ][1];
   #declare n1z = nrms[ tris[i][0] ][2];
   // n2
   #declare n2x = nrms[ tris[i][1] ][0];
   #declare n2y = nrms[ tris[i][1] ][1];
   #declare n2z = nrms[ tris[i][1] ][2];
   // n3
   #declare n3x = nrms[ tris[i][2] ][0];
   #declare n3y = nrms[ tris[i][2] ][1];
   #declare n3z = nrms[ tris[i][2] ][2];
   
   #if (load_colors)
      smooth_triangle { 
         <p1x,p1y,p1z>, <n1x,n1y,n1z>,
         <p2x,p2y,p2z>, <n2x,n2y,n2z>,
         <p3x,p3y,p3z>, <n3x,n3y,n3z>
         texture { textures[i] }
      } 
   #else
      smooth_triangle { 
		   <p1x,p1y,p1z>, <n1x,n1y,n1z>,
         <p2x,p2y,p2z>, <n2x,n2y,n2z>,
         <p3x,p3y,p3z>, <n3x,n3y,n3z>
	  }
   #end
#end
}

#end