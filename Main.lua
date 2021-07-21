LUAGUI_NAME = "KHPCStatInventoryModifier"
LUAGUI_AUTH = "mattfabius"
LUAGUI_DESC = "A mod for Kingdom Hearts Final Mix (PC) that allows you to easily edit your stats, inventory, abilities, and more"

local statAddr = {
    level = 44323790,
    currentHP = 44323791,
    maxHP = 44323792,
    currentMP = 44323793,
    maxMP = 44323794,
    ap = 44323795,
    strength = 44323796,
    defense = 44323797,
    equipmentSlots = 44323814,
    itemSlots = 44323823,
    magicUnlocked = 44323902,
    munny = 44414950
}

local itemAddr = {
    potion = 44324964,
    hiPotion = 44324965,
    ether = 44324966,
    elixir = 44324967,
    megaPotion = 44324969,
    megaEther = 44324970,
    megalixir = 44324971,
    furyStone = 44324972,
    powerStone = 44324973,
    energyStone = 44324974,
    blazingStone = 44324975,
    frostStone = 44324976,
    lightningStone = 44324977,
    dazzlingStone = 44324978,
    stormyStone = 44324979,
    protectChain = 44324980,
    proteraChain = 44324981,
    protegaChain = 44324982,
    fireRing = 44324983,
    firaRing = 44324984,
    firagaRing = 44324985,
    blizzardRing = 44324986,
    blizzaraRing = 44324987,
    blizzagaRing = 44324988,
    thunderRing = 44324989,
    thundaraRing = 44324990,
    thundagaRing = 44324991,
    abilityStud = 44324992,
    guardEarring = 44324993,
    masterEarring = 44324994,
    chaosRing = 44324995,
    darkRing = 44324996,
    elementRing = 44324997,
    threeStars = 44324998,
    powerChain = 44324999,
    golemChain = 44325000,
    titanChain = 44325001,
    energyBangle = 44325002,
    angelBangle = 44325003,
    gaiaBangle = 44325004,
    magicArmlet = 44325005,
    runeArmlet = 44325006,
    atlasArmlet = 44325007,
    heartguard = 44325008,
    ribbon = 44325009,
    crystalCrown = 44325010,
    braveWarrior = 44325011,
    ifritsHorn = 44325012,
    infernoBand = 44325013,
    whiteFang = 44325014,
    rayOfLight = 44325015,
    holyCirclet = 44325016,
    ravensClaw = 44325017,
    omegaArts = 44325018,
    expEarring = 44325019,
    expRing = 44325021,
    expBracelet = 44325022,
    expNecklace = 44325023,
    firagunBand = 44325024,
    blizzagunBand = 44325025,
    thundagunBand = 44325026,
    ifritBelt = 44325027,
    shivaBelt = 44325028,
    ramuhBelt = 44325029,
    moogleBadge = 44325030,
    cosmicArts = 44325031,
    royalCrown = 44325032,
    primeCap = 44325033,
    obsidianRing = 44325034,
    tent = 44325105,
    campingSet = 44325106,
    cottage = 44325107,
    powerUp = 44325115,
    defenseUp = 44325116,
    apUp = 44325117,
    serenityPower = 44325118,
    darkMatter = 44325119,
    mythrilStone = 44325120,
    fireArts = 44325121,
    blizzardArts = 44325122,
    thunderArts = 44325123,
    cureArts = 44325124,
    gravityArts = 44325125,
    stopArts = 44325126,
    aeroArts = 44325127,
    shiitakeRank = 44325128,
    matsutakeRank = 44325129,
    mysteryMold = 44325130,
    log = 44325155,
    cloth = 44325156,
    rope = 44325157,
    seagullEgg = 44325158,
    fish = 44325159,
    mushroom = 44325160,
    coconut = 44325161,
    drinkingWater = 44325162,
    watergleam = 44325169,
    naturespark = 44325170,
    fireglow = 44325171,
    earthshine = 44325172,
    postcard = 44325174,
    prettyStone = 44325194,
    lucidShard = 44325196,
    lucidGem = 44325197,
    lucidCrystal = 44325198,
    spiritShard = 44325199,
    spiritGem = 44325200,
    powerShard = 44325201,
    powerGem = 44325202,
    powerCrystal = 44325203,
    blazeShard = 44325204,
    blazeGem = 44325205,
    frostShard = 44325206,
    frostGem = 44325207,
    thunderShard = 44325208,
    thunderGem = 44325209,
    shinyCrystal = 44325210,
    brightShard = 44325211,
    brightGem = 44325212,
    brightCrystal = 44325213,
    mysteryGoo = 44325214,
    gale = 44325215,
    mythrilShard = 44325216,
    mythril = 44325217,
    orichalcum = 44325218
}

--Not currently applying key items since getting them early can cause softlocks in some cases
local keyItemAddr = {
    ansemsReport11 = 44325112,
    ansemsReport12 = 44325113,
    ansemsReport13 = 44325114,
    ansemsReport1 = 44325131,
    ansemsReport2 = 44325132,
    ansemsReport3 = 44325133,
    ansemsReport4 = 44325134,
    ansemsReport5 = 44325135,
    ansemsReport6 = 44325136,
    ansemsReport7 = 44325137,
    ansemsReport8 = 44325138,
    ansemsReport9 = 44325139,
    ansemsReport10 = 44325140,
    khamaVol8 = 44325141,
    saleggVol6 = 44325142,
    azalVol3 = 44325143,
    mavaVol3 = 44325144,
    mavaVol6 = 44325145,
    theonVol6 = 44325146,
    naharaVol5 = 44325147,
    hafetVol4 = 44325148,
    emptyBottle = 44325149,
    oldBook = 44325150,
    emblemPiece1 = 44325151,
    emblemPiece2 = 44325152,
    emblemPiece3 = 44325153,
    emblemPiece4 = 44325154,
    naviGPiece1 = 44325163,
    naviGPiece2 = 44325164,
    naviGummi1 = 44325165,
    naviGPiece3 = 44325166,
    naviGPiece4 = 44325167,
    naviGummi2 = 44325168,
    crystalTrident = 44325173,
    tornPage1 = 44325175,
    tornPage2 = 44325176,
    tornPage3 = 44325177,
    tornPage4 = 44325178,
    tornPage5 = 44325179,
    slide1 = 44325180,
    slide2 = 44325181,
    slide3 = 44325182,
    slide4 = 44325183,
    slide5 = 44325184,
    slide6 = 44325185,
    footprints = 44325186,
    clawMarks = 44325187,
    stench = 44325188,
    antenna = 44325189,
    forgetMeNot = 44325190,
    jackInTheBox = 44325191,
    entryPass = 44325192,
    heroLicense = 44325193
}

local weaponAddr = {
    kingdomKey = 44325044,
    dreamSword = 44325045,
    dreamShield = 44325046,
    dreamRod = 44325047,
    woodenSword = 44325048,
    jungleKing = 44325049,
    threeWishes = 44325050,
    fairyHarp = 44325051,
    pumpkinhead = 44325052,
    crabclaw = 44325053,
    divineRose = 44325054,
    spellbinder = 44325055,
    olympia = 44325056,
    lionheart = 44325057,
    metalChocobo = 44325058,
    oathkeeper = 44325059,
    oblivion = 44325060,
    ladyLuck = 44325061,
    wishingStar = 44325062,
    ultimaWeapon = 44325063,
    diamondDust = 44325064,
    oneWingedAngel = 44325065,
    magesStaff = 44325066,
    morningStar = 44325067,
    shootingStar = 44325068,
    magusStaff = 44325069,
    wisdomStaff = 44325070,
    warhammer = 44325071,
    silverMallet = 44325072,
    grandMallet = 44325073,
    lordFortune = 44325074,
    violetta = 44325075,
    donaldDreamRod = 44325076,
    saveTheQueen = 44325077,
    wizardsRelic = 44325078,
    meteorStrike = 44325079,
    fantasista = 44325080,
    knightsShield = 44325082,
    mythrilShield = 44325083,
    onyxShield = 44325084,
    stoutShield = 44325085,
    golemShield = 44325086,
    adamantShield = 44325087,
    smasher = 44325088,
    gigasFist = 44325089,
    genjiShield = 44325090,
    hercsShield = 44325091,
    goofyDreamShield = 44325092,
    saveTheKing = 44325093,
    defender = 44325094,
    mightyShield = 44325095,
    sevenElements = 44325096
}

local abilityAddr = {
    sharedAbilitySlotStart = 44325219,
    sharedAbilitySlotLast = 44325266,
    soraAbilitySlotStart = 44323854,
    soraAbilitySlotLast = 44323901
}

-- Built-in LuaBackend function called on startup
function _OnInit()
    if GAME_ID == 0xAF71841E and ENGINE_TYPE == "BACKEND" then
		ConsolePrint("Game detected")
        
        local settings = ReadInputFile()
        PrintInputSettings(settings)
        ApplySettings(settings)
	else
        ConsolePrint("Game not detected")
    end  
end

function ReadInputFile()
    local f = io.open("scripts/kh1gl/input.txt")
	local settings = {}
	while true do
		local line = f:read("*l")
		if not line then
			break
        end

        if string.sub(line, 1, 1) == "#" then --comments
            goto continue
		else
            local _, _, key, operator, value = string.find(line, "([%a]+)%s*([<>=])%s*([%a%d]+)")
            if key then
                settings[key] = {operator = operator, value = value}
            end
		end
        ::continue::
	end
	f:close()
	return settings
end

function ApplySettings(settings)
    ApplyStatNumberSetting(settings, "level")
    ApplyStatNumberSetting(settings, "hp", 99, "maxHP", "currentHP")
    ApplyStatNumberSetting(settings, "mp", 99, "maxMP", "currentMP")
    ApplyStatNumberSetting(settings, "ap")
    ApplyStatNumberSetting(settings, "strength")
    ApplyStatNumberSetting(settings, "defense")
    ApplyStatNumberSetting(settings, "equipmentSlots", 8)
    ApplyStatNumberSetting(settings, "itemSlots", 8)

    if settings.magicUnlocked and settings.magicUnlocked.value == "true" then
        WriteByte(statAddr.magicUnlocked, 255)
        ConsolePrint("All magic unlocked")
    end

    if settings.allItems and settings.allItems.value == "true" then
        GiveAll (itemAddr, 99)
        ConsolePrint("Gave all items")
    end

    if settings.allWeapons and settings.allWeapons.value == "true" then
        GiveAll (weaponAddr, 1)
        ConsolePrint("Gave all weapons")
    end

    if settings.allAbilities and settings.allAbilities.value == "true" then
        ApplyAllAbilities ()
        ConsolePrint("Applied all abilities")
    end

    if settings.munny then
        local munny = tonumber(settings.munny.value)
        if munny > 99999 then
            munny = 99999
        elseif munny < 0 then
            munny = 0
        end

        WriteShort(statAddr.munny, munny)
        ConsolePrint("Changed munny to " .. munny)
    end
end

function ApplyStatNumberSetting(settings, key, max, statKey1, statKey2)
    max = max or 99
    statKey1 = statKey1 or key
    if settings[key] then
        local value = tonumber(settings[key].value)
        if value > max then
            value = max
        elseif value < 0 then
            value = 0
        end
        WriteByte(statAddr[statKey1], value)
        ConsolePrint("Changed " .. statKey1 .. " to " .. value)
        if statKey2 then
            WriteByte(statAddr[statKey2], value)
            ConsolePrint("Changed " .. statKey2 .. " to " .. value)
        end
    end
end

function GiveAll (addresses, quantity)
    for key, address in pairs(addresses) do
        WriteByte(address, quantity)
    end
end

function ApplyAllAbilities ()
    WriteByte(abilityAddr.sharedAbilitySlotStart, 1)
    WriteByte(abilityAddr.sharedAbilitySlotStart+1, 2)
    WriteByte(abilityAddr.sharedAbilitySlotStart+2, 3)
    WriteByte(abilityAddr.sharedAbilitySlotStart+3, 4)
    ApplySoraAbilities ()
end

function ApplySoraAbilities ()
    for i=0,23 do
        WriteByte(abilityAddr.soraAbilitySlotStart+i,133+i)
    end

    for i=0,9 do
        WriteByte(abilityAddr.soraAbilitySlotStart+24+i,181+i)
    end
    WriteByte(abilityAddr.soraAbilitySlotStart+34,192)
    WriteByte(abilityAddr.soraAbilitySlotStart+35,193)
end

function PrintInputSettings(settings)
    local msg = "\nSettings parsed as:"
    for key, value in pairs(settings) do
        msg = msg .. "\n" .. key .. value.operator .. value.value
    end
    ConsolePrint(msg)
end