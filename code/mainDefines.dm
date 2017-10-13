mob
	var/HP = 100
	Login()
		var/species_type = alert("What variant of spider would you play as?", "Spider Variant", "Terran", "Icelandic", "Molten")
		var/char_name = input("Please name your character.", "Name") as text
		name = "<b>([species_type])</b> [char_name]"
		..()

turf/floor
	icon = 'icons/flooring.dmi'
	icon_state = "floor"

world
	turf = /turf/floor