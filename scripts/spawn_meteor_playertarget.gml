
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

//Set meteor variables to arrive at player
with(meteor_inst)
{
    //Spawn meteors 2 seconds away from player
    x = px-(hspeed * (room_speed * timetotargetinseconds))
    y = py-(vspeed * (room_speed * timetotargetinseconds))
}
