/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
Variable checks
== is equaling
1 != 2 means not equal
less and greater <   >
great or equal >=
less or equal <=

*/


VAR health = 5
VAR pet_name =" "
VAR torches = 0 
VAR skill_set =" "
VAR Coin = 0 
VAR agility = 0
VAR strength = 0


-> memory

==memory==

before you stands the cavern entrance of FA24. you wish your childhood pet was with you. The cave might be less scary with them, what was your pets name?
*[Charlie] 
~ pet_name = "Charlie" 
-> cave_entrance
*[Craig] 
~ pet_name = "Craig" 
-> cave_entrance
*[Rob] 
~ pet_name = "Rob" 
-> cave_entrance


==cave_entrance==
you and your childhood pet grew up during difficult times making you proficient in your skills of?
*[strenght]
~ strength = strength + 1
-> cave_mouth
*[agility]
~agility = agility + 1
-> cave_mouth

==skill_pick_s==
~ skill_set = "strength" + 1 
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END


==skill_pick_a==
~ torches = torches + 1 
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END



== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

you made it to the cave. if only {pet_name} could see you now!.


+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
{pet_name =="Rob": Rob would love it in this dark and depressing cave because he isn't afraid of nothin }
You are in the west
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1 
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room. You notice a large cavern with what appears to be the answer key to FA24 on the other side while unsure of how to get there. 
* [Go Back] -> cave_mouth
+[look around]-> east_tunnel_inspect

==east_tunnel_inspect==
you notice that alongside the coins is a large wooden plank maybe with enough lenght for you to cross the cavern? Maybe you might be able to make the jump if you get a good enough running start?
+[pick up plank]->plank
+[Try and jump]->jump
+[Go back]-> east_tunnel_lit

==plank==
picking up the plank you notice the immense weight of the board unsure if you can lift it. 
+[Go back] -> east_tunnel_inspect
*{strength > 0} [pick up plank and place it]->plank_place
->END
==jump==
lining yourself up across the open tunnel you get ready to sprint like never before.
{agility > 0} [Run and jump]-> jump_across
+[Go back] -> east_tunnel_inspect


==plank_place==
placing the plank you begin to walk across slowly swaying with each step..you start to sway to far to one side beginning to fall off the edge.
*[grab the board]->board_grab
*[jump to the ledge]->fall
->END

==board_grab==
you manage to catch yourself on the plank and climb back up making it across to the mythical answer sheet in victory. 
->END

==fall==
you dont quite jump far enough and plummit to your end....
->END

==jump_across==
you run with all your might and take off with a leap of faith slamming into the other side ledge managing to pull yourself up claiming what was rightfully yours. 
->END






