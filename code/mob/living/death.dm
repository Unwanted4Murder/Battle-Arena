mob/proc/DeathCheck()
	if(HP <=0)
		oview() << "You watch [usr] fall over and die.."
		world << "[usr] has died!"
	else
		return