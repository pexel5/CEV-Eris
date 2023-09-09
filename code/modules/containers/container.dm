/obj/structure/container
	name = "container"
	desc = "XXX"
	appearance_flags = TILE_BOUND
	opacity = FALSE
	density = TRUE
	icon_state = "general"
	icon = 'icons/obj/structures/containers.dmi'
	price_tag = 100
	var/max_storage_space = DEFAULT_HUGE_STORAGE
	var/obj/item/storage/internal/updating/cont_upd


/obj/structure/container/New()
	. = ..()
	cont_upd = new(src)
	cont_upd.max_storage_space = max_storage_space

/obj/structure/container/attack_hand(mob/user)
	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
	cont_upd.open(user)
/*	playsound(src, "toolbox", 50, 1) */
	.=..()

/obj/structure/container/attackby(obj/item/W, mob/user)
	cont_upd.attackby(W, user)

/obj/structure/container/medical
	name = "surgical table"
	desc = "A fairly spacious and comfortable table to store everything you need for surgery in it."
	icon_state = "surgical_table"
