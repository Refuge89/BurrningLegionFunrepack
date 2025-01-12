--[[ Netherstorm -- Hound of Culuthas.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Hound_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Hound_Breath",2500,0)
    pUnit:RegisterEvent("Hound_Stomp",1000,0)
end

function Hound_Breath(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36406,pUnit:GetClosestPlayer())
end

function Hound_Stomp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36405,pUnit:GetClosestPlayer())
end

function Hound_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Hound_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20141, 1, "Hound_OnEnterCombat")
RegisterUnitEvent (20141, 2, "Hound_OnLeaveCombat")
RegisterUnitEvent (20141, 4, "Hound_OnDied")