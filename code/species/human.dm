mob/species/human
	desc = "It's a freaking human."
	icon = 'icons/skins.dmi'
	icon_state = "human"

mob/species/human/verb/say(msg as text)
	oview() << "<b>[usr]</b> says, [msg]"