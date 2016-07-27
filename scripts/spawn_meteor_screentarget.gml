var timetotargetinseconds = argument0
var meteortype = argument1

var meteor_inst = instance_create(0,0,meteortype)

//Get target
var px,py

with(Player_OBJ)
{
    px = x
    py = y
}


px =(view_wport[0] / 4) + random_range(0,view_wport[0]) + (px - (view_wport / 2))
py =random_range(0,view_hport[0])


//Set meteor variables to arrive at player
with(meteor_inst)
{
    //Spawn meteors 2 seconds away from player
    x = px-(hspeed * (room_speed * timetotargetinseconds))
    y = py-(vspeed * (room_speed * timetotargetinseconds))
}
