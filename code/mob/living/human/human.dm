mob/living/human
	name = "Human"
	desc = "The sentient terran dweller."
	icon = 'skins.dmi'
	icon_state = "human"
	HP = 100

mob/living/human/verb/say(msg as text)
	if(!istype(/mob/living/human, /mob/living/human) in oview())
		oview() << "[usr] speaks in an unknown language."
		return
	oview() << "[name] says, [msg]"

mob/living/human/verb/attack(mob/M as mob in oview(1))
	if(istype(M, /mob/living/human/subtype))
		usr << "Punching a spider.. Not smart..."
	var/damage = rand(1, 5)
	usr << "You punch [M]!"
	oview() << "[usr] punches [M]!"
	M.HP -= damage

mob/living/human/verb/hug(mob/M as mob in oview(1))
	if(istype(M, /mob/living/human/subtype))
		oview() << "[usr] pats [M] on the head, gently."
		usr << "You pet the spider... Terrifying."
	else
		oview() << "[usr] gives [M] a big hug!"
		usr << "You hug [M]"

mob/living/human/verb/eat(obj/O as obj in oview(1))
	if(istype(O, /obj/food))
		if(istype(O, /obj/food/burger))
			usr << "You eat the hamburger."
			oview() << "[usr] eats the hamburger"
			del O
	else
		usr << "You can't eat [O]!"