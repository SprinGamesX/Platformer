
vsp = vsp + grv;

if (place_meeting(x + hsp, y, obj_solid)){
	dir *= -1;
	image_xscale = dir;
}
x += hsp * dir;

if (place_meeting(x,y + vsp, obj_solid)){
	while(abs(vsp) > 0.2){
		vsp *= 0.5;
		if(!place_meeting(x,y+vsp,obj_solid)) y +=  vsp;
	}
	vsp = 0;
}
y += vsp;