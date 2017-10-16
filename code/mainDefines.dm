world
	mob = /mob/char_creation
	turf = /turf/floor

turf/floor
	icon = 'icons/flooring.dmi'
	icon_state = "floor"

mob/char_creation/Login()
    var/char_species = input("Options:(Terran, Icelandic, Molten, Cat, or Human)", "Species") as anything in global.species_types
    var/char_name = input("Enter a name for your character.", "Name") as text
    var/mob/creating = global.species_types[char_species]
    creating = new creating()
    creating.name = "<b>([char_species])</b> [char_name]"
    creating.key = key