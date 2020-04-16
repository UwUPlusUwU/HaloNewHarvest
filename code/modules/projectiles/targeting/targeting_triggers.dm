//as core click exists at the mob level
/mob/proc/trigger_aiming(var/trigger_type)
	return

/mob/living/trigger_aiming(var/trigger_type)
	if(!aimed.len)
		return
	for(var/obj/aiming_overlay/AO in aimed)
		if(AO.aiming_at == src)
			AO.update_aiming()
			if(AO.aiming_at == src)
				AO.trigger(trigger_type)
				AO.update_aiming_deferred()

/obj/aiming_overlay/proc/trigger(var/perm)
	if(!owner || !aiming_with || !aiming_at || !locked)
		return
	if(perm && (target_permissions & perm))
		return
	if(!owner.canClick())
		return
	owner.setClickCooldown(DEFAULT_QUICK_COOLDOWN) // Spam prevention, essentially.
	if(owner.a_intent == I_HELP)
		to_chat(owner, "<span class='warning'>You refrain from firing \the [aiming_with] as your intent is set to help.</span>")
		return
	owner.visible_message("<span class='danger'>\The [owner] pulls the trigger reflexively!</span>")
	var/obj/item/weapon/gun/G = aiming_with
	if(istype(G))
		var/gun_shoot_time = (G.burst - 1)* G.burst_delay
		owner.setMoveCooldown(max(1,(3*(gun_shoot_time/4)))) //Allows for movement near the end of the burst but mostly holds the player in one spot.
		G.Fire(aiming_at, owner)
