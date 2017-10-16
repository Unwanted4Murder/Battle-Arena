mob/species/human
	desc = "It's a freaking human."

mob/species/human/verb/say(msg as text)
	oview() << "<b>[usr]</b> says, [msg]"