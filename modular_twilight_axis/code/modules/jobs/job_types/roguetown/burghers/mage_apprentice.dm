/datum/job/roguetown/wapprentice
	title = "Magicians Associate"
	flag = APPRENTICE
	department_flag = BURGHERS
	faction = "Station"
	total_positions = 4
	spawn_positions = 4

	forbidden_races = list(RACES_DESPISED)
	spells = list()
	advclass_cat_rolls = list(CTAG_WAPPRENTICE = 20)

	tutorial = "Yils of study have led you to the University of Azuria. The Divine heals and protects. \
	The arcyne arts, though useful, are far more suited to death and destruction. The Crown knows this, \
	and provides a stipend to fund your studies and just as much your complacency, to not turn your \
	magicks against the Crown. A comfortable tenure, a stipend, and a place to undergo your study. \
	What more could a Mage ask for?"

	outfit = /datum/outfit/job/roguetown/wapprentice

	display_order = JDO_APPRENTICE
	give_bank_account = TRUE
	same_job_respawn_delay = 20 MINUTES
	min_pq = 2
	max_pq = null
	round_contrib_points = 2
	cmode_music = sound("sound/music/cmode/nobility/combat_courtmage.ogg")
	advjob_examine = TRUE // So that Court Magicians can know if they're teachin' a Apprentice or if someone's a bit more advanced of a player. Just makes the title show up as the advjob's name.

	job_traits = list(TRAIT_ALCHEMY_EXPERT)
	job_subclasses = list(
		/datum/advclass/wapprentice/associate,
		/datum/advclass/wapprentice/associate/apprentice,
		// /datum/advclass/wapprentice/spellblade
	)

/datum/outfit/job/roguetown/wapprentice
	// Base gear defaults moved to each subclass pre_equip to avoid
	// inheritance issues with adept's stoplag-based chant selection.

/datum/advclass/wapprentice
	tempo_capable = FALSE

/datum/advclass/wapprentice/associate
	name = "Magician's Associate"
	tutorial = "No one could truly master the entirety of the arcyne arts. But commanding the fundamentals \
	is quite achievable. Deemed competent by your peers and mentor, you have become an Associate, paid \
	a stipend to wield your power in the name of the Crown, or at least not against them. The Crown might \
	want a bolt of lightning turned against their enemies - after all, what else is the arcyne good for but war \
	and destruction? But as many mages know, wisdom and whimsy are the true calling of the Magos who has \
	mastered the arts. The choice is yours."
	outfit = /datum/outfit/job/roguetown/wapprentice/associate

	category_tags = list(CTAG_WAPPRENTICE)
	traits_applied = list(TRAIT_ARCYNE)
	subclass_stats = list(
		STATKEY_INT = 3,
		STATKEY_PER = 2,
		STATKEY_SPD = 1
	)
	age_mod = /datum/class_age_mod/apprentice_associate
	subclass_mage_aspects = list("mastery" = FALSE, "major" = 1, "minor" = 2, "utilities" = 6, "ward" = TRUE)
	subclass_skills = list(
		/datum/skill/combat/polearms = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/staves = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/combat/arcyne = SKILL_LEVEL_EXPERT, //TA edit
		/datum/skill/misc/climbing = SKILL_LEVEL_APPRENTICE,
		/datum/skill/combat/wrestling = SKILL_LEVEL_NOVICE,
		/datum/skill/combat/unarmed = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/swimming = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/athletics = SKILL_LEVEL_NOVICE,
		/datum/skill/craft/crafting = SKILL_LEVEL_APPRENTICE,
		/datum/skill/misc/medicine = SKILL_LEVEL_NOVICE,
		/datum/skill/misc/reading = SKILL_LEVEL_MASTER,
		/datum/skill/craft/alchemy = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/magic/arcane = SKILL_LEVEL_JOURNEYMAN,
		/datum/skill/craft/cooking = SKILL_LEVEL_NOVICE,
	)

