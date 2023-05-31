init()
{
	level thread onPlayerConnect();	
}

onPlayerConnect()
{
	level waittill("connected", player);
	player thread GiveMoney();
	player thread onPlayerSpawned();
} 

onPlayerSpawned()
{
    self.stopThreading = false;
    self endon("disconnect");
	self iPrintln("Points give script by Zykov#6849");
	self iPrintln("Ads and knife to get 10k points");
}

GiveMoney()
{
	level endon( "game_ended" );
	self endon( "disconnect" );
	self.pointsToGive = 10000; //(change if you want larger amount)
	for (;;)
	{
	  if(self MeleeButtonPressed() && self AdsButtonPressed()) // if melee and ads you get the money
	  {
		self.score+= self.pointsToGive; // this give money to the player
                wait 1;
	  }
	wait 0.05;
	}
}
