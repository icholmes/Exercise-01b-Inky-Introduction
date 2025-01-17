/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 * Basic Choices
 = Knot structure
 + Recurring choices
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
+ {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west tunnel. It is very dark, you can't see anything.
+ {torch_pickup} [Light Torch] -> west_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch illuminates a dull pile of rubbage visibly coated with an untouched layer of soot.
You are too far away to make out its contents.
+ [Inspect rubbage] -> rubbage_inspection
+ [Go Back] -> cave_mouth
-> END

=== rubbage_inspection ===
Bones. Hundreds of them. All thoughtfully laticed together in an almost artistic manner, reaching several meters in height. 
Who knows how long they've been here.
+ [Go Back] -> cave_mouth
-> END

=== west_tunnel_lit ===
There is a clearing with two tunnels in front of you. 
A low hum emanates from the tunnel on the left. The tunnel on the right emits a foul-smelling odor. 
On the wall bewteen the two tunnels are small inscriptions carved into the stone.
+ [Inspect the left tunnel] -> left_tunnel_inspection
+ [Inspect the right tunnel] -> right_tunnel_inspection
+ [Inspect inscriptions] -> inscription_inspection
+ [Go Back] -> cave_mouth
-> END

=== left_tunnel_inspection ===
A large body of water spans the cave floor. The water gently ripples and contracts, as if it is speaking to you. Humming.
At the bottom of the pool is a large trapdoor.
+ [Inspect trapdoor] -> trapdoor_inspection
+ [Go Back] -> west_tunnel_lit
-> END

=== trapdoor_inspection ===
The trapdoor needs a key to unlock it.
* {red_key_pickup} [Unlock trapdoor] -> trapdoor_open
+ [Go Back] -> left_tunnel_inspection
-> END

=== trapdoor_open ===
You dive into the pool and unlock the trapdoor. The pressure released by the door sucks you into it, pulling you into a large vat of murky, quickly-rising liquid.
There is an exit hatch to your left and to your right.
Quickly. Choose an exit.
* [Go left] -> left_exit
* [Go right] -> right_exit
-> END

=== left_exit ===
You exit left, and with a swift wave of liquid, you are brought forth into a room in which there is no light.
Somewhere beyond you, you can hear what sounds like faint, struggled breathing. 
You are not alone.
-> END

=== right_exit ===
You exit right, and with a swift wave of liquid, you are carried into a fully illuminated room with sleek, tiled floor and a sterile smell in the air.
In each of the four corners of the room, surveillance cameras. No doors in sight.
You are alone. 
-> END

=== right_tunnel_inspection ===
A dead animal carcass lies in the center of the room. Fresh. The smell is so thick you can feel it cling to your skin.
{not red_key_pickup:A little red key lies next to the carcass on the bloodied stone.}
+ [Inspect carcass] -> carcass_inspection
* [Pick up key] -> red_key_pickup
+ [Go Back] -> west_tunnel_lit
-> END

=== carcass_inspection ===
A cow so bludgeoned it is almost rendered unrecognizable. 
This thing never stood a chance against whatever killed it.
+ [Go Back] -> right_tunnel_inspection
-> END

=== red_key_pickup ===
You slip the key into your pocket.
Your hand is stained red.
* [Go Back] -> right_tunnel_inspection
-> END

=== inscription_inspection ===
Rudimentary letters and symbols line the stone in a language you cannot read. You scan the inscriptions but find nothing of use. 
Your eyes draw towards the bottom of the text. At the end of the slab of symbols, the last line is written in all capitals. 
In perfect English penmanship: 
THEY ARE NOT HUMAN
+ [Go Back] -> west_tunnel_lit
-> END


