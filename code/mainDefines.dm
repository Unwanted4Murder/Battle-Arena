mob/Login()
	..()
	var/species_type = input("Options:(Terran, Icelandic, Molten, or Cat", "Species)") as text
	var/char_name = input("Enter a name for your character.", "Name") as text
	name = "<b>([species_type])</b> [char_name]"
	icon = 'icons/skins.dmi'
	switch(species_type)
		if("Terran")
			icon_state = "terran_spider"
			src.client.mob = /mob/species/terran_spider
		if("Icelandic")
			icon_state = "ice_spider"
		if("Molten")
			icon_state = "lava_spider"
		if("Cat")
			icon_state = "cat"

turf/floor
	icon = 'icons/flooring.dmi'
	icon_state = "floor"

world
	turf = /turf/floor