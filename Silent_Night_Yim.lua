-- Require Script --
require("Silent-data")
-- Define MPX as a function that returns the appropriate prefix string
local function MPX()
    local PI = stats.get_int("MPPLY_LAST_MP_CHAR")
    if PI == 0 then
        return "MP0_"
    else
        return "MP1_"
    end
end
-- Global Variables
ASIFl1 = 48513 + 1 -- auto shop instant finish local 1
ASIFl2 = 48513 + 1765 + 1 -- auto shop finish local 2
DDSHl = 1269 + 135 -- doomsday doomsday scenario hack local
FMg = 262145 -- free mode global ("CASH_MULTIPLIER")
APg = FMg + 32071 -- agency payout global ("FIXER_FINALE_LEADER_CASH_REWARD")
ASRBl = 381 -- auto shop reload board local
ASPg1 = FMg + 31323 + 1 -- auto shop payout global 1 ("TUNER_ROBBERY_LEADER_CASH_REWARD0")
ASPg2 = FMg + 31323 + 8 -- auto shop payout global 2 ("TUNER_ROBBERY_LEADER_CASH_REWARD7")
ASFg = FMg + 31319 -- auto shop fee global ("TUNER_ROBBERY_CONTACT_FEE")
SYVVg = FMg + 34092 -- salvage yard vehicle value global ("SALV23_VEHICLE_ROBBERY_VALUE_0")
ASCKg = FMg + 31342 -- auto shop cooldown global ("TUNER_ROBBERY_COOLDOWN_TIME")
DCg1 = 1959865 + 812 + 50 + 1 -- doomsday player 1 cut global
DCg2 = 1959865 + 812 + 50 + 2 -- doomsday player 2 cut global
DCg3 = 1959865 + 812 + 50 + 3 -- doomsday player 3 cut global
DCg4 = 1959865 + 812 + 50 + 4 -- doomsday player 4 cut global
GCg = 2685249 + 6615 -- global cut global (value2 = value2 * (num / 100f);)
CPRSl = 1544 -- cayo perico reload screen local
CPCg1 = 1970744 + 831 + 56 + 1 -- cayo perico player 1 cut global
CPCg2 = 1970744 + 831 + 56 + 2 -- cayo perico player 2 cut global
CPCg3 = 1970744 + 831 + 56 + 3 -- cayo perico player 3 cut global
CPCg4 = 1970744 + 831 + 56 + 4 -- cayo perico player 4 cut global
GCg = 2685249 + 6615 -- global cut global (value2 = value2 * (num / 100f);)
CPBg = FMg + 30009 -- cayo perico bag global (1859395035)
CPFHl = 24333 -- cayo perico fingerprint hack local
CPPCCl = 30357 + 3 -- cayo perico plasma cutter cut local ("DLC_H4_anims_glass_cutter_Sounds")
CPSTCl = 29118 -- cayo perico drainage pipe cut local
ACg1 = 1928233 + 1 + 1 -- global apartment player 1 cut global
ACg2 = 1928233 + 1 + 2 -- global apartment player 2 cut global
ACg3 = 1928233 + 1 + 3 -- global apartment player 3 cut global
ACg4 = 1928233 + 1 + 4 -- global apartment player 4 cut global
ACg5 = 1930201 + 3008 + 1 -- local apartment player 1 cut global
AUAJg1 = FMg + 9237 -- apartment unlock all jobs global 1 ("ROOT_ID_HASH_THE_FLECCA_JOB")
AUAJg2 = FMg + 9242 -- apartment unlock all jobs global 2 ("ROOT_ID_HASH_THE_PRISON_BREAK")
AUAJg3 = FMg + 9249 -- apartment unlock all jobs global 3 ("ROOT_ID_HASH_THE_HUMANE_LABS_RAID")
AUAJg4 = FMg + 9255 -- apartment unlock all jobs global 4 ("ROOT_ID_HASH_SERIES_A_FUNDING")
AUAJg5 = FMg + 9261 -- apartment unlock all jobs global 5 ("ROOT_ID_HASH_THE_PACIFIC_STANDARD_JOB")
AIFl3 = 19728 -- apartment instant finish local 1
AIFl4 = 28347 + 1 -- apartment instant finish local 2
AIFl5 = 31603 + 69 -- apartment instant finish local 3
AFHl = 11776 + 24 -- apartment fleeca hack local
AFDl = 10067 + 11 -- apartment fleeca drill local
BUCg1 = FMg + 21505 -- bunker unlocker cooldown global 1 (946764522)
BUCg2 = FMg + 21757 -- bunker unlocker cooldown global 2 ("GR_RESEARCH_CAPACITY")
BUCg3 = FMg + 21758 -- bunker unlocker cooldown global 3 ("GR_RESEARCH_PRODUCTION_TIME")
BUCg4 = FMg + 21759 -- bunker unlocker cooldown global 4 ("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME")
BUAg1 = FMg + 21761 -- bunker unlocker additional global 1 (1485279815)
BUAg2 = FMg + 21762 -- bunker unlocker additional global 2 (2041812011)
GSIg = 1662873 -- get supplies instantly global ("OR_PSUP_DEL)
BCISl = 1983 -- bunker crash instant sell local
HCVPg = FMg + 23020 -- hangar cargo vip payout global (-954321460)
HCVRCg = FMg + 23003 -- hangar cargo vip ron's cut (1232447926)
HCVISl1 = 1932 + 1078 -- hangar cargo vip instant sell local 1
HCVISl2 = 2700 -- hangar cargo vip instant sell local 2
NHCNSg = FMg + 24599 -- nightclub helper cargo n shipments global (1162393585)
NHSGg = FMg + 24593 -- nightclub helper sporting goods global (-1523050891)
NHSAIg = FMg + 24594 -- nightclub helper s.a. imports global (147773667)
NHPRg = FMg + 24595 -- nightclub helper pharmaceutical reseacrh global (-1188700671)
NHOPg = FMg + 24596 -- nightclub helper organic produce global (-1188963032)
NHPNCg = FMg + 24597 -- nightclub helper printing n copying global (967514627)
NHCCg = FMg + 24598 -- nightclub helper cash creation global (1983962738)
NHCKg1 = FMg + 24659 -- nightclub helper cooldown killer global 1 (1763921019)
NHCKg2 = FMg + 24701 -- nightclub helper cooldown killer global 2 (-1004589438)
NHCKg3 = FMg + 24702 -- nightclub helper cooldown killer global 3 (464940095)
NLSCg = FMg + 24257 -- night loop safe capacity global ("NIGHTCLUBMAXSAFEVALUE")
NLISg = FMg + 24234 -- night loop income start global ("NIGHTCLUBINCOMEUPTOPOP5")
NLIEg = FMg + 24253 -- night loop income end global ("NIGHTCLUBINCOMEUPTOPOP100")
NLCl = 183 + 32 + 1 -- night loop collect local
SCVPg = FMg + 15991 -- special cargo vip price global ("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD1")
SCVCKg1 = FMg + 15756 -- special cargo vip cooldown global 1 ("EXEC_BUY_COOLDOWN")
SCVCKg2 = FMg + 15757 -- special cargo vip cooldown global 2 ("EXEC_SELL_COOLDOWN")
SCVMTl = 543 + 7 -- special cargo vip mission type local
SCVISl = 543 + 1 -- special cargo vip instant sell local
-- Required Functions --

local function MoneyFormatter(n)
	n = tostring(n)
	return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end

	stat_ranges = {
		{stat = "PSTAT_BOOL", start = 0, finish = 191},
		{stat = "???", start = 192, finish = 512},
		{stat = "MP_PSTAT_BOOL", start = 513, finish = 704},
		{stat = "???", start = 705, finish = 2918},
		{stat = "MP_TUPSTAT_BOOL", start = 2919, finish = 3110},
		{stat = "TUPSTAT_BOOL", start = 3111, finish = 3878},
		{stat = "???", start = 3879, finish = 4206},
		{stat = "NGPSTAT_BOOL", start = 4207, finish = 4334},
		{stat = "MP_NGPSTAT_BOOL", start = 4335, finish = 4398},
		{stat = "???", start = 4399, finish = 6028},
		{stat = "NGTATPSTAT_BOOL", start = 6029, finish = 6412},
		{stat = "???", start = 6413, finish = 7320},
		{stat = "MP_NGDLCPSTAT_BOOL", start = 7321, finish = 7384},
		{stat = "NGDLCPSTAT_BOOL", start = 7385, finish = 7640},
		{stat = "???", start = 7641, finish = 9360},
		{stat = "DLCBIKEPSTAT_BOOL", start = 9361, finish = 9552},
		{stat = "???", start = 9553, finish = 15368},
		{stat = "DLCGUNPSTAT_BOOL", start = 15369, finish = 15560},
		{stat = "???", start = 15561, finish = 15561},
		{stat = "GUNTATPSTAT_BOOL", start = 15562, finish = 15945},
		{stat = "DLCSMUGCHARPSTAT_BOOL", start = 15946, finish = 16009},
		{stat = "???", start = 16010, finish = 18097},
		{stat = "GANGOPSPSTAT_BOOL", start = 18098, finish = 18161},
		{stat = "???", start = 18162, finish = 22065},
		{stat = "BUSINESSBATPSTAT_BOOL", start = 22066, finish = 22193},
		{stat = "???", start = 22194, finish = 24961},
		{stat = "ARENAWARSPSTAT_BOOL", start = 24962, finish = 25537},
		{stat = "???", start = 25538, finish = 26809},
		{stat = "CASINOPSTAT_BOOL", start = 26810, finish = 27257},
		{stat = "???", start = 27256, finish = 28097},
		{stat = "CASINOHSTPSTAT_BOOL", start = 28098, finish = 28353},
		{stat = "???", start = 28354, finish = 28354},
		{stat = "HEIST3TATTOOSTAT_BOOL", start = 28355, finish = 28482},
		{stat = "???", start = 28483, finish = 30226},
		{stat = "SU20PSTAT_BOOL", start = 30227, finish = 30354},
		{stat = "SU20TATTOOSTAT_BOOL", start = 30355, finish = 30482},
		{stat = "???", start = 30483, finish = 30514},
		{stat = "HISLANDPSTAT_BOOL", start = 30515, finish = 30706},
		{stat = "???", start = 30707, finish = 31706},
		{stat = "TUNERPSTAT_BOOL", start = 31707, finish = 32282},
		{stat = "FIXERPSTAT_BOOL", start = 32283, finish = 32410},
		{stat = "FIXERTATTOOSTAT_BOOL", start = 32411, finish = 32474},
		{stat = "???", start = 32475, finish = 34122},
		{stat = "GEN9PSTAT_BOOL", start = 34123, finish = 34250},
		{stat = "DLC12022PSTAT_BOOL", start = 34251, finish = 34762},
		{stat = "???", start = 34763, finish = 36626},
		{stat = "DLC22022PSTAT_BOOL", start = 36627, finish = 36946},
		{stat = "???", start = 36947, finish = 41250},
		{stat = "DLC22022TATTOOSTAT_BOOL", start = 41251, finish = 41314},
		{stat = "DLC12023PSTAT_BOOL", start = 41315, finish = 42082},
		{stat = "???", start = 42083, finish = 42106},
		{stat = "DLC22023PSTAT_BOOL", start = 42107, finish = 42298},
		{stat = "???", start = 42299, finish = 51058},
		{stat = "DLC22023TATTOOSTAT_BOOL", start = 51059, finish = 51186}
	}
local function StatInfoGetter(packed_bool)
	for _, info in ipairs(stat_ranges) do
		if packed_bool >= info.start and packed_bool <= info.finish then
			return info
		end
	end
end
local function stats_set_packed_bool(packed_bool, bool)
	local stat_info = StatInfoGetter(packed_bool)
	local stat = stat_info.stat
	if stat ~= "???" then
		local bool_start = stat_info.start
		local bool_finish = stat_info.finish
		local temp_bool = bool_start
		local index = 0
		local bit = nil
		for i = bool_start, bool_finish do
			for j = 0, 63 do
				if temp_bool + j == packed_bool then
					bit = j
					break
				end
			end
			if bit ~= nil then
				break
			end
			temp_bool = temp_bool + 64
			index = index + 1
		end
		stats.set_bool_masked(MPX() .. stat .. index, bool, bit)
	end
end
local function stats_set_packed_bools(packed_bool_start, packed_bool_finish, bool)
	for i = packed_bool_start, packed_bool_finish do
		stats_set_packed_bool(i, bool)
	end
end

local function globals_set_ints(global_start, global_finish, step, value)
	for i = global_start, global_finish, step do
		globals.set_int(i, value)
	end
end
local function globals_set_bools(global_start, global_finish, step, bool)
	for i = global_start, global_finish, step do
		globals.set_bool(i, bool)
	end
end

local function null() end



-- Silent Night Tab
Silent = gui.get_tab("Silent Night 1.68")
Silent:add_text("Silent Night 1.68 [V2.1]")

-- Heist Editor tab
Heist_Editor = Silent:add_tab("Heist Editor")

-- Agency tab
local contract_id = {3, 4, 12, 28, 60, 124, 252, 508, 2044, 4095, -1}
local Agency = Heist_Editor:add_tab("Agency")

Agency:add_button("Nightclub Leak",
    function()
        local contractIndex = 3  -- Index of "Nightclub Leak" in the array
        stats.set_int(MPX() .. "FIXER_STORY_BS", contract_id[contractIndex - 1])
        a1 = contractIndex
    end)
Agency:add_sameline()
Agency:add_button("High Society Leak")
Agency:add_sameline()
Agency:add_button("South Central Leak",
    function()
        local contractIndex = 10  -- Index of "South Central Leak" in the array
        stats.set_int(MPX() .. "FIXER_STORY_BS", contract_id[contractIndex - 1])
        a1 = contractIndex
    end)
Agency:add_sameline()
Agency:add_button("Don't Fuck With Dre",
    function()
        local contractIndex = 11  -- Index of "Don't Fuck With Dre" in the array
        stats.set_int(MPX() .. "FIXER_STORY_BS", contract_id[contractIndex - 1])
        a1 = contractIndex
    end)
Agency:add_button("Complete Preps",
    function()
        stats.set_int(MPX() .. "FIXER_GENERAL_BS", -1)
        stats.set_int(MPX() .. "FIXER_COMPLETED_BS", -1)
        stats.set_int(MPX() .. "FIXER_STORY_COOLDOWN", -1)
    end)
Agency:add_separator()
Agency:add_text("Money")
local agencySafe = Agency:add_checkbox("Agency Safe Loop")
script.register_looped("agencyloop", function(script)
    script:yield()
    if agencySafe:is_enabled() == true then
        gui.show_message("Business Manager", "Supplying Agency Safe with money")
        STATS.STAT_SET_INT(joaat(MPX() .. "FIXER_COUNT"), 500, true)
        STATS.STAT_SET_INT(joaat(MPX() .. "FIXER_PASSIVE_PAY_TIME_LEFT"), -1, true)
        script:sleep(0.5)
    end
end)
Agency:add_separator()
Agency:add_text("Payouts:")
Agency:add_text("Set The Payout After The final mission starts:")
Agency:add_button("Max Payout", function() globals.set_int(APg, 2500000) end)
Agency:add_text("")
Agency:add_text("Custom Payout:")
local agencyPayout = Agency:add_input_int("Payout")
Agency:add_button("Set Payout", function() globals.set_int(APg, agencyPayout:get_value()) end)
Agency:add_separator()
Agency:add_text("After All choices and pressing Complete Preps wait for sometime")

-- Autoshop tab

local Autoshop = Heist_Editor:add_tab("Autoshop")
Autoshop:add_text("Missions")
Autoshop:add_button("Union Repository",
function()
	local contractIndex = 1
	stats.set_int(MPX() .. "TUNER_CURRENT", contractIndex - 1)
end)
Autoshop:add_sameline()
Autoshop:add_button("The Superdollar Deal", 
function()
	local contractIndex = 2
	stats.set_int(MPX() .. "TUNER_CURRENT", contractIndex - 1)
end)
Autoshop:add_sameline()
Autoshop:add_button("The Bank Contract",
function()
	local contractIndex = 3
	stats.set_int(MPX() .. "TUNER_CURRENT", contractIndex - 1)
end)
Autoshop:add_sameline()
Autoshop:add_button("The ECU Job",
function()
	local contractIndex = 4
	stats.set_int(MPX() .. "TUNER_CURRENT", contractIndex - 1)
end)
Autoshop:add_button("The Prison Contract",
    function()
        local contractIndex = 5
        stats.set_int(MPX() .. "TUNER_CURRENT", contractIndex - 1)
    end)
Autoshop:add_sameline()
Autoshop:add_button("The Agency Deal",
function()
	local contractIndex = 6
	stats.set_int(MPX() .. "TUNER_CURRENT", contractIndex - 1)
end)
Autoshop:add_sameline()
Autoshop:add_button("The Lost Contract",
function()
	local contractIndex = 7
	stats.set_int(MPX() .. "TUNER_CURRENT", contractIndex - 1)
end)
Autoshop:add_sameline()
Autoshop:add_button("The Data Contract",
function()
	local contractIndex = 8
	stats.set_int(MPX() .. "TUNER_CURRENT", contractIndex - 1)
end)
Autoshop:add_button("Complete Preps",
	function()
		current_mission = stats.get_int(MPX() .. "TUNER_CURRENT")
		if current_mission == 1 then
			stats.set_int(MPX() .. "TUNER_GEN_BS", 4351)
		else
			stats.set_int(MPX() .. "TUNER_GEN_BS", 12543)
		end
		sleep(1)
		locals.set_int("tuner_planning", 381, 2)
	end)
Autoshop:add_separator()
Autoshop:add_text("Reload Planning")
Autoshop:add_button("Reload Planning",
function ()
	locals.set_int("tuner_planning", 381, 2)
end
)
Autoshop:add_separator()
Autoshop:add_text("Payouts:")
Autoshop:add_button("Max Payout",
function()
	globals.set_float(ASFg, 0)
	for i = ASPg1, ASPg2 do
		globals.set_int(i, 2000000)
	end
end)
Autoshop:add_text("Custom Payout:")
local autoshopPayout = Autoshop:add_input_int("Payout")
Autoshop:add_button("Set Payout",
function ()
	globals.set_float(ASFg, 0)
	for i = ASPg1, ASPg2 do
		globals.set_int(i, autoshopPayout:get_value())
	end
end)
Autoshop:add_separator()
Autoshop:add_text("Instant Finish")
Autoshop:add_button("Instant Finish",
function ()
	locals.set_int("fm_mission_controller_2020", ASIFl1, 51338977)
	locals.set_int("fm_mission_controller_2020", ASIFl2, 101)
end
)

-- Salvage Yard --
local function set_all_vehicles_available()
    for i = 1, 3 do
        -- Set each vehicle's status to 'Available' (index 2 in yard_vehicle_statuses)
        stats.set_int(MPX() .. "SALV23_VEHROB_STATUS" .. (i - 1), 0) -- Setting to 0 for 'Available'
    end
end
local function YardPrepsSetter(value)
	stats.set_int(MPX() .. "SALV23_GEN_BS", value)
	stats.set_int(MPX() .. "SALV23_SCOPE_BS", value)
	stats.set_int(MPX() .. "SALV23_FM_PROG", value)
	stats.set_int(MPX() .. "SALV23_INST_PROG", value)
end

local Salvage = Heist_Editor:add_tab("Salvage Yard")
Salvage:add_text("Alter Vehicle Cost")
Salvage:add_text("")
Salvage:add_text("Set Vehicle value to $600,000 | Safe")
Salvage:add_button("First Vehicle",
function ()
	globals.set_int(SYVVg + 1, 600000)
end)
Salvage:add_sameline()
Salvage:add_button("Second Vehicle",
function ()
	globals.set_int(SYVVg + 2, 600000)
end)
Salvage:add_sameline()
Salvage:add_button("Third Vehicle",
function ()
	globals.set_int(SYVVg + 3, 600000)
end)
Salvage:add_text("")
Salvage:add_text("Custom Vehicle Value")
local salvehPrice = Salvage:add_input_int("Price")
Salvage:add_button("First Vehicle",
function ()
	globals.set_int(SYVVg + 1, salvehPrice:get_value())
end)
Salvage:add_sameline()
Salvage:add_button("Second Vehicle",
function ()
	globals.set_int(SYVVg + 2, salvehPrice:get_value())
end)
Salvage:add_sameline()
Salvage:add_button("Third Vehicle",
function ()
	globals.set_int(SYVVg + 3, salvehPrice:get_value())
end)

Salvage:add_separator()
Salvage:add_text("Set All vehicles as available")
Salvage:add_button("Set all vehicles as available", function() set_all_vehicles_available() end)
Salvage:add_text("Complete Preps")
Salvage:add_button("Complete Preps", function() YardPrepsSetter(-1) end)
Salvage:add_separator()
Salvage:add_text("Reset preps")
Salvage:add_button("Reset Preps", function() YardPrepsSetter(0) end)
Salvage:add_separator()
Salvage:add_text("Kill Cooldown")
Salvage:add_button("Kill Cooldown",
function()
	for i = SYCg1, SYCg2 do
		globals.set_int(i, 0)
	end
end)
-- Cut Setter for Heist --

local function CutsPresetter(global_start, global_finish, cut)
	globals.set_int(GCg, cut)
	for i = global_start, global_finish do
		globals.set_int(i, cut)		
	end
end

-- Doomsday --
local function DoomsdayActSetter(progress, status)
	stats.set_int(MPX() .. "GANGOPS_FLOW_MISSION_PROG", progress)
	stats.set_int(MPX() .. "GANGOPS_HEIST_STATUS", status)
	stats.set_int(MPX() .. "GANGOPS_FLOW_NOTIFICATIONS", 1557)
end

local Doomsday = Heist_Editor:add_tab("Doomsday Heist")
Doomsday:add_text("Doomsday Acts")
Doomsday:add_button("Data Breaches",
function ()
	DoomsdayActSetter(503, 229383)

end)
Doomsday:add_sameline()
Doomsday:add_button("Bogdan Problem",
function ()
	DoomsdayActSetter(240, 229378)
end)
Doomsday:add_sameline()
Doomsday:add_button("Doomsday Scenario",
function ()
	DoomsdayActSetter(16368, 229380)
end)

Doomsday:add_text("Set Doomsday Heist Cuts")
Doomsday:add_text("Preset Cut")
Doomsday:add_button("100",
function ()
	CutsPresetter(DCg1, DCg4, 100)
end
)
Doomsday:add_text("Custom Cuts")
local dmsdyCut1 = Doomsday:add_input_int("Cut 1")
local dmsdyCut2 = Doomsday:add_input_int("Cut 2")
local dmsdyCut3 = Doomsday:add_input_int("Cut 3")
local dmsdyCut4 = Doomsday:add_input_int("Cut 4")
Doomsday:add_button("Set Cuts",
function ()
	globals.set_int(DCg1, dmsdyCut1:get_value())
	globals.set_int(DCg2, dmsdyCut2:get_value())
	globals.set_int(DCg3, dmsdyCut3:get_value())
	globals.set_int(DCg4, dmsdyCut4:get_value())
end)
Doomsday:add_separator()
Doomsday:add_text("Preps")
Doomsday:add_button("Reset Preps",
function ()
	DoomsdayActSetter(240, 0)
end
)
Doomsday:add_sameline()
Doomsday:add_button("Complete Preps",
function ()
	stats.set_int(MPX() .. "GANGOPS_FM_MISSION_PROG", -1)
end
)
Doomsday:add_separator()
Doomsday:add_text("By pass Doomsday Scenario hack")
Doomsday:add_button("By Act III Pass hack",
function ()
	locals.set_int("fm_mission_controller", DDSHl, 3)
end
)

-- Cayo Heist --

local Cayo = Heist_Editor:add_tab("Cayo Perico Heist")
Cayo:add_text("Primary Target")
Cayo:add_button("Panther Statue",
function ()
	stats.set_int(MPX() .. "H4CNF_TARGET", 5)
end)
Cayo:add_sameline()
Cayo:add_button("Diamond",
function ()
	stats.set_int(MPX() .. "H4CNF_TARGET", 4)
end)
Cayo:add_sameline()
Cayo:add_button("Bonds",
function ()
	stats.set_int(MPX() .. "H4CNF_TARGET", 3)
end)
Cayo:add_sameline()
Cayo:add_button("Necklace",
function ()
	stats.set_int(MPX() .. "H4CNF_TARGET", 2)
end)
Cayo:add_sameline()
Cayo:add_button("Tequila",
function ()
	stats.set_int(MPX() .. "H4CNF_TARGET", 1)
end)
Cayo:add_separator()
Cayo:add_text("Secondary targets")
local function CayoCompletePreps()
	stats.set_int(MPX() .. "H4CNF_UNIFORM", -1)
	stats.set_int(MPX() .. "H4CNF_GRAPPEL", -1)
	stats.set_int(MPX() .. "H4CNF_TROJAN", 5)
	stats.set_int(MPX() .. "H4CNF_WEP_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_ARM_DISRP", 3)
	stats.set_int(MPX() .. "H4CNF_HEL_DISRP", 3)
	stats.set_int(MPX() .. "H4_PLAYTHROUGH_STATUS", 10)
end
local function CayoTargetsSetter(cash, weed, coke, gold, where, target, value)
	stats.set_int(MPX() .. "H4LOOT_CASH_" .. where, cash)
	stats.set_int(MPX() .. "H4LOOT_CASH_" .. where .. "_SCOPED", cash)
	stats.set_int(MPX() .. "H4LOOT_WEED_" .. where, weed)
	stats.set_int(MPX() .. "H4LOOT_WEED_" .. where .. "_SCOPED", weed)
	stats.set_int(MPX() .. "H4LOOT_COKE_" .. where, coke)
	stats.set_int(MPX() .. "H4LOOT_COKE_" .. where .. "_SCOPED", coke)
	stats.set_int(MPX() .. "H4LOOT_GOLD_" .. where, gold)
	stats.set_int(MPX() .. "H4LOOT_GOLD_" .. where .. "_SCOPED", gold)
	stats.set_int(MPX() .. "H4LOOT_" .. target .. "_V", value)
end
local function CayoPaintingsToggler(Enabled)
	if Enabled then
		stats.set_int(MPX() .. "H4LOOT_PAINT", 127)
		stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 127)
		stats.set_int(MPX() .. "H4LOOT_PAINT_V", 189500)
	else
		stats.set_int(MPX() .. "H4LOOT_PAINT", 0)
		stats.set_int(MPX() .. "H4LOOT_PAINT_SCOPED", 0)
	end
end
local function CutsPresetter(global_start, global_finish, cut)
	globals.set_int(GCg, cut)
	for i = global_start, global_finish do
		globals.set_int(i, cut)
	end
end


Cayo:add_text("Compound:")
Cayo:add_button("Gold",
function ()
	CayoTargetsSetter(0, 0, 0, 255, "C", "GOLD", 330350)
end
)
Cayo:add_sameline()
Cayo:add_button("Cocaine",
function ()
	CayoTargetsSetter(0, 0, 255, 0, "C", "COKE", 200095)
end
)
Cayo:add_sameline()
Cayo:add_button("Meraguina",
function ()
	CayoTargetsSetter(0, 255, 0, 0, "C", "WEED", 147870)
end
)
Cayo:add_sameline()
Cayo:add_button("Cash",
function ()
	CayoTargetsSetter(255, 0, 0, 0, "C", "CASH", 90000)
end
)
Cayo:add_text("")
Cayo:add_text("Island (Buggy!)")
Cayo:add_button("Gold",
function ()
	CayoTargetsSetter(0, 0, 0, 16777215, "I", "GOLD", 330350)
end
)
Cayo:add_sameline()
Cayo:add_button("Cocaine",
function ()
	CayoTargetsSetter(0, 0, 16777215, 0, "I", "COKE", 200095)
end
)
Cayo:add_sameline()
Cayo:add_button("Meraguina",
function ()
	CayoTargetsSetter(0, 16777215, 0, 0, "I", "WEED", 147870)
end
)
Cayo:add_sameline()
Cayo:add_button("Cash",
function ()
	CayoTargetsSetter(16777215, 0, 0, 0, "I", "CASH", 90000)
end
)
Cayo:add_text("")
Cayo:add_text("Add Paintings")
local addPaintings = Cayo:add_checkbox("Paintings")
Cayo:add_separator()
Cayo:add_text("Difficulty")
Cayo:add_button("Hard",
function ()
	stats.set_int(MPX() .. "H4_PROGRESS", 131055)
end
)
Cayo:add_sameline()
Cayo:add_button("Normal",
function ()
	stats.set_int(MPX() .. "H4_PROGRESS", 126823)
end
)
Cayo:add_separator()
Cayo:add_text("Approach")
Cayo:add_button("Longfin",
function ()
	stats.set_int(MPX() .. "H4_MISSIONS", 65345)
end
)
Cayo:add_sameline()
Cayo:add_button("Patrol Boat",
function ()
	stats.set_int(MPX() .. "H4_MISSIONS", 65313)
end
)
Cayo:add_sameline()
Cayo:add_button("Stealth Annihilator",
function ()
	stats.set_int(MPX() .. "H4_MISSIONS", 65425)
end
)
Cayo:add_sameline()
Cayo:add_button("Velum",
function ()
	stats.set_int(MPX() .. "H4_MISSIONS", 65289)
end
)
Cayo:add_sameline()
Cayo:add_button("Alkonost",
function ()
	stats.set_int(MPX() .. "H4_MISSIONS", 65413)
end
)
Cayo:add_sameline()
Cayo:add_button("Kosatka",
function ()
	stats.set_int(MPX() .. "H4_MISSIONS", 65283)
end
)
Cayo:add_separator()
Cayo:add_text("Weapons")
Cayo:add_button("Aggressor",
function ()
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 1)

end)
Cayo:add_sameline()
Cayo:add_button("Conspirator",
function ()
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 2)

end)
Cayo:add_sameline()
Cayo:add_button("Crackshot",
function ()
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 3)

end)
Cayo:add_sameline()
Cayo:add_button("Saboteur",
function ()
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 4)

end)
Cayo:add_sameline()
Cayo:add_button("Marksman",
function ()
	stats.set_int(MPX() .. "H4CNF_WEAPONS", 5)

end)
Cayo:add_separator()
Cayo:add_button("Complete Preps",
function ()
	CayoPaintingsToggler(addPaintings:is_enabled())
	CayoCompletePreps()
end
)
Cayo:add_separator()
Cayo:add_text("Cuts to All")
Cayo:add_button("100",
function ()
	CutsPresetter(CPCg1, CPCg4, 100)
end
)
Cayo:add_text("")
Cayo:add_text("Custom Cut")
local cayocut1 = Cayo:add_input_int("Cut 1")
local cayocut2 = Cayo:add_input_int("Cut 2")
local cayocut3 = Cayo:add_input_int("Cut 3")
local cayocut4 = Cayo:add_input_int("Cut 4")
Cayo:add_button("Set",
function ()
	globals.set_int(CPCg1, cayocut1:get_value())
	globals.set_int(CPCg2, cayocut2:get_value())
	globals.set_int(CPCg3, cayocut3:get_value())
	globals.set_int(CPCg4, cayocut4:get_value())
end)
Cayo:add_separator()
Cayo:add_text("Reload Planing Screen")
Cayo:add_button("Reload Planing Screen",
function ()
	locals.set_int("heist_island_planning", CPRSl, 2)
end
)
Cayo:add_separator()
Cayo:add_text("Extras")
Cayo:add_button("Bypass Drainge Cut",
function ()
	locals.set_int("fm_mission_controller_2020", CPSTCl, 6)
end
)
Cayo:add_sameline()
Cayo:add_button("Bypass Fingerprint Scanner",
function ()
	locals.set_int("fm_mission_controller_2020", CPFHl, 5)
end
)
Cayo:add_sameline()
Cayo:add_button("Bypass Plasma Cutter",
function ()
	locals.set_float("fm_mission_controller_2020", CPPCCl, 100.0)
end
)
Cayo:add_sameline()
Cayo:add_button("Remove All CCTV's",
function ()
	for _, ent in pairs(entities.get_all_objects_as_handles()) do
		for __, cam in pairs(CamList) do
			if ENTITY.GET_ENTITY_MODEL(ent) == cam then
				ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, true, true)
				ENTITY.DELETE_ENTITY(ent)
			end
		end
	end
end
)
CamList = {
	joaat("prop_cctv_cam_01a"), joaat("prop_cctv_cam_01b"), joaat("prop_cctv_cam_02a"), joaat("prop_cctv_cam_03a"),
	joaat("prop_cctv_cam_04a"), joaat("prop_cctv_cam_04c"), joaat("prop_cctv_cam_05a"), joaat("prop_cctv_cam_06a"),
	joaat("prop_cctv_cam_07a"), joaat("prop_cs_cctv"), joaat("p_cctv_s"), joaat("hei_prop_bank_cctv_01"),
	joaat("hei_prop_bank_cctv_02"), joaat("ch_prop_ch_cctv_cam_02a"), joaat("xm_prop_x17_server_farm_cctv_01"),
}
-- Apartment Heist --

local Apartment = Heist_Editor:add_tab("Apartment Heist")
Apartment:add_text("Preps")
Apartment:add_button("Complete Preps", 
function ()
	stats.set_int(MPX() .. "HEIST_PLANNING_STAGE", -1)
end)
Apartment:add_sameline()
Apartment:add_button("Reset Preps", function()
	STATS.STAT_SET_INT(MPX() .. "HEIST_PLANNING_STAGE", 0)
end)
Apartment:add_text("")
Apartment:add_text("For Fleeca:")
Apartment:add_text("Pay for the preparation, start the first mission and as soon as you are sent to scout\nchange the session, come back to planning room, press \"Complete Preps\" near white board and press \"E\"")
Apartment:add_text("For Other Heist:")
Apartment:add_text("Start the mission and leave after the 1st cutscene ends, press \"Complete Preps\" near white board and press \"E\"")


Apartment:add_separator()
Apartment:add_text("Cuts to All")
Apartment:add_text("Fleeca Job Heist:")
Apartment:add_button("100",
function ()
	globals.set_int(ACg1, -200)
	globals.set_int(ACg2, 100)

end
)
Apartment:add_text("")
Apartment:add_text("Other Heists:")
Apartment:add_button("100",
function ()
	globals.set_int(ACg1, -300)
	globals.set_int(ACg2, 100)
	globals.set_int(ACg3, 100)
	globals.set_int(ACg4, 100)
end
)
Apartment:add_text("Custom Cuts:")
local apartCut = Apartment:add_input_int("Cut 1")
local apartCut2 = Apartment:add_input_int("Cut 2")
local apartCut3 = Apartment:add_input_int("Cut 3")
local apartCut4 = Apartment:add_input_int("Cut 4")
Apartment:add_text("For Fleeca Heist:")
Apartment:add_button("Set Cuts",
function ()
	globals.set_int(ACg1, 100 - (apartCut:get_value() * 2))
	globals.set_int(ACg2, apartCut2:get_value())
end
)
Apartment:add_text("For Other Heists:")
Apartment:add_button("Set Cuts",
function ()
	globals.set_int(ACg1, 100 - (apartCut:get_value() * 4))
	globals.set_int(ACg2, apartCut2:get_value())
	globals.set_int(ACg3, apartCut3:get_value())
	globals.set_int(ACg4, apartCut4:get_value())
end
)
Apartment:add_button("Set Negative to Positive (own)",
function ()
	globals.set_int(ACg5, -1 * (-100 + globals.get_int(ACg1)) / 2)
end
)
Apartment:add_separator()
Apartment:add_text("Extras")
Apartment:add_button("Bypass Fleeca Hack",
function ()
	locals.set_int("fm_mission_controller", AFHl, 7)
end
)
Apartment:add_sameline()
Apartment:add_button("Bypass Fleeca Drill",
function ()
	locals.set_float("fm_mission_controller", AFDl, 100)
end
)
Apartment:add_sameline()
Apartment:add_button("Unlock All Jobs",
function ()
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_0", globals.get_int(AUAJg1))
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_0_L", 5)
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_1", globals.get_int(AUAJg2))
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_1_L", 5)
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_2", globals.get_int(AUAJg3))
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_2_L", 5)
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_3", globals.get_int(AUAJg4))
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_3_L", 5)
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_4", globals.get_int(AUAJg5))
	stats.set_int(MPX() .. "HEIST_SAVED_STRAND_4_L", 5)
end
)
Apartment:add_text("Note: After Clicking Unlock All jobs, restart the game")

-- Money Tool --

local MoneyT = Silent:add_tab("Money Tool")

-- Bunker Crash --

local Bunker = MoneyT:add_tab("Bunker Crash")
Bunker:add_text("Fill Bunker With Supplies")
Bunker:add_button("Fill With Supplies",
function ()
	globals.set_int(GSIg + 6, 1)
end
)
Bunker:add_separator()

Bunker:add_text("Unlock All Research temporarily")

Bunker:add_button("Unlock All Research", function()
	script.run_in_fiber(function(script)
		globals.set_int(262145 + 22067, 1)
		gui.show_message("Bunker Research", "ALL Bunker research has been unlocked.")
	end)
end)
Bunker:add_text("Supplies")
Bunker:add_button("Fast Production", function()
	script.run_in_fiber(function(script)
		globals.set_int(262145 + 33385, 1)
		globals.set_int(262145 + 21742, 1)
		globals.set_int(262145 + 33392, 1)
		gui.show_message("Production", "Bunker production speed has been increased, make sure you loop your supplies!")
	end)
end)
Bunker:add_sameline()
local bSupplies = Bunker:add_checkbox("Resupply Bunker (Looped)")
script.register_looped("autoGetBunkerCargo", function(script)
    script:yield()
    if bSupplies:is_enabled() == true then
        autoGetBunkerCargo = not autoGetBunkerCargo
        if autoGetBunkerCargo then
            globals.set_int(1662873 + 1 + 5, 1)
            gui.show_message("Bunker", "Resupplying your bunker supplies every 5 seconds.")
            script:sleep(500)
        end
    end
end)
Bunker:add_text("Instant Finish Sell Missions")
Bunker:add_button("Instant Sell Supplies",
function ()
	locals.set_int("gb_gunrunning", BCISl, 0)
end
)
-- MC Businesses

local MB = MoneyT:add_tab("MC Businesses")
MB:add_text("Resupply All Businesses")
MB:add_button("Resupply All", function()
	script.run_in_fiber(function(mcResupply)
		globals.set_int(1662873 + 1 + 6, 1)
		globals.set_int(1662873 + 1 + 6, 1)
		globals.set_int(1662873 + 1 + 6, 1) -- Acid Lab Supplies
		gui.show_message("Acid Lab", "Resupplying your Acid Lab")
		globals.set_int(1662873 + 1 + 5, 1)
		globals.set_int(1662873 + 1 + 5, 1)
		globals.set_int(1662873 + 1 + 5, 1) -- Bunker Supplies
		gui.show_message("Bunker", "Resupplying your Bunker")
		globals.set_int(1662873 + 1 + 1, 1)
		globals.set_int(1662873 + 1 + 1, 1)
		globals.set_int(1662873 + 1 + 1, 1) -- Document Forge Supplies
		gui.show_message("Document Forge", "Resupplying your Document Forge")
		globals.set_int(1662873 + 1 + 2, 1)
		globals.set_int(1662873 + 1 + 2, 1)
		globals.set_int(1662873 + 1 + 2, 1) -- Weed Farm Supplies
		gui.show_message("Weed Farm", "Resupplying your Weed Farm")
		globals.set_int(1662873 + 1 + 3, 1)
		globals.set_int(1662873 + 1 + 3, 1)
		globals.set_int(1662873 + 1 + 3, 1) -- Meth Lab Suplies
		gui.show_message("Meth Lab", "Resupplying your Meth Lab")
		globals.set_int(1662873 + 1 + 4, 1)
		globals.set_int(1662873 + 1 + 4, 1)
		globals.set_int(1662873 + 1 + 4, 1) -- Cocaine Lockup Supplies
		gui.show_message("Cocaine Lockup", "Resupplying your Cocaine Lockup")
	end)
end)
MB:add_sameline()
MB:add_button("Fast Production", function()
	script.run_in_fiber(function(fastProd)
		globals.set_int(262145 + 17599, 25500) -- prod time for weed
		globals.set_int(262145 + 17600, 25500) -- prod time for meth
		globals.set_int(262145 + 17601, 25500) -- prod time for cocaine
		globals.set_int(262145 + 17602, 25500) -- prod time for document forge
		globals.set_int(262145 + 17603, 25500) -- prod time for cash
		--globals.set_int(262145 + 17632, 10000)
		gui.show_message("Production Speed", "Production speed has been sped up for all businesses")
		gui.show_message("Production Speed", "Production speed increase will not start until workers finish the first product, keep it supplied to fill the product bar")
	end)
end)
MB:add_separator()
MB:add_text("Raise Value of Product of MC Business to $1,000,000 +")
MB:add_button("Raise Sale Prices", function()
    globals.set_int(262145 + 17632, 15000) -- price for weed
    globals.set_int(262145 + 17631, 60000) -- price for meth
    globals.set_int(262145 + 17630, 100000) -- price for cocaine
    globals.set_int(262145 + 17628, 20000) -- price for document forge
    globals.set_int(262145 + 17629, 30000) -- price for cash
    --globals.set_int(262145 + 17632, 10000)
    gui.show_message("Production Value", "Production sale value has been increased for all businesses")
end)
-- Hangar Cargo --

local Hangar = MoneyT:add_tab("Hangar Cargo")
Hangar:add_text("Supplies")
Hangar:add_button("Tell Rooster to get some cargo supplies",
function ()
	stats_set_packed_bool(36828, true)
end
)
local hangarloop = Hangar:add_checkbox("Hangar Loop")
script.register_looped("hangarloop",
	function (script)
		if hangarloop:is_enabled() then
			script:yield()
			stats_set_packed_bool(36828, true)
			script:sleep(100)
		end
	end
)
Hangar:add_separator()
Hangar:add_text("Set Custom Price Per Piece")
local hangarPrice = Hangar:add_input_int("Price")
Hangar:add_button("Animal Materials",
function ()
	globals.set_int(HCVPg + 1, hangarPrice:get_value())
end
)
Hangar:add_sameline()
Hangar:add_button("Art n Antiques",
function ()
	globals.set_int(HCVPg + 2, hangarPrice:get_value())
end
)
Hangar:add_sameline()
Hangar:add_button("Chemicals",
function ()
	globals.set_int(HCVPg + 3, hangarPrice:get_value())
end
)
Hangar:add_sameline()
Hangar:add_button("Counterfeit Goods",
function ()
	globals.set_int(HCVPg + 4, hangarPrice:get_value())
end
)
Hangar:add_button("Jewel n Gems",
function ()
	globals.set_int(HCVPg + 5, hangarPrice:get_value())
end
)
Hangar:add_sameline()
Hangar:add_button("Medical Supplies",
function ()
	globals.set_int(HCVPg + 6, hangarPrice:get_value())
end
)
Hangar:add_sameline()
Hangar:add_button("Narcotics",
function ()
	globals.set_int(HCVPg + 7, hangarPrice:get_value())
end
)
Hangar:add_sameline()
Hangar:add_button("Tabacco n Alcohol",
function ()
	globals.set_int(HCVPg + 8, hangarPrice:get_value())
end
)
Hangar:add_separator()
local HangarCargo = 0
Hangar:add_text("Instant Finish Air Cargo Sell Missions")
HangarCargo = Hangar:add_input_int(" Cargos")
Hangar:add_button("Instant Finish",
function ()
	script.run_in_fiber(
		function (script)
			globals.set_float(HCVRCg, 0)
			locals.set_int("gb_smuggler", HCVISl1, HangarCargo:get_value())
			script:sleep(1000)
			locals.set_int("gb_smuggler", HCVISl2, -1)
		end
	)
end
)
-- Night Loop --

local function NightclubCooldownKiller(Enabled)
	if Enabled then
		globals.set_int(NHCKg1, 0)
		globals_set_ints(NHCKg2, NHCKg3, 1, 0)
	else
		globals.set_int(NHCKg1, 300000)
		globals_set_ints(NHCKg2, NHCKg3, 1, 300000)
	end
end

local Nightclub = MoneyT:add_tab("Night Club Utilities")
Nightclub:add_text("Nightclub Loop")
Nightclub:add_text("This Fill the Popularity of Nightclub and Fills the Safe with 50000 every 2s")
local nightloop = Nightclub:add_checkbox("Enable Nitghtclub $250k/5s (Safe AFK)")
script.register_looped("nightclubloop", function(script)
	if nightloop:is_enabled() then
		script:yield()
		log.info("Starting")
		STATS.STAT_SET_INT(joaat(MPX() .. "CLUB_POPULARITY"), 1000, true)
		STATS.STAT_SET_INT(joaat(MPX() .. "CLUB_PAY_TIME_LEFT"), -1, true)
		log.info("Finished")
		script:sleep(2500)
	end
end)
Nightclub:add_separator()
Nightclub:add_text("NightClub Safe")
Nightclub:add_button("Fill Nightclub Safe",
function ()
	script.run_in_fiber(
		function (script)
			stats.set_int(MPX() .. "CLUB_POPULARITY", 0)
			script:sleep(200)
			globals.set_int(NLISg, 250000)
			globals.set_int(NLSCg, 250000)
			stats.set_int(MPX() .. "CLUB_PAY_TIME_LEFT", -1)
		end
	)
end
)
Nightclub:add_sameline()
Nightclub:add_button("Collect Nightclub Safe",
function ()
	locals.set_int("am_mp_nightclub", NLCl, 1)
end
)
Nightclub:add_separator()
Nightclub:add_text("Set Cargo value to $2,00,000")
Nightclub:add_button("Cargo and shipments",
function ()
	if stats.get_int(MPX() .. "HUB_PROD_TOTAL_0") ~= 0 then
		globals.set_int(NHCNSg, math.floor(2000000 / stats.get_int(MPX() .. "HUB_PROD_TOTAL_0")))
	end
end
)
Nightclub:add_sameline()
Nightclub:add_button("Sporting Goods",
function ()
	if stats.get_int(MPX() .. "HUB_PROD_TOTAL_1") ~= 0 then
		globals.set_int(NHSGg, math.floor(2000000 / stats.get_int(MPX() .. "HUB_PROD_TOTAL_1")))
	end
end
)
Nightclub:add_sameline()
Nightclub:add_button("S.A. Imports",
function ()
	if stats.get_int(MPX() .. "HUB_PROD_TOTAL_2") ~= 0 then
		globals.set_int(NHSAIg, math.floor(2000000 / stats.get_int(MPX() .. "HUB_PROD_TOTAL_2")))
	end
end
)
Nightclub:add_sameline()
Nightclub:add_button("Pharmac. Research",
function ()
	if stats.get_int(MPX() .. "HUB_PROD_TOTAL_3") ~= 0 then
		globals.set_int(NHPRg, math.floor(2000000 / stats.get_int(MPX() .. "HUB_PROD_TOTAL_3")))
	end
end
)
Nightclub:add_sameline()
Nightclub:add_button("Organic Produce",
function ()
	if stats.get_int(MPX() .. "HUB_PROD_TOTAL_4") ~= 0 then
		globals.set_int(NHOPg, math.floor(2000000 / stats.get_int(MPX() .. "HUB_PROD_TOTAL_4")))
	end
end
)
Nightclub:add_sameline()
Nightclub:add_button("Printing and Copying",
function ()
	if stats.get_int(MPX() .. "HUB_PROD_TOTAL_5") ~= 0 then
		globals.set_int(NHPNCg, math.floor(2000000 / stats.get_int(MPX() .. "HUB_PROD_TOTAL_5")))
	end
end
)
Nightclub:add_sameline()
Nightclub:add_button("Cash Creation",
function ()
	if stats.get_int(MPX() .. "HUB_PROD_TOTAL_6") ~= 0 then
		globals.set_int(NHCCg, math.floor(2000000 / stats.get_int(MPX() .. "HUB_PROD_TOTAL_6")))
	end
end
)
Nightclub:add_text("")
Nightclub:add_button("Default Payout",
function ()
	globals.set_int(NHCNSg, 10000)
	globals.set_int(NHSGg, 5000)
	globals.set_int(NHSAIg, 27000)
	globals.set_int(NHPRg, 11475)
	globals.set_int(NHOPg, 2025)
	globals.set_int(NHPNCg, 10000)
	globals.set_int(NHCCg, 4725)
end
)
Nightclub:add_separator()
Nightclub:add_text("Kill Cooldown")
Nightclub:add_button("Cooldown Killer",
function ()
	NightclubCooldownKiller(true)
end
)
-- Arcade loop - 
local arcade = MoneyT:add_tab("Arcade")
arcadeSafe = arcade:add_checkbox("Arcade Safe Loop")
script.register_looped("arcadeloop", function(script)
    script:yield()
    if arcadeSafe:is_enabled() == true then
        gui.show_message("Business Manager", "Supplying Arcade Safe with money")
        STATS.STAT_SET_INT(joaat(MPX() .. "ARCADE_SAFE_CASH_VALUE"), 2000, true)
        STATS.STAT_SET_INT(joaat(MPX() .. "ARCADE_PAY_TIME_LEFT"), -1, true)
        script:sleep(500)
    end
end)
-- Special Cargo --
local function CargoCooldownKiller(Enabled)
	if Enabled then
		globals_set_ints(SCVCKg1, SCVCKg2, 1, 0)
	else
		globals.set_int(SCVCKg1, 300000)
		globals.set_int(SCVCKg2, 1800000)
	end
end
local function CargoPriceSetter(price)
	for i = 0, 4 do
		if stats.get_int(MPX() .. "CONTOTALFORWHOUSE" .. i) > 0 then
			stats.set_int(MPX() .. "SPCONTOTALFORWHOUSE" .. i, stats.get_int(MPX() .. "CONTOTALFORWHOUSE" .. i) - 1)
		end
	end
	globals.set_int(SCVPg, price)
end
local Special = MoneyT:add_tab("Special Cargo")
Special:add_text("Get Cargo Supplies")
Special:add_button("Get Supplies",
function ()
	stats_set_packed_bools(32359, 32363, true)
end
)
Special:add_separator()
Special:add_text("Cargo Loop")
local cargoloop = Special:add_checkbox("Get Supplies Loop")
script.register_looped("cargoloop",
function (script)
	script:yield()
	if cargoloop:is_enabled() then
		stats_set_packed_bools(32359, 32363, true)
		script:sleep(500)
	end
end
)
Special:add_separator()
Special:add_text("Instant Sell")
Special:add_button("Instant Sell",
function()
	script.run_in_fiber(
		function (script)
			globals.set_float(XMg, 0)
			stats_set_packed_bools(32359, 32363, true)
			locals.set_int("gb_contraband_sell", SCVMTl, 7)
			script:sleep(500)
			locals.set_int("gb_contraband_sell", SCVISl, 99999)
			sleep(500)
			for i = 0, 4 do
				if stats.get_int(MPX() .. "CONTOTALFORWHOUSE" .. i) > 0 then
					stats.set_int(MPX() .. "SPCONTOTALFORWHOUSE" .. i, stats.get_int(MPX() .. "CONTOTALFORWHOUSE" .. i) - 1)
				end
			end
			locals.set_int("gb_contraband_sell", SCVISl, 99999)
		end
	)
end
)
-- Miscellaneous --
local Miscellaneous = Silent:add_tab("Miscellaneous")

-- Stat  Editor --

local StatsEd = Miscellaneous:add_tab("Stat Editor")
StatsEd:add_text("Set Your RP")
StatsEd:add_button("420",
function ()
	script.run_in_fiber(
		function (script)
			rpLevel = 13288350 -- Level 420 -- https://www.unknowncheats.me/forum/2458458-post691.html
			STATS.STAT_SET_INT(joaat(MPX() .. "CHAR_SET_RP_GIFT_ADMIN"), rpLevel, true)
			gui.show_message("Stats", "Your level was set to 420, changing session and applying RP")
		end
	)
end
)

-- Vehicle Utilities --
function FastAcc(speed)
	local vehicle = PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), true)
	VEHICLE.SET_VEHICLE_FORWARD_SPEED(vehicle, speed/2)
	VEHICLE.SET_VEHICLE_MAX_SPEED(vehicle, speed)
end

local VehUtils = Miscellaneous:add_tab("Vehicle Utilities")
VehUtils:add_text("Set Top Speed Of Vehicle")
local vehTopSpeed = VehUtils:add_input_int("Top Speed")
VehUtils:add_button("Set Top Speed",
function ()
	FastAcc(vehTopSpeed:get_value() - 100)
end
)
local fastAcc = VehUtils:add_checkbox("Fast Acceleration Loop")
script.register_looped("fastacc",
function (script)
	script:yield()
	if fastAcc:is_enabled() then
		FastAcc(vehTopSpeed:get_value() -100)
		script:sleep(500)
	end
end
)

VehUtils:add_separator()
VehUtils:add_text("Gift Vehicle")
VehUtils:add_text("To gift vehicles, Make sure all the players vehicles are repaired/returned and that they have a full garage!")
VehUtils:add_text("HAVE THEM GO INTO THEIR GARAGE, DRIVE A CAR OUT AND BACK INTO THEIR GARAGE AND THEN COME OUT ON FOOT!")
VehUtils:add_text("Spawn the vehicle using Gift Vehicle's Vehicle Spawner (UNCHECK THE NO POLLUTION BOX BEFORE PRESSING SPAWN!!)")
VehUtils:add_text("Once you are done, have them get in, then Press the Gift Vehicle button, once it returns the success message they can drive it into their garage")
VehUtils:add_text("NOTE: Gifted vehicles SHOULD come fully insured, MAKE SURE THEY CHECK IT IN LS CUSTOMS!")

local unlocker = Miscellaneous:add_tab("Unlocker Menu")
unlocker:add_text("Unlock All the Things you want")
unlocker:add_button("Unlock All Parachutes",
	function()
		stats_set_packed_bool(3609, true)
		stats_set_packed_bools(31791, 31796, true)
		stats_set_packed_bools(34378, 34379, true)
	end)
unlocker:add_sameline()
unlocker:add_button("Unlock All Tattoos",
	function()
		for i = 0, 53 do
			stats.set_int(MPX() .. "TATTOO_FM_UNLOCKS_" .. i, -1)
		end
		stats.set_int(MPX() .. "TATTOO_FM_CURRENT_32", -1)
	end)
	unlocker:add_sameline()
unlocker:add_button("Unlock Diamond Casino Outfits", function() stats_set_packed_bools(28225, 28248, true) end)

unlocker:add_button("Unlock Flight School Gold Medals",
	function()
		for i = 0, 9 do
			stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_" .. i , -1)
			stats.set_int(MPX() .. "PILOT_SCHOOL_MEDAL_" .. i, -1)
			stats.set_bool(MPX() .. "PILOT_ASPASSEDLESSON_" .. i, true)
		end
		stats.set_int("MPPLY_NUM_CAPTURES_CREATED", 100)
	end)
	unlocker:add_sameline()
unlocker:add_button("Unlock Trade Prices for Cop Cars",
	function()
		stats.set_int(MPX() .. "SALV23_GEN_BS", -1)
		stats.set_int(MPX() .. "SALV23_INST_PROG", -1)
		stats.set_int(MPX() .. "SALV23_SCOPE_BS", -1)
		stats.set_int(MPX() .. "MOST_TIME_ON_3_PLUS_STARS", 300000)
	end
)
unlocker:add_button("Unlock Hidden Liveries",
function ()
	for i = 0, 20 do
		stats.set_int("MPPLY_XMASLIVERIES" .. i, -1)
	end
end
)
unlocker:add_button("Unlock Xmas Plates",
function ()
	stats.set_int("MPPLY_XMAS23_PLATES0", -1)
end
)
unlocker:add_button("Unlock Taxi Liveries",
function ()
	stats.set_int(MPX() .. "AWD_TAXIDRIVER", 50)
	stats.set_masked_int(MPX() .. "DLC22022PSTAT_INT536", 10, 16, 8)
end
)
unlocker:add_separator()
unlocker:add_text("Unlock Weapon Liveries")

unlocker:add_button("Dildodude Camo | Micro SMG", function() stats_set_packed_bool(36788, true) end)
unlocker:add_sameline()
unlocker:add_button("Dildodude Camo | Pump Shotgun", function() stats_set_packed_bool(36787, true) end)
unlocker:add_sameline()
unlocker:add_button("Employee of the Month Fin. | Micro SMG", function() stats_set_packed_bool(41657, true) end)
unlocker:add_button("Santa's Helper Finish | Heavy Sniper", function() stats_set_packed_bool(42069, true) end)
unlocker:add_sameline()
unlocker:add_button("Season's Greetings | Pistol Mk II", function() stats_set_packed_bool(36786, true) end)
unlocker:add_sameline()
unlocker:add_button("Skull Santa Finish | Special Carbine", function() stats_set_packed_bool(42122, true) end)
unlocker:add_button("Snowman Finish | Combat Pistol", function() stats_set_packed_bool(42068, true) end)
unlocker:add_sameline()
unlocker:add_button("Suede Bucks Finish | Carbine Rifle", function() stats_set_packed_bool(41658, true) end)
unlocker:add_sameline()
unlocker:add_button("Uncle T Finish | RPG", function() stats_set_packed_bool(41659, true) end)

-- LSCM ---

LSCM = Miscellaneous:add_tab("LSCM Unlocker Menu")

LSCM:add_button("Unlock All Rep Lvl 1000", function()
	for i = 262145 + 31944, 262145 + 31973 do
		globals.set_float(i, 100000)
	end
end)
LSCM:add_button("Unlock Trade Prices for Headlights", function() stats_set_packed_bools(24980, 24991, true) end)

LSCM:add_button("Unlock Prize Ride",
	function()
		stats.set_bool(MPX() .. "CARMEET_PV_CHLLGE_CMPLT", true)
		stats.set_bool(MPX() .. "CARMEET_PV_CLMED", false)
	end)

-- Gun Van



	local gun_van_tab = Miscellaneous:add_tab("Gun Van Menu")

	local van_coordinates = {
		vec3:new(-29.532, 6435.136, 31.162),
		vec3:new(1705.214, 4819.167, 41.75),
		vec3:new(1795.522, 3899.753, 33.869),
		vec3:new(1335.536, 2758.746, 51.099),
		vec3:new(795.583, 1210.78, 338.962),
		vec3:new(-3192.67, 1077.205, 20.594),
		vec3:new(-789.719, 5400.921, 33.915),
		vec3:new(-24.384, 3048.167, 40.703),
		vec3:new(2666.786, 1469.324, 24.237),
		vec3:new(-1454.966, 2667.503, 3.2),
		vec3:new(2340.418, 3054.188, 47.888),
		vec3:new(1509.183, -2146.795, 76.853),
		vec3:new(1137.404, -1358.654, 34.322),
		vec3:new(-57.208, -2658.793, 5.737),
		vec3:new(1905.017, 565.222, 175.558),
		vec3:new(974.484, -1718.798, 30.296),
		vec3:new(779.077, -3266.297, 5.719),
		vec3:new(-587.728, -1637.208, 19.611),
		vec3:new(733.99, -736.803, 26.165),
		vec3:new(-1694.632, -454.082, 40.712),
		vec3:new(-1330.726, -1163.948, 4.313),
		vec3:new(-496.618, 40.231, 52.316),
		vec3:new(275.527, 66.509, 94.108),
		vec3:new(260.928, -763.35, 30.559),
		vec3:new(-478.025, -741.45, 30.299),
		vec3:new(894.94, 3603.911, 32.56),
		vec3:new(-2166.511, 4289.503, 48.733),
		vec3:new(1465.633, 6553.67, 13.771),
		vec3:new(1101.032, -335.172, 66.944),
		vec3:new(149.683, -1655.674, 29.028)
	}
	
	local van_locations = {
		"Paleto Bay - 1",
		"Grapeseed - 2",
		"Sandy Shores - 3",
		"Grand Senora - 4",
		"Vinewood Hills - 5",
		"Chumash - 6",
		"Paleto Forest - 7",
		"Zancudo River - 8",
		"Power Station - 9",
		"Lago Zancudo - 10",
		"Grand Senora - 11",
		"El Burro Heights - 12",
		"Murrieta Heights - 13",
		"Elysian Island - 14",
		"Tataviam - 15",
		"La Mesa - 16",
		"Terminal - 17",
		"La Puerta - 18",
		"La Mesa - 19",
		"Del Perro - 20",
		"Magellan Ave - 21",
		"West Vinewood - 22",
		"Downtown Vinewood - 23",
		"Pillbox Hill - 24",
		"Little Seoul - 25",
		"Alamo Sea - 26",
		"North Chumash - 27",
		"Mount Chiliad - 28",
		"Mirror Park - 29",
		"Davis - 30"
	}
	
	-- func_231, gunclub_shop
	local allowed_weapons = {
		"WEAPON_KNIFE",
		"WEAPON_NIGHTSTICK",
		"WEAPON_HAMMER",
		"WEAPON_BOTTLE",
		"WEAPON_DAGGER",
		"WEAPON_KNUCKLE",
		"WEAPON_MACHETE",
		"WEAPON_FLASHLIGHT",
		"WEAPON_SWITCHBLADE",
		"WEAPON_BATTLEAXE",
		"WEAPON_POOLCUE",
		"WEAPON_WRENCH",
		"WEAPON_HATCHET",
		"WEAPON_BAT",
		"WEAPON_CROWBAR",
		"WEAPON_PISTOL",
		"WEAPON_PISTOL_MK2",
		"WEAPON_COMBATPISTOL",
		"WEAPON_APPISTOL",
		"WEAPON_PISTOL50",
		"WEAPON_SNSPISTOL",
		"WEAPON_SNSPISTOL_MK2",
		"WEAPON_HEAVYPISTOL",
		"WEAPON_VINTAGEPISTOL",
		"WEAPON_FLAREGUN",
		"WEAPON_MARKSMANPISTOL",
		"WEAPON_REVOLVER",
		"WEAPON_REVOLVER_MK2",
		"WEAPON_DOUBLEACTION",
		"WEAPON_RAYPISTOL",
		"WEAPON_CERAMICPISTOL",
		"WEAPON_NAVYREVOLVER",
		"WEAPON_GADGETPISTOL",
		"WEAPON_STUNGUN_MP",
		"WEAPON_MICROSMG",
		"WEAPON_SMG",
		"WEAPON_SMG_MK2",
		"WEAPON_ASSAULTSMG",
		"WEAPON_COMBATPDW",
		"WEAPON_MACHINEPISTOL",
		"WEAPON_MINISMG",
		"WEAPON_MG",
		"WEAPON_COMBATMG",
		"WEAPON_COMBATMG_MK2",
		"WEAPON_GUSENBERG",
		"WEAPON_RAYCARBINE",
		"WEAPON_ASSAULTRIFLE",
		"WEAPON_ASSAULTRIFLE_MK2",
		"WEAPON_CARBINERIFLE",
		"WEAPON_CARBINERIFLE_MK2",
		"WEAPON_ADVANCEDRIFLE",
		"WEAPON_SPECIALCARBINE",
		"WEAPON_SPECIALCARBINE_MK2",
		"WEAPON_BULLPUPRIFLE",
		"WEAPON_BULLPUPRIFLE_MK2",
		"WEAPON_COMPACTRIFLE",
		"WEAPON_MILITARYRIFLE",
		"WEAPON_HEAVYRIFLE",
		"WEAPON_TACTICALRIFLE",
		"WEAPON_PUMPSHOTGUN",
		"WEAPON_PUMPSHOTGUN_MK2",
		"WEAPON_SAWNOFFSHOTGUN",
		"WEAPON_ASSAULTSHOTGUN",
		"WEAPON_BULLPUPSHOTGUN",
		"WEAPON_MUSKET",
		"WEAPON_HEAVYSHOTGUN",
		"WEAPON_DBSHOTGUN",
		"WEAPON_AUTOSHOTGUN",
		"WEAPON_COMBATSHOTGUN",
		"WEAPON_SNIPERRIFLE",
		"WEAPON_HEAVYSNIPER",
		"WEAPON_HEAVYSNIPER_MK2",
		"WEAPON_MARKSMANRIFLE",
		"WEAPON_MARKSMANRIFLE_MK2",
		"WEAPON_PRECISIONRIFLE",
		"WEAPON_GRENADELAUNCHER",
		"WEAPON_RPG",
		"WEAPON_MINIGUN",
		"WEAPON_HOMINGLAUNCHER",
		"WEAPON_COMPACTLAUNCHER",
		"WEAPON_RAYMINIGUN",
		"WEAPON_EMPLAUNCHER",
		"WEAPON_RAILGUNXM3",
		"WEAPON_TECPISTOL",
		"WEAPON_FIREWORK",
		"WEAPON_BATTLERIFLE",
		"WEAPON_SNOWLAUNCHER"
	}
	
	local selected_loc        = 0
	local selected_slot       = 0
	local is_typing           = false
	local weapon_skins        = false
	local gta_plus_blip       = false
	local livery_lock         = false
	local weapon_editor_popup = false
	local filter_text         = ""
	local weapon_name         = ""
	
	local gun_van_loc = 0
	
	local function help_marker(text)
		ImGui.SameLine()
		ImGui.TextDisabled("(?)")
		if ImGui.IsItemHovered() then
			ImGui.BeginTooltip()
			ImGui.PushTextWrapPos(ImGui.GetFontSize() * 35)
			ImGui.TextUnformatted(text)
			ImGui.PopTextWrapPos()
			ImGui.EndTooltip()
		end
	end
	
	local function render_weapon_editor()
		ImGui.SetNextWindowSize(700, 420)
		ImGui.OpenPopup("Weapon Editor")
	
		if ImGui.BeginPopupModal("Weapon Editor", weapon_editor_popup, ImGuiWindowFlags.NoResize | ImGuiWindowFlags.NoCollapse | ImGuiWindowFlags.NoMove | ImGuiWindowFlags.Modal) then
			selected_slot = ImGui.Combo("Select Slot", selected_slot, { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" }, 10)
	
			filter_text = ImGui.InputText("Weapon Name", filter_text, 100)
			if ImGui.IsItemActive() then
				is_typing = true
			else
				is_typing = false
			end
	
			if ImGui.BeginListBox("##weapons", 450, 200) then
				for index, item in ipairs(allowed_weapons) do
					local display_name = weapons.get_weapon_display_name(item)
					if string.find(display_name:lower(), filter_text:lower()) then
						if ImGui.Selectable(display_name) then
							filter_text = display_name
							weapon_name = item
						end
					end
				end
				ImGui.EndListBox()
			end
	
			if ImGui.Button("Set Weapon") then
				local is_weapon_valid = weapons.get_weapon_display_name(weapon_name) ~= ""
	
				if is_weapon_valid then
					tunables.set_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. selected_slot, joaat(weapon_name))
				else
					gui.show_error("Gun Van", "Invalid weapon.")
				end
			end
	
			ImGui.SameLine()
	
			if ImGui.Button("Remove Weapon") then
				tunables.set_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. selected_slot, 0)
			end
	
			if ImGui.Button("Close") then
				selected_slot       = 0
				filter_text         = ""
				weapon_name         = ""
				weapon_editor_popup = false
				ImGui.CloseCurrentPopup()
			end
	
			ImGui.EndPopup()
		end
	end
	
	script.register_looped("Gun Van", function()
		gun_van_loc = globals.get_int(2652572 + 2650)
	
		if is_typing then
			PAD.DISABLE_ALL_CONTROL_ACTIONS(0)
		end
	
		if weapon_skins then
			tunables.set_bool(1490225691, false)
		end
		
		if livery_lock then
			local value = locals.get_int("gunclub_shop", 142 + 747) | (1 << 8)
			locals.set_int("gunclub_shop", 142 + 747, value)
		end
	
		if gta_plus_blip then
			local gun_van_sprite = HUD.GET_FIRST_BLIP_INFO_ID(844)
	
			tunables.set_float(15999531, 10000.0)
			if HUD.DOES_BLIP_EXIST(gun_van_sprite) then
				HUD.SET_BLIP_AS_SHORT_RANGE(gun_van_sprite, false)
			end
		end
	end)
	
	gun_van_tab:add_imgui(function()
		if weapon_editor_popup then
			render_weapon_editor()
		end
	
		ImGui.Text("Current Location: " .. (gun_van_loc ~= -1 and gun_van_loc + 1 or "N/A"))
	
		ImGui.SetNextItemWidth(265)
		selected_loc = ImGui.Combo("##selected_loc", selected_loc, van_locations, 30)
	
		ImGui.SameLine()
	
		if ImGui.Button("Set Location") then
			globals.set_int(2652572 + 2650, selected_loc)
		end
	
		ImGui.SameLine()
	
		if ImGui.Button("Teleport") then
			script.run_in_fiber(function()
				local coords = van_coordinates[selected_loc + 1]
				PED.SET_PED_COORDS_KEEP_VEHICLE(self.get_ped(), coords.x, coords.y, coords.z)
			end)
		end
	
		weapon_skins, on_tick = ImGui.Checkbox("Weapon Skins", weapon_skins)
		help_marker("Enables the special liveries for Knife and Baseball Bat.")
	
		if on_tick then
			if not weapon_skins then
				tunables.set_bool(1490225691, true)
			end
		end
		
		livery_lock, on_tick = ImGui.Checkbox("Remove Livery Lock", livery_lock)
		help_marker("Removes the hard-coded lock on special weapon liveries, such as Season's Greetings, Employee of the Month etc.")
		
		if on_tick then
			if not livery_lock then
				local value = locals.get_int("gunclub_shop", 142 + 747) & ~(1 << 8)
				locals.set_int("gunclub_shop", 142 + 747, value)
			end
		end
	
		gta_plus_blip, on_tick = ImGui.Checkbox("Blip Always Visible", gta_plus_blip)
		help_marker("The Gun Van will always be blipped on the map, just like in GTA+.")
	
		if on_tick then
			if not gta_plus_blip then
				tunables.set_float(15999531, 500.0)
			end
		end
	
		ImGui.Separator()
	
		if ImGui.TreeNode("Weapons") then
			for i = 0, 9 do
				local weapon_hash = tunables.get_int("XM22_GUN_VAN_SLOT_WEAPON_TYPE_" .. i)
	
				if weapon_hash ~= 0 then
					local weapon_name     = weapons.get_weapon_display_name(weapon_hash)
					local weapon_discount = math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_WEAPON_DISCOUNT_" .. i) * 100.0)
	
					ImGui.Text(i + 1 .. " - " .. weapon_name .. " (" .. weapon_discount .. "%)")
				end
			end
	
			if ImGui.Button("Edit Weapons") then
				weapon_editor_popup = true
			end
	
			ImGui.Separator()
			ImGui.TreePop()
		end
	
		if ImGui.TreeNode("Throwables") then
			for i = 0, 2 do
				local throwable_hash = tunables.get_int("XM22_GUN_VAN_SLOT_THROWABLE_TYPE_" .. i)
	
				if throwable_hash ~= 0 then
					local throwable_name     = weapons.get_weapon_display_name(throwable_hash)
					local throwable_discount = math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_THROWABLE_DISCOUNT_" .. i) * 100.0)
	
					ImGui.Text(i + 1 .. " - " .. throwable_name .. " (" .. throwable_discount .. "%)")
				end
			end
	
			ImGui.Separator()
			ImGui.TreePop()
		end
	
		if ImGui.TreeNode("Body Armor") then
			local armour_discounts = {}
	
			for i = 0, 4 do
				armour_discounts[i + 1] = math.floor(tunables.get_float("XM22_GUN_VAN_SLOT_ARMOUR_DISCOUNT_" .. i) * 100.0)
			end
	
			ImGui.Text("Super Light Armor (" .. armour_discounts[1] .. "%)")
			ImGui.Text("Light Armor (" .. armour_discounts[2] .. "%)")
			ImGui.Text("Standard Armor (" .. armour_discounts[3] .. "%)")
			ImGui.Text("Heavy Armor (" .. armour_discounts[4] .. "%)")
			ImGui.Text("Super Heavy Armor (" .. armour_discounts[5] .. "%)")
	
			ImGui.TreePop()
		end
	end)


-- Credits --
local Credits = Silent:add_tab("Credits")
Credits:add_text("Developer: SilentSalo", null)
Credits:add_text("Helpers: gaymer, Big Smoke, Slon")
Credits:add_text("Helpers: CasinoPacino, Bababoiiiii")
Credits:add_text("Helpers: Amnesia, jschaotic, Killa`B")
Credits:add_text("Helpers: Mr. Robot, L7NEG, LUKY6464")
Credits:add_text("Helpers: ShinyWasabi, gir489returns")
Credits:add_text("Helpers: Unkn0wnXit, Zeiger, Pewpew")
Credits:add_text("Helpers: ObratniyVasya, CheatChris")
Credits:add_text("Helpers: Rostal")
Credits:add_text("Helpers: VodisAreThere65715")
Credits:add_text("Helpers: Yimura, L7Neg, Loled69, Alestarov, gir489returns, TheKuter, RazorGamerX, USBMenus")
