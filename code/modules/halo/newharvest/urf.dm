/obj/item/clothing/under/urf
	name = "Brotherhood fatigues"
	desc = "Black synthetic fiber forms a pretty durable jumpsuit."
	icon = 'code/modules/halo/newharvest/newharvest.dmi'
	icon_override = 'code/modules/halo/newharvest/newharvest.dmi'
	item_state = "brotherhoodjumpsuit"
	icon_state = "brotherhoodjumpsuit"
	worn_state = "brotherhoodjumpsuit"

/obj/item/clothing/head/helmet/urf
	name = "Brotherhood Helmet"
	desc = "A modified helmet for the Brotherhood cell of the URF."
	icon = 'code/modules/halo/newharvest/newharvest.dmi'
	icon_override = 'code/modules/halo/newharvest/newharvest.dmi'
	item_state = "brotherhoodhelmet"
	icon_state = "brotherhoodhelmet"
	item_flags = THICKMATERIAL
	body_parts_covered = HEAD
	armor = list(melee = 50, bullet = 30, laser = 50,energy = 20, bomb = 25, bio = 0, rad = 0)
	flags_inv = HIDEEARS|HIDEEYES
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.7
	w_class = 3

/obj/item/clothing/suit/storage/URF
	name = "Brotherhood Ablative Vest"
	desc = "Red metal molded into the form of abs. Nice."
	icon = 'code/modules/halo/newharvest/newharvest.dmi'
	icon_override = 'code/modules/halo/newharvest/newharvest.dmi'
	item_state = "brotherhoodarmor"
	icon_state = "brotherhoodarmor"
	blood_overlay_type = "armor"
	body_parts_covered = ARMS|UPPER_TORSO|LOWER_TORSO
	armor = list(melee = 50, bullet = 45, laser = 40, energy = 40, bomb = 35, bio = 0, rad = 0)
	armor_thickness = 20
	allowed = list(/obj/item/device/flashlight,/obj/item/weapon/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/flame/lighter)
	starting_accessories = /obj/item/clothing/accessory/holster/hip
