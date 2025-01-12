--[[ Mulgore -- Mazzranache.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function Mazzranache_OnCombat(Unit, Event)
Unit:RegisterEvent("Mazzranache_DeadlyPoison", 10000, 0)
Unit:RegisterEvent("Mazzranache_RushingCharge", 8000, 0)
end

function Mazzranache_DeadlyPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3538, pUnit:GetMainTank()) 
end

function Mazzranache_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function Mazzranache_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Mazzranache_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Mazzranache_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3068, 1, "Mazzranache_OnCombat")
RegisterUnitEvent(3068, 2, "Mazzranache_OnLeaveCombat")
RegisterUnitEvent(3068, 3, "Mazzranache_OnKilledTarget")
RegisterUnitEvent(3068, 4, "Mazzranache_OnDied")