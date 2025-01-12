--[[ Azshara -- Azuregos.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Azuregos_OnCombat(Unit, Event)
Unit:RegisterEvent("Azuregos_Chill", 35000, 0)
Unit:RegisterEvent("Azuregos_Cleave", 10000, 0)
Unit:RegisterEvent("Azuregos_FrostBreath", 15000, 0)
Unit:RegisterEvent("Azuregos_Manastorm", 12000, 0)
Unit:RegisterEvent("Azuregos_Reflection", 17000, 0)
end

function Azuregos_Chill(pUnit, Event) 
pUnit:CastSpell(21098) 
end

function Azuregos_Cleave(pUnit, Event) 
pUnit:CastSpell(19983) 
end

function Azuregos_FrostBreath(pUnit, Event) 
pUnit:CastSpell(21099) 
end

function Azuregos_Manastorm(pUnit, Event) 
pUnit:CastSpell(21097) 
end

function Azuregos_Reflection(pUnit, Event) 
pUnit:CastSpell(22067) 
end

function Azuregos_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Azuregos_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Azuregos_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6109, 1, "Azuregos_OnCombat")
RegisterUnitEvent(6109, 2, "Azuregos_OnLeaveCombat")
RegisterUnitEvent(6109, 3, "Azuregos_OnKilledTarget")
RegisterUnitEvent(6109, 4, "Azuregos_OnDied")