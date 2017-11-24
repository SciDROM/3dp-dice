//
// DICE Schlauchstuecke
//
// Credit: reprap.org  Forum-user 'bastard'
//


//
// Schlauch 4x6mm
// Laenge 4x 4mm, 8x 13mm, 4x 22mm
//

$fn=30;
innendurchmesser=4;
aussendurchmesser=6;

stuecke=[ [4, 4], [8, 13], [4, 22] ];

for (stueck=stuecke)
{
	for(a= [1 : stueck[0]])
	{
		for(b=stueck[1])
		{
			translate([aussendurchmesser * a * 1.5, b, 0])
				schlauchstueck(b);
		}
	}
}

module schlauchstueck(hoehe)
{
	difference()
	{
		cylinder(d=aussendurchmesser, h=hoehe);
		
		translate([0,0,-1])
			cylinder(d=innendurchmesser, h=hoehe + 2);
	}
}