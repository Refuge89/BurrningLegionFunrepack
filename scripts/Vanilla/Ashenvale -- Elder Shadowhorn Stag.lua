--[[ Ashenvale -- Elder Shadowhorn Stag.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function ElderShadowhornStag_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderShadowhornStag_ShadowhornCharge", 8000, 0)
end

function ElderShadowhornStag_ShadowhornCharge(pUnit, Event) 
pUnit:CastSpell(6921) 
end

function ElderShadowhornStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderShadowhornStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderShadowhornStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3818, 1, "ElderShadowhornStag_OnCombat")
RegisterUnitEvent(3818, 2, "ElderShadowhornStag_OnLeaveCombat")
RegisterUnitEvent(3818, 3, "ElderShadowhornStag_OnKilledTarget")
RegisterUnitEvent(3818, 4, "ElderShadowhornStag_OnDied")