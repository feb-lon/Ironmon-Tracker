MoveData = {}

MoveData.Status = {
	BURN = "burn",
	FREEZE = "freeze",
	PARALYSIS = "paralysis",
	SLEEP = "sleep",
	POISON = "poison",
	TOXIC = "toxic",
	INFATUATION = "infatuation",
	CONFUSION = "confusion",
	FLINCH = "flinch",
}

MoveData.Stats = {
	ATK = "Attack",
	DEF = "Defense",
	SPA = "Special Attack",
	SPD = "Special Defense",
	SPE = "Speed",
	ACC = "Accuracy",
	EVA = "Evasion",
	CRT = "Critical Hit Chance",
}

MoveData.Values = {
	GuillotineId = 12,
	HornDrillId = 32,
	LowKickId = 67,
	FissureId = 90,
	FlailId = 175,
	ReversalId = 179,
	ReturnId = 216,
	FrustrationId = 218,
	HiddenPowerId = 237,
	RolePlayId = 272,
	EruptionId = 284,
	SkillSwapId = 285,
	WeatherBallId = 311,
	WaterSpoutId = 323,
	SheerColdId = 329,

	-- The below are used by the BattleDetailsScreen
	PayDayId = 6,
	DisableId = 50,
	MistId = 54,
	LeechSeedId = 73,
	RageId = 99,
	MinimizeId = 107,
	DefenseCurlId = 111,
	LightScreenId = 113,
	ReflectId = 115,
	FocusEnergyId = 116,
	BideId = 117,
	TransformId = 144,
	SubstituteId = 164,
	TripleKickId = 167,
	NightmareId = 171,
	CurseId = 174,
	ProtectId = 182,
	SpikesId = 191,
	ForesightId = 193,
	DestinyBondId = 194,
	PerishSongId = 195,
	LockOnId = 199,
	RolloutId = 205,
	FuryCutterId = 210,
	AttactId = 213,
	SafeguardId = 219,
	EncoreId = 227,
	UproarId = 253,
	StockpileId = 254,
	TormentId = 259,
	ChargeId = 268,
	TauntId = 269,
	WishId = 273,
	IngrainId = 275,
	YawnId = 281,
	KnockOffId = 282,
	ImprisonId = 286,
	GrudgeId = 288,
	MudSportId = 300,
	WaterSportId = 346,
}

MoveData.IsRand = {
	moveType = false,
	movePower = false,
	moveAccuracy = false,
	movePP = false,
	moveCategory = false,
}

-- Move categories identify the type of attack a move is: physical, special, or status
MoveData.Categories = {
	NONE = "None",
	PHYSICAL = "Physical",
	SPECIAL = "Special",
	STATUS = "Status",
}

--List of pokemon types used to cycle through types when the Hidden Power button is clicked
MoveData.HiddenPowerTypeList = {
	PokemonData.Types.UNKNOWN,
	PokemonData.Types.FIGHTING,
	PokemonData.Types.FLYING,
	PokemonData.Types.POISON,
	PokemonData.Types.GROUND,
	PokemonData.Types.ROCK,
	PokemonData.Types.BUG,
	PokemonData.Types.GHOST,
	PokemonData.Types.STEEL,
	PokemonData.Types.FIRE,
	PokemonData.Types.WATER,
	PokemonData.Types.GRASS,
	PokemonData.Types.ELECTRIC,
	PokemonData.Types.PSYCHIC,
	PokemonData.Types.ICE,
	PokemonData.Types.DRAGON,
	PokemonData.Types.DARK,
}
MoveData.HIDDEN_POWER_NOT_SET = MoveData.HiddenPowerTypeList[1]

--Mapping of move types to move categories for gens 1-3
MoveData.TypeToCategory = {
	[PokemonData.Types.NORMAL]   = MoveData.Categories.PHYSICAL,
	[PokemonData.Types.FIGHTING] = MoveData.Categories.PHYSICAL,
	[PokemonData.Types.FLYING]   = MoveData.Categories.PHYSICAL,
	[PokemonData.Types.POISON]   = MoveData.Categories.PHYSICAL,
	[PokemonData.Types.GROUND]   = MoveData.Categories.PHYSICAL,
	[PokemonData.Types.ROCK]     = MoveData.Categories.PHYSICAL,
	[PokemonData.Types.BUG]      = MoveData.Categories.PHYSICAL,
	[PokemonData.Types.GHOST]    = MoveData.Categories.PHYSICAL,
	[PokemonData.Types.STEEL]    = MoveData.Categories.PHYSICAL,
	[PokemonData.Types.FIRE]     = MoveData.Categories.SPECIAL,
	[PokemonData.Types.WATER]    = MoveData.Categories.SPECIAL,
	[PokemonData.Types.GRASS]    = MoveData.Categories.SPECIAL,
	[PokemonData.Types.ELECTRIC] = MoveData.Categories.SPECIAL,
	[PokemonData.Types.PSYCHIC]  = MoveData.Categories.SPECIAL,
	[PokemonData.Types.ICE]      = MoveData.Categories.SPECIAL,
	[PokemonData.Types.DRAGON]   = MoveData.Categories.SPECIAL,
	[PokemonData.Types.DARK]     = MoveData.Categories.SPECIAL,
	[PokemonData.Types.FAIRY]    = MoveData.Categories.SPECIAL, -- Adding in just for Nat. Dex. rom hack support convenience
	[PokemonData.Types.UNKNOWN]  = MoveData.Categories.NONE,
}

MoveData.TypeToEffectiveness = {
	normal = { rock = 0.5, ghost = 0, steel = 0.5 },
	fire = { fire = 0.5, water = 0.5, grass = 2, ice = 2, bug = 2, rock = 0.5, dragon = 0.5, steel = 2 },
	water = { fire = 2, water = 0.5, grass = 0.5, ground = 2, rock = 2, dragon = 0.5 },
	grass = { fire = 0.5, water = 2, grass = 0.5, poison = 0.5, ground = 2, flying = 0.5, bug = 0.5, rock = 2, dragon = 0.5, steel = 0.5 },
	electric = { water = 2, grass = 0.5, electric = 0.5, ground = 0, flying = 2, dragon = 0.5 },
	ice = { fire = 0.5, water = 0.5, grass = 2, ice = 0.5, ground = 2, flying = 2, dragon = 2, steel = 0.5 },
	fighting = { normal = 2, ice = 2, poison = 0.5, flying = 0.5, psychic = 0.5, bug = 0.5, rock = 2, ghost = 0, dark = 2, steel = 2 },
	poison = { grass = 2, poison = 0.5, ground = 0.5, rock = 0.5, ghost = 0.5, steel = 0 },
	ground = { fire = 2, grass = 0.5, electric = 2, poison = 2, flying = 0, bug = 0.5, rock = 2, steel = 2 },
	flying = { grass = 2, electric = 0.5, fighting = 2, bug = 2, rock = 0.5, steel = 0.5 },
	psychic = { fighting = 2, poison = 2, psychic = 0.5, dark = 0, steel = 0.5 },
	bug = { fire = 0.5, grass = 2, fighting = 0.5, poison = 0.5, flying = 0.5, psychic = 2, ghost = 0.5, dark = 2, steel = 0.5 },
	rock = { fire = 2, ice = 2, fighting = 0.5, ground = 0.5, flying = 2, bug = 2, steel = 0.5 },
	ghost = { normal = 0, psychic = 2, ghost = 2, dark = 0.5, steel = 0.5 },
	dragon = { dragon = 2, steel = 0.5 },
	dark = { fighting = 0.5, psychic = 2, ghost = 2, dark = 0.5, steel = 0.5 },
	steel = { fire = 0.5, water = 0.5, ice = 2, rock = 2, steel = 0.5, electric = 0.5 },
	fairy = { fighting = 2, dark = 2, dragon = 2, poison = 0.5, steel = 0.5, fire = 0.5 }, -- Adding in just for Nat. Dex. rom hack support convenience
}

---Individual formulas for calculating any changes to a move based on contextual information, such as being in battle; key=moveid, val=func
---@type table<number, function>
MoveData.MoveValueAdjustmentFuncs = {
	[MoveData.Values.WeatherBallId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.inActiveBattle() then return end
		move.type, move.power = Utils.calculateWeatherBall(move.type, move.power)
		move.category = MoveData.getCategory(move.id, move.type)
	end,
	[MoveData.Values.LowKickId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.inActiveBattle() then return end
		local pokemonInternal = PokemonData.Pokemon[targetPokemon.pokemonID or false] or PokemonData.BlankPokemon
		local targetWeight = targetPokemon.weight or pokemonInternal.weight or 0
		move.power = Utils.calculateWeightBasedDamage(move.power, targetWeight)
	end,
	[MoveData.Values.FlailId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.isViewingOwn then return end -- Only reveal HP for player's pokemon, not enemy
		local maxHP = math.max(sourcePokemon.stats and sourcePokemon.stats.hp or 1, 1) -- minimum of 1
		move.power = Utils.calculateLowHPBasedDamage(move.power, sourcePokemon.curHP or 0, maxHP)
	end,
	[MoveData.Values.ReversalId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.isViewingOwn then return end -- Only reveal HP for player's pokemon, not enemy
		local maxHP = math.max(sourcePokemon.stats and sourcePokemon.stats.hp or 1, 1) -- minimum of 1
		move.power = Utils.calculateLowHPBasedDamage(move.power, sourcePokemon.curHP or 0, maxHP)
	end,
	[MoveData.Values.EruptionId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.isViewingOwn then return end -- Only reveal HP for player's pokemon, not enemy
		local maxHP = math.max(sourcePokemon.stats and sourcePokemon.stats.hp or 1, 1) -- minimum of 1
		move.power = Utils.calculateHighHPBasedDamage(move.power, sourcePokemon.curHP or 0, maxHP)
	end,
	[MoveData.Values.WaterSpoutId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.isViewingOwn then return end -- Only reveal HP for player's pokemon, not enemy
		local maxHP = math.max(sourcePokemon.stats and sourcePokemon.stats.hp or 1, 1) -- minimum of 1
		move.power = Utils.calculateHighHPBasedDamage(move.power, sourcePokemon.curHP or 0, maxHP)
	end,
	[MoveData.Values.ReturnId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.isViewingOwn then return end -- Only reveal Friendship for player's pokemon, not enemy
		move.power = Utils.calculateFriendshipBasedDamage(move.power, sourcePokemon.friendship or 0)
	end,
	[MoveData.Values.FrustrationId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.isViewingOwn then return end -- Only reveal Friendship for player's pokemon, not enemy
		move.power = Utils.calculateFriendshipBasedDamage(move.power, sourcePokemon.friendship or 0)
	end,
	[MoveData.Values.GuillotineId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.inActiveBattle() then return end
		local levelDiff = (sourcePokemon.level or 0) - (targetPokemon.level or 0)
		if levelDiff > 0 then
			local accAsNum = tonumber(move.accuracy or "") or 30 -- 30 is default OHKO accuracy
			move.accuracy = tostring(math.min(accAsNum + levelDiff, 100)) -- max of 100
		elseif levelDiff < 0 then
			move.accuracy = "X " -- Ineffective against higher level pokemon
		end
	end,
	[MoveData.Values.HornDrillId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.inActiveBattle() then return end
		local levelDiff = (sourcePokemon.level or 0) - (targetPokemon.level or 0)
		if levelDiff > 0 then
			local accAsNum = tonumber(move.accuracy or "") or 30 -- 30 is default OHKO accuracy
			move.accuracy = tostring(math.min(accAsNum + levelDiff, 100)) -- max of 100
		elseif levelDiff < 0 then
			move.accuracy = "X " -- Ineffective against higher level pokemon
		end
	end,
	[MoveData.Values.FissureId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.inActiveBattle() then return end
		local levelDiff = (sourcePokemon.level or 0) - (targetPokemon.level or 0)
		if levelDiff > 0 then
			local accAsNum = tonumber(move.accuracy or "") or 30 -- 30 is default OHKO accuracy
			move.accuracy = tostring(math.min(accAsNum + levelDiff, 100)) -- max of 100
		elseif levelDiff < 0 then
			move.accuracy = "X " -- Ineffective against higher level pokemon
		end
	end,
	[MoveData.Values.SheerColdId] = function(move, sourcePokemon, targetPokemon)
		if not Battle.inActiveBattle() then return end
		local levelDiff = (sourcePokemon.level or 0) - (targetPokemon.level or 0)
		if levelDiff > 0 then
			local accAsNum = tonumber(move.accuracy or "") or 30 -- 30 is default OHKO accuracy
			move.accuracy = tostring(math.min(accAsNum + levelDiff, 100)) -- max of 100
		elseif levelDiff < 0 then
			move.accuracy = "X " -- Ineffective against higher level pokemon
		end
	end,
}

-- Is true when a Status move fails/doesn't work against a checked move type
MoveData.StatusMovesWillFail = {
	["73"] = { [PokemonData.Types.GRASS] = true, }, -- Leech Seed
	["77"] = { [PokemonData.Types.STEEL] = true, [PokemonData.Types.POISON] = true, }, -- PoisonPowder
	["86"] = { [PokemonData.Types.GROUND] = true, }, -- Thunder Wave
	["92"] = { [PokemonData.Types.STEEL] = true, [PokemonData.Types.POISON] = true, }, -- Toxic
	["137"] = { [PokemonData.Types.GHOST] = true, }, -- Glare
	["139"] = { [PokemonData.Types.STEEL] = true, [PokemonData.Types.POISON] = true, }, -- Poison Gas
	["261"] = { [PokemonData.Types.FIRE] = true, }, -- Will-O-Wisp
}

MoveData.IsTypelessMove = { -- Moves which inflict typeless damage (unaffected by STAB)
	["248"] = true, -- Future Sight
	["251"] = true, -- Beat Up
	["353"] = true, -- Doom Desire
}

MoveData.IsOHKOMove = {
	[ "12"] = true, -- Guillotine
	[ "32"] = true, -- Horn Drill
	[ "90"] = true, -- Fissure
	["329"] = true, -- Sheer Cold
}

MoveData.IsRecoilMove = {
	[ "36"] = true, -- Take Down
	[ "38"] = true, -- Double-Edge
	[ "66"] = true, -- Submission
	["344"] = true, -- Volt Tackle
}

MoveData.StatusInflicted = {
	["7"] = { [MoveData.Status.BURN] = 0.1, }, -- Fire Punch
	["8"] = { [MoveData.Status.FREEZE] = 0.1, }, -- Ice Punch
	["9"] = { [MoveData.Status.PARALYSIS] = 0.1, }, -- Thunder Punch
	["23"] = { [MoveData.Status.FLINCH] = 0.3, }, -- Stomp
	["27"] = { [MoveData.Status.FLINCH] = 0.3, }, -- Rolling Kick
	["29"] = { [MoveData.Status.FLINCH] = 0.3, }, -- Headbutt
	["34"] = { [MoveData.Status.PARALYSIS] = 0.3, }, -- Body Slam
	["40"] = { [MoveData.Status.POISON] = 0.3, }, -- Poison Sting
	["41"] = { [MoveData.Status.POISON] = 0.2, }, -- Twineedle
	["44"] = { [MoveData.Status.FLINCH] = 0.2, }, -- Bite
	["47"] = { [MoveData.Status.SLEEP] = 1, }, -- Sing
	["48"] = { [MoveData.Status.CONFUSION] = 1, }, -- Supersonic
	["52"] = { [MoveData.Status.BURN] = 0.1, }, -- Ember
	["53"] = { [MoveData.Status.BURN] = 0.1, }, -- Flamethrower
	["58"] = { [MoveData.Status.FREEZE] = 0.1, }, -- Ice Beam
	["59"] = { [MoveData.Status.FREEZE] = 0.1, }, -- Blizzard
	["60"] = { [MoveData.Status.CONFUSION] = 0.1, }, -- Psybeam
	["77"] = { [MoveData.Status.POISON] = 1, }, -- Poison Powder
	["78"] = { [MoveData.Status.PARALYSIS] = 1, }, -- Stun Spore
	["79"] = { [MoveData.Status.SLEEP] = 1, }, -- Sleep Powder
	["84"] = { [MoveData.Status.PARALYSIS] = 0.1, }, -- Thunder Shock
	["85"] = { [MoveData.Status.PARALYSIS] = 0.1, }, -- Thunderbolt
	["86"] = { [MoveData.Status.PARALYSIS] = 1, }, -- Thunderwave
	["87"] = { [MoveData.Status.PARALYSIS] = 0.3, }, -- Thunder
	["92"] = { [MoveData.Status.TOXIC] = 1, }, -- Toxic
	["93"] = { [MoveData.Status.CONFUSION] = 0.1, }, -- Confusion
	["95"] = { [MoveData.Status.SLEEP] = 1, }, -- Hypnosis
	["109"] = { [MoveData.Status.CONFUSION] = 1, }, -- Confuse Ray
	["122"] = { [MoveData.Status.PARALYSIS] = 0.3, }, -- Lick
	["123"] = { [MoveData.Status.POISON] = 0.4, }, -- Smog
	["124"] = { [MoveData.Status.POISON] = 0.3, }, -- Sludge
	["125"] = { [MoveData.Status.FLINCH] = 0.1, }, -- Bone Club
	["126"] = { [MoveData.Status.BURN] = 0.1, }, -- Fire Blast
	["137"] = { [MoveData.Status.PARALYSIS] = 1, }, -- Glare
	["139"] = { [MoveData.Status.POISON] = 1, }, -- Poison Gas
	["142"] = { [MoveData.Status.SLEEP] = 1, }, -- Lovely Kiss
	["143"] = { [MoveData.Status.FLINCH] = 0.3, }, -- Sky Attack
	["146"] = { [MoveData.Status.CONFUSION] = 0.2, }, -- Dizzy Punch
	["147"] = { [MoveData.Status.SLEEP] = 1, }, -- Spore
	["157"] = { [MoveData.Status.FLINCH] = 0.3, }, -- Rock Slide
	["158"] = { [MoveData.Status.FLINCH] = 0.1, }, -- Hyper Fang
	["161"] = { [MoveData.Status.PARALYSIS] = 1/15, [MoveData.Status.BURN] = 1/15, [MoveData.Status.FREEZE] = 1/15, }, -- Tri Attack
	["172"] = { [MoveData.Status.BURN] = 0.1, }, -- FFlame Wheel
	["173"] = { [MoveData.Status.FLINCH] = 0.3, }, -- Snore
	["181"] = { [MoveData.Status.FREEZE] = 0.1, }, -- Powder Snow
	["186"] = { [MoveData.Status.CONFUSION] = 1, }, -- Sweet Kiss
	["188"] = { [MoveData.Status.POISON] = 0.3, }, -- Sludge Bomb
	["191"] = { [MoveData.Status.PARALYSIS] = 1, }, -- Zap Cannon
	["207"] = { [MoveData.Status.CONFUSION] = 1, }, -- Swagger
	["209"] = { [MoveData.Status.PARALYSIS] = 0.3, }, -- Spark
	["221"] = { [MoveData.Status.BURN] = 0.5, }, -- Sacred Fire
	["223"] = { [MoveData.Status.CONFUSION] = 1, }, -- Dynamic Punch
	["225"] = { [MoveData.Status.PARALYSIS] = 0.3, }, -- Dragon Breath
	["239"] = { [MoveData.Status.FLINCH] = 0.2, }, -- Twister
	["252"] = { [MoveData.Status.FLINCH] = 1, }, -- Fake Out
	["257"] = { [MoveData.Status.BURN] = 0.1, }, -- Heat Wave
	["260"] = { [MoveData.Status.CONFUSION] = 1, }, -- Flatter
	["261"] = { [MoveData.Status.BURN] = 1, }, -- Will-O-Wisp
	["281"] = { [MoveData.Status.SLEEP] = 1, }, -- Yawn
	["298"] = { [MoveData.Status.CONFUSION] = 1, }, -- Teeter Dance
	["299"] = { [MoveData.Status.BURN] = 0.1, }, -- Blaze Kick
	["302"] = { [MoveData.Status.FLINCH] = 0.3, }, -- Needle Arm
	["305"] = { [MoveData.Status.TOXIC] = 0.3, }, -- Poison Fang
	["310"] = { [MoveData.Status.FLINCH] = 0.3, }, -- Astonish
	["320"] = { [MoveData.Status.SLEEP] = 1, }, -- Grass Whistle
	["324"] = { [MoveData.Status.CONFUSION] = 0.1, }, -- Signal Beam
	["326"] = { [MoveData.Status.FLINCH] = 0.1, }, -- Extrasensory
	["340"] = { [MoveData.Status.PARALYSIS] = 0.3, }, -- Bounce
	["342"] = { [MoveData.Status.POISON] = 0.1, }, -- Poison Tail
	["352"] = { [MoveData.Status.CONFUSION] = 0.2, }, -- Signal Beam
}

MoveData.ModifiesEnemyStat = {
	["28"] = {stats = {MoveData.Stats.ACC}, modifier = -1, chance = 1}, -- Sand Attack
	["39"] = {stats = {MoveData.Stats.DEF}, modifier = -1, chance = 1}, -- Tail Whip
	["43"] = {stats = {MoveData.Stats.DEF}, modifier = -1, chance = 1}, -- Leer
	["45"] = {stats = {MoveData.Stats.ATK}, modifier = -1, chance = 1}, -- Growl
	["51"] = {stats = {MoveData.Stats.DEF}, modifier = -1, chance = 0.1}, -- Acid
	["61"] = {stats = {MoveData.Stats.SPE}, modifier = -1, chance = 0.1}, -- Bubble Beam
	["62"] = {stats = {MoveData.Stats.ATK}, modifier = -1, chance = 0.1}, -- Aurora Beam
	["81"] = {stats = {MoveData.Stats.SPE}, modifier = -1, chance = 1}, -- String Shot
	["94"] = {stats = {MoveData.Stats.SPD}, modifier = -1, chance = 0.1}, -- Psychic
	["103"] = {stats = {MoveData.Stats.DEF}, modifier = -2, chance = 1}, -- Screech
	["108"] = {stats = {MoveData.Stats.ACC}, modifier = -1, chance = 1}, -- Smokescreen
	["132"] = {stats = {MoveData.Stats.SPE}, modifier = -1, chance = 0.1}, -- Constrict
	["134"] = {stats = {MoveData.Stats.ACC}, modifier = -1, chance = 1}, -- Kinesis
	["145"] = {stats = {MoveData.Stats.SPE}, modifier = -1, chance = 0.1}, -- Bubble
	["148"] = {stats = {MoveData.Stats.ACC}, modifier = -1, chance = 1}, -- Flash
	["178"] = {stats = {MoveData.Stats.SPE}, modifier = -2, chance = 1}, -- Cotton Spore
	["183"] = {stats = {MoveData.Stats.SPE}, modifier = -2, chance = 1}, -- Scary Face
	["189"] = {stats = {MoveData.Stats.ACC}, modifier = -1, chance = 1}, -- Mud Slap
	["190"] = {stats = {MoveData.Stats.ACC}, modifier = -1, chance = 0.5}, -- Octazooka
	["196"] = {stats = {MoveData.Stats.SPE}, modifier = -1, chance = 1}, -- Icy Wind
	["204"] = {stats = {MoveData.Stats.ATK}, modifier = -2, chance = 1}, -- Charm
	["207"] = {stats = {MoveData.Stats.ATK}, modifier = 2, chance = 1}, -- Swagger
	["230"] = {stats = {MoveData.Stats.EVA}, modifier = -1, chance = 1}, -- Sweet Scent
	["231"] = {stats = {MoveData.Stats.DEF}, modifier = -1, chance = 0.3}, -- Iron Tail
	["242"] = {stats = {MoveData.Stats.SPD}, modifier = -1, chance = 0.2}, -- Crunch
	["247"] = {stats = {MoveData.Stats.SPD}, modifier = -1, chance = 0.2}, -- Shadow Ball
	["249"] = {stats = {MoveData.Stats.DEF}, modifier = -1, chance = 0.5}, -- Rock Smash
	["260"] = {stats = {MoveData.Stats.SPA}, modifier = 1, chance = 1}, -- Flatter
	["295"] = {stats = {MoveData.Stats.SPD}, modifier = -1, chance = 0.5}, -- Luster Purge
	["296"] = {stats = {MoveData.Stats.SPA}, modifier = -1, chance = 0.5}, -- Mist Ball
	["297"] = {stats = {MoveData.Stats.ATK}, modifier = -2, chance = 1}, -- Feather Dance
	["305"] = {stats = {MoveData.Stats.DEF}, modifier = -1, chance = 0.5}, -- Crush Claw
	["313"] = {stats = {MoveData.Stats.SPA}, modifier = -2, chance = 1}, -- Fake Tears
	["317"] = {stats = {MoveData.Stats.SPE}, modifier = -1, chance = 1}, -- Rock Tomb
	["319"] = {stats = {MoveData.Stats.SPD}, modifier = -2, chance = 1}, -- Metal Sound
	["321"] = {stats = {MoveData.Stats.ATK, MoveData.Stats.DEF}, modifier = -1, chance = 1}, -- Tickle
	["330"] = {stats = {MoveData.Stats.ACC}, modifier = -1, chance = 0.3}, -- Muddy Water
	["341"] = {stats = {MoveData.Stats.SPE}, modifier = -1, chance = 1}, -- Mud Shot
}

MoveData.ModifiesOwnStat = {
	["14"] = {stats = {MoveData.Stats.ATK}, modifier = 2, chance = 1}, -- Swords Dance
	["74"] = {stats = {MoveData.Stats.SPA}, modifier = 1, chance = 1}, -- Growth
	["96"] = {stats = {MoveData.Stats.ATK}, modifier = 1, chance = 1}, -- Meditate
	["97"] = {stats = {MoveData.Stats.SPE}, modifier = 2, chance = 1}, -- Agility
	["99"] = {stats = {MoveData.Stats.ATK}, modifier = 1, chance = 0.5}, -- Rage TODO impove method
	["104"] = {stats = {MoveData.Stats.EVA}, modifier = 1, chance = 1}, -- Double Team
	["106"] = {stats = {MoveData.Stats.DEF}, modifier = 1, chance = 1}, -- Harden
	["107"] = {stats = {MoveData.Stats.EVA}, modifier = 1, chance = 1}, -- Minimize
	["110"] = {stats = {MoveData.Stats.DEF}, modifier = 1, chance = 1}, -- Withdraw
	["111"] = {stats = {MoveData.Stats.DEF}, modifier = 1, chance = 1}, -- Defense Curl
	["112"] = {stats = {MoveData.Stats.DEF}, modifier = 2, chance = 1}, -- Barrier
	["113"] = {stats = {MoveData.Stats.SPD}, modifier = 2, chance = 1}, -- Light Screen TODO
	["115"] = {stats = {MoveData.Stats.DEF}, modifier = 2, chance = 1}, -- Reflect TODO
	["116"] = {stats = {MoveData.Stats.CRT}, modifier = 2, chance = 1}, -- Focus Energy
	["130"] = {stats = {MoveData.Stats.DEF}, modifier = 1, chance = 1}, -- Skull Bash
	["133"] = {stats = {MoveData.Stats.SPD}, modifier = 2, chance = 1}, -- Amnesia
	["151"] = {stats = {MoveData.Stats.DEF}, modifier = 2, chance = 1}, -- Acid Armor
	["159"] = {stats = {MoveData.Stats.ATK}, modifier = 1, chance = 1}, -- Sharpen TODO curse move 174
	["211"] = {stats = {MoveData.Stats.DEF}, modifier = 1, chance = 0.1}, -- Steel Wing
	["232"] = {stats = {MoveData.Stats.ATK}, modifier = 1, chance = 0.1}, -- Metal Claw
	["246"] = {stats = {MoveData.Stats.ATK, MoveData.Stats.SPE, MoveData.Stats.DEF, MoveData.Stats.SPA, MoveData.Stats.SPD}, modifier = 1, chance = 0.1}, -- Ancient Power
	["276"] = {stats = {MoveData.Stats.ATK, MoveData.Stats.DEF}, modifier = -1, chance = 1}, -- Superpower
	["294"] = {stats = {MoveData.Stats.SPA}, modifier = 2, chance = 1}, -- Tail Glow
	["309"] = {stats = {MoveData.Stats.ATK}, modifier = 1, chance = 0.2}, -- Meteor Mash
	["315"] = {stats = {MoveData.Stats.SPA}, modifier = -2, chance = 1}, -- Overheat
	["318"] = {stats = {MoveData.Stats.ATK, MoveData.Stats.SPE, MoveData.Stats.DEF, MoveData.Stats.SPA, MoveData.Stats.SPD}, modifier = 1, chance = 0.1}, -- Silver Wind
	["322"] = {stats = {MoveData.Stats.SPD, MoveData.Stats.DEF}, modifier = 1, chance = 1}, -- Cosmic Power
	["334"] = {stats = {MoveData.Stats.DEF}, modifier = 2, chance = 1}, -- Iron Defense
	["336"] = {stats = {MoveData.Stats.ATK}, modifier = 1, chance = 1}, -- Howl
	["339"] = {stats = {MoveData.Stats.ATK, MoveData.Stats.DEF}, modifier = 1, chance = 1}, -- Bulk Up
	["347"] = {stats = {MoveData.Stats.SPA, MoveData.Stats.SPD}, modifier = 1, chance = 1}, -- Calm Mind
	["349"] = {stats = {MoveData.Stats.ATK, MoveData.Stats.SPE}, modifier = 1, chance = 1}, -- Dragon Dance
	["354"] = {stats = {MoveData.Stats.SPA}, modifier = -2, chance = 1}, -- Psycho Boost
}

MoveData.IsJumpKick = {
	[ "26"] = true, -- Jump Kick
	[ "136"] = true, -- High Jump Kick
}

MoveData.IsHighCritMove = {
	[ "2"] = true, -- Karate Chop
	[ "75"] = true, -- Razor Leaf
	[ "143"] = true, -- Sky Attack
	[ "152"] = true, -- Crab Hammer
	[ "163"] = true, -- Slash
	[ "177"] = true, -- Aeroblast
	[ "238"] = true, -- Cross Chop
	[ "299"] = true, -- Blaze Kick
	[ "314"] = true, -- Air Cutter
	[ "342"] = true, -- Poison Tail
	[ "348"] = true, -- Leaf Blade
}

MoveData.IsHitAfter3TurnsMove = {
	[ "248"] = true, -- Future Sight
	[ "281"] = true, -- Yawn
	[ "353"] = true, -- Doom Desire
}

MoveData.IsFirstTurnOnlyMove = {
	[ "252"] = true, -- Fake Out
}

MoveData.RemovesBindingsAndLeechSeed = {
	[ "229"] = true, -- Rapid Spin
}

MoveData.SkipsTurnAfterwards = {
	[ "63"] = true, -- Hyper Beam
	[ "307"] = true, -- Blast Burn
	[ "308"] = true, -- Hydro Cannon
	[ "338"] = true, -- Frenzy Plant
}

MoveData.IsItemStealMove = {
	[ "168"] = true, -- Thief
	[ "343"] = true, -- Covet
}

MoveData.IsRemoveItemMove = {
	[ "282"] = true, -- Knock Off
}

MoveData.IsThawMove = {
	[ "172"] = true, -- Flame Wheel
	[ "221"] = true, -- Sacred Fire
}

MoveData.RequiresSleeping = {
	[ "173"] = true, -- Snore
}

-- 1 = generic, 2 = skipped by sun, 3 = under ground, 4 = under water, 5 = flying
MoveData.ChargeUpTurn = {
	[ "13"] = 1, -- Razor Wind
	[ "19"] = 5, -- Fly
	[ "76"] = 5, -- Solar Beam
	[ "91"] = 3, -- Dig
	[ "130"] = 1, -- Skull Bash
	[ "143"] = 1, -- Sky Attack
	[ "291"] = 4, -- Dive
	[ "340"] = 5, -- Bounce
}

-- 1 = flying, 2 = under ground, 3 = under water, 4 = minimized mons, 5 = paralyzed mons,
-- 6 = on switch, 7 = user para/burn/poisoned -> double power, 8 = enemy para'd -> double power + cure
-- 9 = normal dmg vs flying
MoveData.DoubleDamageOrPower = {
	[ "16"] = 1, -- Gust
	[ "57"] = 3, -- Surf
	[ "87"] = 9, -- Thunder
	[ "89"] = 2, -- Earthquake
	[ "228"] = 6, -- Pursuit
	[ "239"] = 2, -- Twister
	[ "250"] = 3, -- Whirlpool
	[ "263"] = 7, -- Facade
	[ "265"] = 8, -- Smelling Salt
	[ "302"] = 4, -- Needle Arm
	[ "310"] = 4, -- Astonish
	[ "326"] = 4, -- Extrasensory
	[ "327"] = 9, -- Sky Uppercut
}

-- 1 = Clear, 2 = Hail, 3 = Rain, 4 = Sunny, 5 = Sandstorm
MoveData.DmgModifiedByWeather = {
	[ "76"] = {[1]=0.5,[2]=0.5,[3]=0.5,[5]=0.5}, -- Solar Beam
}

-- 1 = Clear, 2 = Hail, 3 = Rain, 4 = Sunny, 5 = Sandstorm
MoveData.AccuracySetByWeather = {
	[ "87"] = {[3]=1, [4]=0.5}, -- Thunder
}

-- 1 = doubles dmg each turn, 2 = stops after 2-3 turns and confuses, 3 = no sleep while attacking
MoveData.LockInMoves = {
	[ "37"] = true, --Thrash
	[ "80"] = true, --Petal Dance
	[ "200"] = true, --Outrage
	[ "205"] = true, --Rollout
	[ "253"] = true, --Uproar
}

MoveData.ConfusesSelf = {
	[ "37"] = true, --Thrash
	[ "80"] = true, --Petal Dance
	[ "200"] = true, --Outrage
}

MoveData.DoublesDmgIfUsedConsecutively = {
	[ "205"] = true, --Rollout
	[ "210"] = true, --Fury Cutter
	[ "301"] = true, --Ice Ball
}

MoveData.IsBindMove = {
	[ "20"] = true, -- Bind
	[ "35"] = true, -- Wrap
	[ "83"] = true, -- Fire Spin
	[ "128"] = true, -- Clamp
	[ "250"] = true, -- Whirlpool
	[ "328"] = true, -- Sand Tomb
}

MoveData.IsDrainMove = {
	[ "71"] = true, -- Absorb
	[ "72"] = true, -- Mega Drain
	[ "138"] = true, -- Dream Eater
	[ "141"] = true, -- Leech Life
	[ "202"] = true, -- Giga Drain
}

MoveData.IsHighPriorityMove = {
	[ "98"] = true, -- Quick Attack
	[ "182"] = true, -- Mach Punch
	[ "245"] = true, -- Extreme Speed
	[ "252"] = true, -- Fake Out
}

MoveData.FailsIfDamaged = {
	[ "264"] = true, -- Focus Punch
}

MoveData.RemovesBarrierLightScreen = {
	[ "280"] = true, -- Brick Break
}

MoveData.IsLowPriorityMove = {
	[ "264"] = true, -- Focus Punch
	[ "279"] = true, -- Revenge
}

-- 1 = Enemy is asleep
MoveData.HasPrecondition = {
	[ "138"] = 1, -- Dream Eater
}

-- 1 = sets up rollout / ice ball
MoveData.SetsUpMove = {
	[ "111"] = 1, --Defense Curl
}

function MoveData.initialize()
	MoveData.knownTotal = nil

	-- For easier category lookups
	MoveData.Categories[1] = MoveData.Categories.PHYSICAL
	MoveData.Categories[2] = MoveData.Categories.SPECIAL
	MoveData.Categories[3] = MoveData.Categories.STATUS

	MoveData.buildData()
end

function MoveData.updateResources()
	for id = 1, MoveData.getTotal(), 1 do
		local move = MoveData.Moves[id] or MoveData.BlankMove
		if Resources.Game.MoveNames[id] then
			move.name = Resources.Game.MoveNames[id]
		end
		local descTable = Resources.Game.MoveDescriptions[id] or {}
		if descTable and descTable.Description then
			move.summary = descTable.Description
		end
	end
end

--- Reads the Move's type, power, accuracy, and pp from the game memory.
---@param forced boolean? Optional, forces the data to be read in from the game
function MoveData.buildData(forced)
	-- Don't bother reading in game data if it's not randomized (might not need this check)
	if not forced and not MoveData.checkIfDataIsRandomized() then
		return
	end

	for moveId = 1, MoveData.getTotal(), 1 do
		local moveInfo = MoveData.readMoveInfoFromMemory(moveId)
		if moveInfo ~= nil then
			local moveInternal = MoveData.Moves[moveId]

			-- Don't overwrite manually entered power values for moves with variable power; randomizer sets them to "1"
			if not moveInternal.variablepower then
				moveInternal.power = moveInfo.power
			end

			if MoveData.IsRand.moveCategory and moveInfo.category ~= nil then
				moveInternal.category = moveInfo.category
			-- For non-status moves with actual power, update their type categories if the move's type changed
			elseif moveInternal.power ~= "0" and moveInfo.type ~= moveInternal.type and moveInternal.category ~= MoveData.Categories.STATUS then
				moveInternal.category = MoveData.TypeToCategory[moveInfo.type]
			end

			-- Update all other base values
			moveInternal.type = moveInfo.type
			moveInternal.accuracy = moveInfo.accuracy
			moveInternal.pp = moveInfo.pp
		end
	end
end

function MoveData.readMoveInfoFromMemory(moveId)
	local addr = GameSettings.gBattleMoves + (moveId * Program.Addresses.sizeofBattleMove)
	local moveData = Memory.readdword(addr + Program.Addresses.offsetBattleMoves)
	-- Optional move flags for the Physical/Special split rom patch (in vanilla, this value is 0)
	local moveFlags = Memory.readbyte(addr + (Program.Addresses.offsetBattleMoves * 8))

	local movePower = Utils.getbits(moveData, 0, 8)
	local moveType = Utils.getbits(moveData, 8, 8)
	local moveAccuracy = Utils.getbits(moveData, 16, 8)
	local movePP = Utils.getbits(moveData, 24, 8)
	local moveCategory = Utils.getbits(moveFlags, 6, 2)

	return {
		power = tostring(movePower),
		type = PokemonData.TypeIndexMap[moveType],
		accuracy = tostring(moveAccuracy),
		pp = tostring(movePP),
		category = MoveData.Categories[moveCategory], -- For physical/special split; nil if not applicable
	}
end

---Returns true if the game's data is randomized (accuracy is not absolute); false otherwise
---@return boolean
function MoveData.checkIfDataIsRandomized()
	local areTypesRandomized = false
	local arePowersRandomized = false
	local areAccuraciesRandomized = false
	local arePPsRandomized = false
	local areCategoriesChanged = false

	-- Check once if any data was randomized
	local moveInfo = MoveData.readMoveInfoFromMemory(314) -- Air Cutter
	if moveInfo ~= nil then
		areTypesRandomized = moveInfo.type ~= PokemonData.Types.FLYING
		arePowersRandomized = moveInfo.power ~= "55"
		areAccuraciesRandomized = moveInfo.accuracy ~= "95"
		arePPsRandomized = moveInfo.pp ~= "25"
		-- For checking Physical/Special split; in vanilla this would be nil/unchanged
		areCategoriesChanged = moveInfo.category == MoveData.Categories.SPECIAL
	end

	-- Check twice if any data was randomized (Randomizer does *not* force a change)
	if not (areTypesRandomized and arePowersRandomized and areAccuraciesRandomized and arePPsRandomized and areCategoriesChanged) then
		moveInfo = MoveData.readMoveInfoFromMemory(128) -- Clamp
		if moveInfo ~= nil then
			if moveInfo.type ~= PokemonData.Types.WATER then
				areTypesRandomized = true
			end
			if moveInfo.power ~= "35" then
				arePowersRandomized = true
			end
			if moveInfo.accuracy ~= "75" then
				areAccuraciesRandomized = true
			end
			if moveInfo.pp ~= "10" then
				arePPsRandomized = true
			end
			-- For checking Physical/Special split; in vanilla this would be nil/unchanged
			if moveInfo.category == MoveData.Categories.PHYSICAL then
				areCategoriesChanged = true
			end
		end
	end

	MoveData.IsRand.moveType = areTypesRandomized
	MoveData.IsRand.movePower = arePowersRandomized
	MoveData.IsRand.moveAccuracy = areAccuraciesRandomized
	MoveData.IsRand.movePP = arePPsRandomized
	MoveData.IsRand.moveCategory = areCategoriesChanged

	return areTypesRandomized or arePowersRandomized or areAccuraciesRandomized or arePPsRandomized or areCategoriesChanged
end

---Returns true if the moveId is a valid, existing id of a move in MoveData.Moves
---@param moveId number
---@return boolean
function MoveData.isValid(moveId)
	return moveId ~= nil and MoveData.Moves[moveId] ~= nil
end

---Gets the total count of known Moves for this game.
---@return number
function MoveData.getTotal()
	return #MoveData.Moves
end

--Returns the Move data if the ID is available in the base game, or if NatDex extension exists, try getting data from there
---@param moveId number
---@return table move If no move found, returns MoveData.BlankMove
function MoveData.getNatDexCompatible(moveId)
	local move = MoveData.Moves[moveId or false]
	if move then
		return move
	end
	local baseGameTotal = 354
	local hasNatDexAccess = GachaMonData.requiresNatDex or CustomCode.RomHacks.isPlayingNatDex()
	if moveId > baseGameTotal and hasNatDexAccess then
		local natdexExt = TrackerAPI.getExtensionSelf(CustomCode.RomHacks.ExtensionKeys.NatDex)
		if natdexExt and natdexExt.Data and natdexExt.Data.natDexMoves then
			local adjustedId = moveId - baseGameTotal
			return natdexExt.Data.natDexMoves[adjustedId] or MoveData.BlankMove
		end
	end
	return MoveData.BlankMove
end

---Returns true if the move is a Move with high crit chance (i.e. Leaf Blade)
---@param moveId number|string
---@return boolean
function MoveData.isHighCrit(moveId)
	return MoveData.IsHighCritMove[tostring(moveId)] ~= nil
end

---Returns true if the move is a One-Hit KO move (i.e. Sheer Cold)
---@param moveId number|string
---@return boolean
function MoveData.isOHKO(moveId)
	return MoveData.IsOHKOMove[tostring(moveId)] ~= nil
end

---Returns true if the move causes recoil damage (i.e. Take Down); does NOT include Struggle (id=165)
---@param moveId number|string
---@return boolean
function MoveData.isRecoil(moveId)
	return MoveData.IsRecoilMove[tostring(moveId)] ~= nil
end

---Returns the move category of the move, such as Physical, Special, or Status; returns None if move not found
---@param moveId number|string
---@param moveType? string Optional, if provided (and not phys/spec split) will use this type to determine the category
---@return string category
function MoveData.getCategory(moveId, moveType)
	local move = MoveData.Moves[tonumber(moveId or "") or -1] or MoveData.BlankMove
	moveType = moveType or move.type
	if MoveData.IsRand.moveCategory then
		return move.category or MoveData.Categories.NONE
	end
	return MoveData.TypeToCategory[moveType] or MoveData.Categories.NONE
end

---Calculate the type & power of Hidden Power using a Pokémon's individual values (hp, atk, def, spa, spd, spe)
---@param ivs table Must contain key/value pairs for: hp, atk, def, spa, spd, spe
---@return string moveType The type of the move, or PokemonData.Types.UNKNOWN if it can't be calculated
---@return integer movePower the power of the move, between 30 and 70 inclusive; or 0 if unknown
function MoveData.calcHiddenPowerTypeAndPower(ivs)
	local moveType, movePower = MoveData.HiddenPowerTypeList[1], 0 -- unknown
	if not ivs or not ivs.hp then
		return moveType, movePower
	end

	-- Formula: https://bulbapedia.bulbagarden.net/wiki/Hidden_Power_(move)/Calculation#Generation_III_onward
	-- Type Bits: If a number is odd, its least significant bit is 1; otherwise (if the number is even), it is 0.
	local tBits = {
		hp = ivs.hp % 2,
		atk = ivs.atk % 2,
		def = ivs.def % 2,
		spe = ivs.spe % 2,
		spa = ivs.spa % 2,
		spd = ivs.spd % 2,
	}
	-- Power Bits: If a variable has a remainder of 2 or 3 when divided by 4, this bit is 1; otherwise, the bit is 0.
	local pBits = {
		hp = math.floor((ivs.hp % 4) / 2),
		atk = math.floor((ivs.atk % 4) / 2),
		def = math.floor((ivs.def % 4) / 2),
		spe = math.floor((ivs.spe % 4) / 2),
		spa = math.floor((ivs.spa % 4) / 2),
		spd = math.floor((ivs.spd % 4) / 2),
	}
	-- Perform the cacluation
	local typeSum = tBits.hp + (2 * tBits.atk) + (4 * tBits.def) + (8 * tBits.spe) + (16 * tBits.spa) + (32 * tBits.spd)
	local typeIndex = math.floor(typeSum * 15 / 63) -- results in 0 through 15, inclusive
	moveType = MoveData.HiddenPowerTypeList[typeIndex + 2] or MoveData.HiddenPowerTypeList[1] -- 1st is "unknown", 2nd is "fighting"
	local moveSum = pBits.hp + (2 * pBits.atk) + (4 * pBits.def) + (8 * pBits.spe) + (16 * pBits.spa) + (32 * pBits.spd)
	movePower = math.floor(moveSum * 40 / 63) + 30 -- results in 30 through 70, inclusive

	return moveType, movePower
end

---Determines (guesses) at the expected numerical power of a given move. For example, average power for multi-hit moves, or max power for HP based moves.
---@param moveId number
---@return number
function MoveData.getExpectedPower(moveId)
	if not MoveData.isValid(moveId) then
		return 0
	end

	if moveId == MoveData.Values.LowKickId then
		return 80
	elseif moveId == MoveData.Values.EruptionId or moveId == MoveData.Values.WaterSpoutId then
		return 150
	elseif moveId == MoveData.Values.FlailId or moveId == MoveData.Values.ReversalId then
		return 80
	elseif moveId == MoveData.Values.ReturnId then
		return 102
	elseif moveId == MoveData.Values.FrustrationId then
		return 50
	elseif moveId == MoveData.Values.TripleKickId then
		return 60
	end

	-- https://bulbapedia.bulbagarden.net/wiki/Multi-strike_move#Variable_number_of_strikes
	local multiHitMoves = {
		[292] = true, [140] = true, [198] = true, [331] = true, [4] = true, [3] = true,
		[31] = true, [154] = true, [333] = true, [42] = true, [350] = true, [131] = true
	}
	-- https://bulbapedia.bulbagarden.net/wiki/Multi-strike_move#Fixed_number_of_multiple_strikes
	local doubleHitMoves = {
		[155] = true, [41] = true, [24] = true
	}

	local power = tonumber(MoveData.Moves[moveId].power) or 0
	if doubleHitMoves[moveId] then
		return (power * 2)
	elseif multiHitMoves[moveId] then
		-- Average of 3 hits
		return (power * 3)
	end

	return power
end

---Adjusts the move table data based on any variable damage calculations, or other attributes; No return, as this edits the move table directly.
---@param move table
---@param sourcePokemon? table Optional, as not all move adjustment calculations require a source and/or a target
---@param targetPokemon? table Optional, as not all move adjustment calculations require a source and/or a target
function MoveData.adjustVariableMoveValues(move, sourcePokemon, targetPokemon)
	sourcePokemon = sourcePokemon or {}
	targetPokemon = targetPokemon or {}
	local adjustmentFunc = MoveData.MoveValueAdjustmentFuncs[tonumber(move.id or 0) or false]
	if type(adjustmentFunc) == "function" then
		adjustmentFunc(move, sourcePokemon, targetPokemon)
	end
end

MoveData.BlankMove = {
	id = "0",
	name = Constants.BLANKLINE,
	type = PokemonData.Types.UNKNOWN,
	power = "0",
	pp = "0",
	accuracy = "0",
	category = MoveData.Categories.NONE,
	iscontact = false,
	priority = "0",
	summary = "",
}

--[[
The various Pokémon moves (Gen 3)
Data pulled from Bulbapedia: https://bulbapedia.bulbagarden.net/wiki/List_of_moves (Note that categories differ from the source for Gen 3)
Format for an entry:
	id: string -> internal id of the move, represented as an integer in a string
	name: string -> the name of the move as it appears in game
	type: string -> the type of damage the move does, using the PokemonData.Types enum
	power: string -> the strength of the move specified in game as in integer, or Constants.BLANKLINE when not applicable
	pp: string -> the base amount of actions this move is capable of
	accuracy: string -> the percent accuracy of the move connecting, or Constants.BLANKLINE when not applicable
	category: integer -> the type of damage a move does: physical/special/status, using the MoveData.Categories enum
]]
MoveData.Moves = {
	{ -- Begin Gen 1 Moves
		id = "1",
		name = "Pound",
		type = PokemonData.Types.NORMAL,
		power = "40",
		pp = "35",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "2",
		name = "Karate Chop",
		type = PokemonData.Types.FIGHTING,
		power = "50",
		pp = "25",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "3",
		name = "DoubleSlap",
		type = PokemonData.Types.NORMAL,
		power = "15",
		pp = "10",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "4",
		name = "Comet Punch",
		type = PokemonData.Types.NORMAL,
		power = "18",
		pp = "15",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "5",
		name = "Mega Punch",
		type = PokemonData.Types.NORMAL,
		power = "80",
		pp = "20",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "6",
		name = "Pay Day",
		type = PokemonData.Types.NORMAL,
		power = "40",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "7",
		name = "Fire Punch",
		type = PokemonData.Types.FIRE,
		power = "75",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "8",
		name = "Ice Punch",
		type = PokemonData.Types.ICE,
		power = "75",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "9",
		name = "ThunderPunch",
		type = PokemonData.Types.ELECTRIC,
		power = "75",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "10",
		name = "Scratch",
		type = PokemonData.Types.NORMAL,
		power = "40",
		pp = "35",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "11",
		name = "ViceGrip",
		type = PokemonData.Types.NORMAL,
		power = "55",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "12",
		name = "Guillotine",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "30",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "13",
		name = "Razor Wind",
		type = PokemonData.Types.NORMAL,
		power = "80",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "14",
		name = "Swords Dance",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "15",
		name = "Cut",
		type = PokemonData.Types.NORMAL,
		power = "50",
		pp = "30",
		accuracy = "95",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "16",
		name = "Gust",
		type = PokemonData.Types.FLYING,
		power = "40",
		pp = "35",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "17",
		name = "Wing Attack",
		type = PokemonData.Types.FLYING,
		power = "60",
		pp = "35",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "18",
		name = "Whirlwind",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
		priority = "-- 6",
	},
	{
		id = "19",
		name = "Fly",
		type = PokemonData.Types.FLYING,
		power = "70",
		pp = "15",
		accuracy = "95",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "20",
		name = "Bind",
		type = PokemonData.Types.NORMAL,
		power = "15",
		pp = "20",
		accuracy = "75",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "21",
		name = "Slam",
		type = PokemonData.Types.NORMAL,
		power = "80",
		pp = "20",
		accuracy = "75",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "22",
		name = "Vine Whip",
		type = PokemonData.Types.GRASS,
		power = "35",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "23",
		name = "Stomp",
		type = PokemonData.Types.NORMAL,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "24",
		name = "Double Kick",
		type = PokemonData.Types.FIGHTING,
		power = "30",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "25",
		name = "Mega Kick",
		type = PokemonData.Types.NORMAL,
		power = "120",
		pp = "5",
		accuracy = "75",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "26",
		name = "Jump Kick",
		type = PokemonData.Types.FIGHTING,
		power = "70",
		pp = "25",
		accuracy = "95",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "27",
		name = "Rolling Kick",
		type = PokemonData.Types.FIGHTING,
		power = "60",
		pp = "15",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "28",
		name = "Sand-Attack",
		type = PokemonData.Types.GROUND,
		power = "0",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "29",
		name = "Headbutt",
		type = PokemonData.Types.NORMAL,
		power = "70",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "30",
		name = "Horn Attack",
		type = PokemonData.Types.NORMAL,
		power = "65",
		pp = "25",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "31",
		name = "Fury Attack",
		type = PokemonData.Types.NORMAL,
		power = "15",
		pp = "20",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "32",
		name = "Horn Drill",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "30",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "33",
		name = "Tackle",
		type = PokemonData.Types.NORMAL,
		power = "35",
		pp = "35",
		accuracy = "95",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "34",
		name = "Body Slam",
		type = PokemonData.Types.NORMAL,
		power = "85",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "35",
		name = "Wrap",
		type = PokemonData.Types.NORMAL,
		power = "15",
		pp = "20",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "36",
		name = "Take Down",
		type = PokemonData.Types.NORMAL,
		power = "90",
		pp = "20",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "37",
		name = "Thrash",
		type = PokemonData.Types.NORMAL,
		power = "90",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "38",
		name = "Double-Edge",
		type = PokemonData.Types.NORMAL,
		power = "120",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "39",
		name = "Tail Whip",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "40",
		name = "Poison Sting",
		type = PokemonData.Types.POISON,
		power = "15",
		pp = "35",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "41",
		name = "Twineedle",
		type = PokemonData.Types.BUG,
		power = "25",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "42",
		name = "Pin Missile",
		type = PokemonData.Types.BUG,
		power = "14",
		pp = "20",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "43",
		name = "Leer",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "44",
		name = "Bite",
		type = PokemonData.Types.DARK,
		power = "60",
		pp = "25",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "45",
		name = "Growl",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "40",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "46",
		name = "Roar",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
		priority = "-- 6",
	},
	{
		id = "47",
		name = "Sing",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "15",
		accuracy = "55",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "48",
		name = "Supersonic",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "55",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "49",
		name = "SonicBoom",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
		variablepower = true,
	},
	{
		id = "50",
		name = "Disable",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "55",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "51",
		name = "Acid",
		type = PokemonData.Types.POISON,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "52",
		name = "Ember",
		type = PokemonData.Types.FIRE,
		power = "40",
		pp = "25",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "53",
		name = "Flamethrower",
		type = PokemonData.Types.FIRE,
		power = "95",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "54",
		name = "Mist",
		type = PokemonData.Types.ICE,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "55",
		name = "Water Gun",
		type = PokemonData.Types.WATER,
		power = "40",
		pp = "25",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "56",
		name = "Hydro Pump",
		type = PokemonData.Types.WATER,
		power = "120",
		pp = "5",
		accuracy = "80",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "57",
		name = "Surf",
		type = PokemonData.Types.WATER,
		power = "95",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "58",
		name = "Ice Beam",
		type = PokemonData.Types.ICE,
		power = "95",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "59",
		name = "Blizzard",
		type = PokemonData.Types.ICE,
		power = "120",
		pp = "5",
		accuracy = "70",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "60",
		name = "Psybeam",
		type = PokemonData.Types.PSYCHIC,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "61",
		name = "BubbleBeam",
		type = PokemonData.Types.WATER,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "62",
		name = "Aurora Beam",
		type = PokemonData.Types.ICE,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "63",
		name = "Hyper Beam",
		type = PokemonData.Types.NORMAL,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "64",
		name = "Peck",
		type = PokemonData.Types.FLYING,
		power = "35",
		pp = "35",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "65",
		name = "Drill Peck",
		type = PokemonData.Types.FLYING,
		power = "80",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "66",
		name = "Submission",
		type = PokemonData.Types.FIGHTING,
		power = "80",
		pp = "25",
		accuracy = "80",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "67",
		name = "Low Kick",
		type = PokemonData.Types.FIGHTING,
		power = "WT",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "68",
		name = "Counter",
		type = PokemonData.Types.FIGHTING,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		priority = "-- 5",
		variablepower = true,
	},
	{
		id = "69",
		name = "Seismic Toss",
		type = PokemonData.Types.FIGHTING,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "70",
		name = "Strength",
		type = PokemonData.Types.NORMAL,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "71",
		name = "Absorb",
		type = PokemonData.Types.GRASS,
		power = "20",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "72",
		name = "Mega Drain",
		type = PokemonData.Types.GRASS,
		power = "40",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "73",
		name = "Leech Seed",
		type = PokemonData.Types.GRASS,
		power = "0",
		pp = "10",
		accuracy = "90",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "74",
		name = "Growth",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "40",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "75",
		name = "Razor Leaf",
		type = PokemonData.Types.GRASS,
		power = "55",
		pp = "25",
		accuracy = "95",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "76",
		name = "SolarBeam",
		type = PokemonData.Types.GRASS,
		power = "120",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "77",
		name = "PoisonPowder",
		type = PokemonData.Types.POISON,
		power = "0",
		pp = "35",
		accuracy = "75",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "78",
		name = "Stun Spore",
		type = PokemonData.Types.GRASS,
		power = "0",
		pp = "30",
		accuracy = "75",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "79",
		name = "Sleep Powder",
		type = PokemonData.Types.GRASS,
		power = "0",
		pp = "15",
		accuracy = "75",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "80",
		name = "Petal Dance",
		type = PokemonData.Types.GRASS,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "81",
		name = "String Shot",
		type = PokemonData.Types.BUG,
		power = "0",
		pp = "40",
		accuracy = "95",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "82",
		name = "Dragon Rage",
		type = PokemonData.Types.DRAGON,
		power = "0",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		variablepower = true,
	},
	{
		id = "83",
		name = "Fire Spin",
		type = PokemonData.Types.FIRE,
		power = "15",
		pp = "15",
		accuracy = "70",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "84",
		name = "ThunderShock",
		type = PokemonData.Types.ELECTRIC,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "85",
		name = "Thunderbolt",
		type = PokemonData.Types.ELECTRIC,
		power = "95",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "86",
		name = "Thunder Wave",
		type = PokemonData.Types.ELECTRIC,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "87",
		name = "Thunder",
		type = PokemonData.Types.ELECTRIC,
		power = "120",
		pp = "10",
		accuracy = "70",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "88",
		name = "Rock Throw",
		type = PokemonData.Types.ROCK,
		power = "50",
		pp = "15",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "89",
		name = "Earthquake",
		type = PokemonData.Types.GROUND,
		power = "100",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "90",
		name = "Fissure",
		type = PokemonData.Types.GROUND,
		power = "0",
		pp = "5",
		accuracy = "30",
		category = MoveData.Categories.PHYSICAL,
		variablepower = true,
	},
	{
		id = "91",
		name = "Dig",
		type = PokemonData.Types.GROUND,
		power = "60",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "92",
		name = "Toxic",
		type = PokemonData.Types.POISON,
		power = "0",
		pp = "10",
		accuracy = "85",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "93",
		name = "Confusion",
		type = PokemonData.Types.PSYCHIC,
		power = "50",
		pp = "25",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "94",
		name = "Psychic",
		type = PokemonData.Types.PSYCHIC,
		power = "90",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "95",
		name = "Hypnosis",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "20",
		accuracy = "60",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "96",
		name = "Meditate",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "40",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "97",
		name = "Agility",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "98",
		name = "Quick Attack",
		type = PokemonData.Types.NORMAL,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		priority = "+ 1",
	},
	{
		id = "99",
		name = "Rage",
		type = PokemonData.Types.NORMAL,
		power = "20",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "100",
		name = "Teleport",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "101",
		name = "Night Shade",
		type = PokemonData.Types.GHOST,
		power = "0",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		variablepower = true,
	},
	{
		id = "102",
		name = "Mimic",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "103",
		name = "Screech",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "40",
		accuracy = "85",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "104",
		name = "Double Team",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "15",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "105",
		name = "Recover",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "106",
		name = "Harden",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "107",
		name = "Minimize",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "108",
		name = "SmokeScreen",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "109",
		name = "Confuse Ray",
		type = PokemonData.Types.GHOST,
		power = "0",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "110",
		name = "Withdraw",
		type = PokemonData.Types.WATER,
		power = "0",
		pp = "40",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "111",
		name = "Defense Curl",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "40",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "112",
		name = "Barrier",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "113",
		name = "Light Screen",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "114",
		name = "Haze",
		type = PokemonData.Types.ICE,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "115",
		name = "Reflect",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "116",
		name = "Focus Energy",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "117",
		name = "Bide",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "118",
		name = "Metronome",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "119",
		name = "Mirror Move",
		type = PokemonData.Types.FLYING,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "120",
		name = "Selfdestruct",
		type = PokemonData.Types.NORMAL,
		power = "200",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "121",
		name = "Egg Bomb",
		type = PokemonData.Types.NORMAL,
		power = "100",
		pp = "10",
		accuracy = "75",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "122",
		name = "Lick",
		type = PokemonData.Types.GHOST,
		power = "20",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "123",
		name = "Smog",
		type = PokemonData.Types.POISON,
		power = "20",
		pp = "20",
		accuracy = "70",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "124",
		name = "Sludge",
		type = PokemonData.Types.POISON,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "125",
		name = "Bone Club",
		type = PokemonData.Types.GROUND,
		power = "65",
		pp = "20",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "126",
		name = "Fire Blast",
		type = PokemonData.Types.FIRE,
		power = "120",
		pp = "5",
		accuracy = "85",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "127",
		name = "Waterfall",
		type = PokemonData.Types.WATER,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "128",
		name = "Clamp",
		type = PokemonData.Types.WATER,
		power = "35",
		pp = "10",
		accuracy = "75",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "129",
		name = "Swift",
		type = PokemonData.Types.NORMAL,
		power = "60",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "130",
		name = "Skull Bash",
		type = PokemonData.Types.NORMAL,
		power = "100",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "131",
		name = "Spike Cannon",
		type = PokemonData.Types.NORMAL,
		power = "20",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "132",
		name = "Constrict",
		type = PokemonData.Types.NORMAL,
		power = "10",
		pp = "35",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "133",
		name = "Amnesia",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "134",
		name = "Kinesis",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "15",
		accuracy = "80",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "135",
		name = "Softboiled",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "136",
		name = "Hi Jump Kick",
		type = PokemonData.Types.FIGHTING,
		power = "85",
		pp = "20",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "137",
		name = "Glare",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "30",
		accuracy = "75",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "138",
		name = "Dream Eater",
		type = PokemonData.Types.PSYCHIC,
		power = "100",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "139",
		name = "Poison Gas",
		type = PokemonData.Types.POISON,
		power = "0",
		pp = "40",
		accuracy = "55",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "140",
		name = "Barrage",
		type = PokemonData.Types.NORMAL,
		power = "15",
		pp = "20",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "141",
		name = "Leech Life",
		type = PokemonData.Types.BUG,
		power = "20",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "142",
		name = "Lovely Kiss",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "75",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "143",
		name = "Sky Attack",
		type = PokemonData.Types.FLYING,
		power = "140",
		pp = "5",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "144",
		name = "Transform",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "145",
		name = "Bubble",
		type = PokemonData.Types.WATER,
		power = "20",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "146",
		name = "Dizzy Punch",
		type = PokemonData.Types.NORMAL,
		power = "70",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "147",
		name = "Spore",
		type = PokemonData.Types.GRASS,
		power = "0",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "148",
		name = "Flash",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "70",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "149",
		name = "Psywave",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "15",
		accuracy = "80",
		category = MoveData.Categories.SPECIAL,
		variablepower = true,
	},
	{
		id = "150",
		name = "Splash",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "40",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "151",
		name = "Acid Armor",
		type = PokemonData.Types.POISON,
		power = "0",
		pp = "40",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "152",
		name = "Crabhammer",
		type = PokemonData.Types.WATER,
		power = "90",
		pp = "10",
		accuracy = "85",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "153",
		name = "Explosion",
		type = PokemonData.Types.NORMAL,
		power = "250",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "154",
		name = "Fury Swipes",
		type = PokemonData.Types.NORMAL,
		power = "18",
		pp = "15",
		accuracy = "80",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "155",
		name = "Bonemerang",
		type = PokemonData.Types.GROUND,
		power = "50",
		pp = "10",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "156",
		name = "Rest",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "157",
		name = "Rock Slide",
		type = PokemonData.Types.ROCK,
		power = "75",
		pp = "10",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "158",
		name = "Hyper Fang",
		type = PokemonData.Types.NORMAL,
		power = "80",
		pp = "15",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "159",
		name = "Sharpen",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "160",
		name = "Conversion",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "161",
		name = "Tri Attack",
		type = PokemonData.Types.NORMAL,
		power = "80",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "162",
		name = "Super Fang",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "163",
		name = "Slash",
		type = PokemonData.Types.NORMAL,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "164",
		name = "Substitute",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "165",
		name = "Struggle",
		type = PokemonData.Types.NORMAL,
		power = "50",
		pp = "1",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{ -- Begin Gen 2 Moves
		id = "166",
		name = "Sketch",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "1",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "167",
		name = "Triple Kick",
		type = PokemonData.Types.FIGHTING,
		power = "10",
		pp = "10",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "168",
		name = "Thief",
		type = PokemonData.Types.DARK,
		power = "40",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "169",
		name = "Spider Web",
		type = PokemonData.Types.BUG,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "170",
		name = "Mind Reader",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "171",
		name = "Nightmare",
		type = PokemonData.Types.GHOST,
		power = "0",
		pp = "15",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "172",
		name = "Flame Wheel",
		type = PokemonData.Types.FIRE,
		power = "60",
		pp = "25",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "173",
		name = "Snore",
		type = PokemonData.Types.NORMAL,
		power = "40",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "174",
		name = "Curse",
		type = PokemonData.Types.UNKNOWN,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "175",
		name = "Flail",
		type = PokemonData.Types.NORMAL,
		power = "<HP",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "176",
		name = "Conversion 2",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "30",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "177",
		name = "Aeroblast",
		type = PokemonData.Types.FLYING,
		power = "100",
		pp = "5",
		accuracy = "95",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "178",
		name = "Cotton Spore",
		type = PokemonData.Types.GRASS,
		power = "0",
		pp = "40",
		accuracy = "85",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "179",
		name = "Reversal",
		type = PokemonData.Types.FIGHTING,
		power = "<HP",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "180",
		name = "Spite",
		type = PokemonData.Types.GHOST,
		power = "0",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "181",
		name = "Powder Snow",
		type = PokemonData.Types.ICE,
		power = "40",
		pp = "25",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "182",
		name = "Protect",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
		priority = "+ 3",
	},
	{
		id = "183",
		name = "Mach Punch",
		type = PokemonData.Types.FIGHTING,
		power = "40",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		priority = "+ 1",
	},
	{
		id = "184",
		name = "Scary Face",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "90",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "185",
		name = "Faint Attack", -- This is "Feint Attack" in gen 6+
		type = PokemonData.Types.DARK,
		power = "60",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "186",
		name = "Sweet Kiss",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "75",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "187",
		name = "Belly Drum",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "188",
		name = "Sludge Bomb",
		type = PokemonData.Types.POISON,
		power = "90",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "189",
		name = "Mud-Slap",
		type = PokemonData.Types.GROUND,
		power = "20",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "190",
		name = "Octazooka",
		type = PokemonData.Types.WATER,
		power = "65",
		pp = "10",
		accuracy = "85",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "191",
		name = "Spikes",
		type = PokemonData.Types.GROUND,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "192",
		name = "Zap Cannon",
		type = PokemonData.Types.ELECTRIC,
		power = "100",
		pp = "5",
		accuracy = "50",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "193",
		name = "Foresight",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "40",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "194",
		name = "Destiny Bond",
		type = PokemonData.Types.GHOST,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "195",
		name = "Perish Song",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "196",
		name = "Icy Wind",
		type = PokemonData.Types.ICE,
		power = "55",
		pp = "15",
		accuracy = "95",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "197",
		name = "Detect",
		type = PokemonData.Types.FIGHTING,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
		priority = "+ 3",
	},
	{
		id = "198",
		name = "Bone Rush",
		type = PokemonData.Types.GROUND,
		power = "25",
		pp = "10",
		accuracy = "80",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "199",
		name = "Lock-On",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "200",
		name = "Outrage",
		type = PokemonData.Types.DRAGON,
		power = "90",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "201",
		name = "Sandstorm",
		type = PokemonData.Types.ROCK,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "202",
		name = "Giga Drain",
		type = PokemonData.Types.GRASS,
		power = "60",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "203",
		name = "Endure",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
		priority = "+ 3",
	},
	{
		id = "204",
		name = "Charm",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "205",
		name = "Rollout",
		type = PokemonData.Types.ROCK,
		power = "30",
		pp = "20",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "206",
		name = "False Swipe",
		type = PokemonData.Types.NORMAL,
		power = "40",
		pp = "40",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "207",
		name = "Swagger",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "15",
		accuracy = "90",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "208",
		name = "Milk Drink",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "209",
		name = "Spark",
		type = PokemonData.Types.ELECTRIC,
		power = "65",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "210",
		name = "Fury Cutter",
		type = PokemonData.Types.BUG,
		power = "10",
		pp = "20",
		accuracy = "95",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "211",
		name = "Steel Wing",
		type = PokemonData.Types.STEEL,
		power = "70",
		pp = "25",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "212",
		name = "Mean Look",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "213",
		name = "Attract",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "214",
		name = "Sleep Talk",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "215",
		name = "Heal Bell",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "216",
		name = "Return",
		type = PokemonData.Types.NORMAL,
		power = ">FR",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "217",
		name = "Present",
		type = PokemonData.Types.NORMAL,
		power = "RNG",
		pp = "15",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
		variablepower = true,
	},
	{
		id = "218",
		name = "Frustration",
		type = PokemonData.Types.NORMAL,
		power = "<FR",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "219",
		name = "Safeguard",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "25",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "220",
		name = "Pain Split",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "221",
		name = "Sacred Fire",
		type = PokemonData.Types.FIRE,
		power = "100",
		pp = "5",
		accuracy = "95",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "222",
		name = "Magnitude",
		type = PokemonData.Types.GROUND,
		power = "RNG",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		variablepower = true,
	},
	{
		id = "223",
		name = "DynamicPunch",
		type = PokemonData.Types.FIGHTING,
		power = "100",
		pp = "5",
		accuracy = "50",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "224",
		name = "Megahorn",
		type = PokemonData.Types.BUG,
		power = "120",
		pp = "10",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "225",
		name = "DragonBreath",
		type = PokemonData.Types.DRAGON,
		power = "60",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "226",
		name = "Baton Pass",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "40",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "227",
		name = "Encore",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "228",
		name = "Pursuit",
		type = PokemonData.Types.DARK,
		power = "40",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "229",
		name = "Rapid Spin",
		type = PokemonData.Types.NORMAL,
		power = "20",
		pp = "40",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "230",
		name = "Sweet Scent",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "231",
		name = "Iron Tail",
		type = PokemonData.Types.STEEL,
		power = "100",
		pp = "15",
		accuracy = "75",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "232",
		name = "Metal Claw",
		type = PokemonData.Types.STEEL,
		power = "50",
		pp = "35",
		accuracy = "95",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "233",
		name = "Vital Throw",
		type = PokemonData.Types.FIGHTING,
		power = "70",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		priority = "-- 1",
	},
	{
		id = "234",
		name = "Morning Sun",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "235",
		name = "Synthesis",
		type = PokemonData.Types.GRASS,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "236",
		name = "Moonlight",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "237",
		name = "Hidden Power",
		type = PokemonData.Types.NORMAL,
		power = "VAR",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		variablepower = true,
	},
	{
		id = "238",
		name = "Cross Chop",
		type = PokemonData.Types.FIGHTING,
		power = "100",
		pp = "5",
		accuracy = "80",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "239",
		name = "Twister",
		type = PokemonData.Types.DRAGON,
		power = "40",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "240",
		name = "Rain Dance",
		type = PokemonData.Types.WATER,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "241",
		name = "Sunny Day",
		type = PokemonData.Types.FIRE,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "242",
		name = "Crunch",
		type = PokemonData.Types.DARK,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "243",
		name = "Mirror Coat",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		priority = "-- 5",
		variablepower = true,
	},
	{
		id = "244",
		name = "Psych Up",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "245",
		name = "ExtremeSpeed",
		type = PokemonData.Types.NORMAL,
		power = "80",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		priority = "+ 1",
	},
	{
		id = "246",
		name = "AncientPower",
		type = PokemonData.Types.ROCK,
		power = "60",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "247",
		name = "Shadow Ball",
		type = PokemonData.Types.GHOST,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "248",
		name = "Future Sight",
		type = PokemonData.Types.PSYCHIC,
		power = "80",
		pp = "15",
		accuracy = "90",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "249",
		name = "Rock Smash",
		type = PokemonData.Types.FIGHTING,
		power = "20",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "250",
		name = "Whirlpool",
		type = PokemonData.Types.WATER,
		power = "15",
		pp = "15",
		accuracy = "70",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "251",
		name = "Beat Up",
		type = PokemonData.Types.DARK,
		power = "10",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{ -- Begin Gen 3 Moves
		id = "252",
		name = "Fake Out",
		type = PokemonData.Types.NORMAL,
		power = "40",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		priority = "+ 1",
	},
	{
		id = "253",
		name = "Uproar",
		type = PokemonData.Types.NORMAL,
		power = "50",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "254",
		name = "Stockpile",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "255",
		name = "Spit Up",
		type = PokemonData.Types.NORMAL,
		power = "100x",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		variablepower = true,
	},
	{
		id = "256",
		name = "Swallow",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "257",
		name = "Heat Wave",
		type = PokemonData.Types.FIRE,
		power = "100",
		pp = "10",
		accuracy = "90",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "258",
		name = "Hail",
		type = PokemonData.Types.ICE,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "259",
		name = "Torment",
		type = PokemonData.Types.DARK,
		power = "0",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "260",
		name = "Flatter",
		type = PokemonData.Types.DARK,
		power = "0",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "261",
		name = "Will-O-Wisp",
		type = PokemonData.Types.FIRE,
		power = "0",
		pp = "15",
		accuracy = "75",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "262",
		name = "Memento",
		type = PokemonData.Types.DARK,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "263",
		name = "Facade",
		type = PokemonData.Types.NORMAL,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "264",
		name = "Focus Punch",
		type = PokemonData.Types.FIGHTING,
		power = "150",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		priority = "-- 3",
	},
	{
		id = "265",
		name = "SmellingSalt",
		type = PokemonData.Types.NORMAL,
		power = "60",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "266",
		name = "Follow Me",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
		priority = "+ 3",
	},
	{
		id = "267",
		name = "Nature Power",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "268",
		name = "Charge",
		type = PokemonData.Types.ELECTRIC,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "269",
		name = "Taunt",
		type = PokemonData.Types.DARK,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "270",
		name = "Helping Hand",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
		priority = "+ 5",
	},
	{
		id = "271",
		name = "Trick",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "272",
		name = "Role Play",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "273",
		name = "Wish",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "274",
		name = "Assist",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "275",
		name = "Ingrain",
		type = PokemonData.Types.GRASS,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "276",
		name = "Superpower",
		type = PokemonData.Types.FIGHTING,
		power = "120",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "277",
		name = "Magic Coat",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "15",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
		priority = "+ 4",
	},
	{
		id = "278",
		name = "Recycle",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "279",
		name = "Revenge",
		type = PokemonData.Types.FIGHTING,
		power = "60",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		priority = "-- 4",
	},
	{
		id = "280",
		name = "Brick Break",
		type = PokemonData.Types.FIGHTING,
		power = "75",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "281",
		name = "Yawn",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "282",
		name = "Knock Off",
		type = PokemonData.Types.DARK,
		power = "20",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "283",
		name = "Endeavor",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
		variablepower = true,
	},
	{
		id = "284",
		name = "Eruption",
		type = PokemonData.Types.FIRE,
		power = ">HP",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		variablepower = true,
	},
	{
		id = "285",
		name = "Skill Swap",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "286",
		name = "Imprison",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "287",
		name = "Refresh",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "288",
		name = "Grudge",
		type = PokemonData.Types.GHOST,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "289",
		name = "Snatch",
		type = PokemonData.Types.DARK,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
		priority = "+ 4",
	},
	{
		id = "290",
		name = "Secret Power",
		type = PokemonData.Types.NORMAL,
		power = "70",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "291",
		name = "Dive",
		type = PokemonData.Types.WATER,
		power = "60",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "292",
		name = "Arm Thrust",
		type = PokemonData.Types.FIGHTING,
		power = "15",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "293",
		name = "Camouflage",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "294",
		name = "Tail Glow",
		type = PokemonData.Types.BUG,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "295",
		name = "Luster Purge",
		type = PokemonData.Types.PSYCHIC,
		power = "70",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "296",
		name = "Mist Ball",
		type = PokemonData.Types.PSYCHIC,
		power = "70",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "297",
		name = "FeatherDance",
		type = PokemonData.Types.FLYING,
		power = "0",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "298",
		name = "Teeter Dance",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "299",
		name = "Blaze Kick",
		type = PokemonData.Types.FIRE,
		power = "85",
		pp = "10",
		accuracy = "90",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "300",
		name = "Mud Sport",
		type = PokemonData.Types.GROUND,
		power = "0",
		pp = "15",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "301",
		name = "Ice Ball",
		type = PokemonData.Types.ICE,
		power = "30",
		pp = "20",
		accuracy = "90",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "302",
		name = "Needle Arm",
		type = PokemonData.Types.GRASS,
		power = "60",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "303",
		name = "Slack Off",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "10",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "304",
		name = "Hyper Voice",
		type = PokemonData.Types.NORMAL,
		power = "90",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "305",
		name = "Poison Fang",
		type = PokemonData.Types.POISON,
		power = "50",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "306",
		name = "Crush Claw",
		type = PokemonData.Types.NORMAL,
		power = "75",
		pp = "10",
		accuracy = "95",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "307",
		name = "Blast Burn",
		type = PokemonData.Types.FIRE,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "308",
		name = "Hydro Cannon",
		type = PokemonData.Types.WATER,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "309",
		name = "Meteor Mash",
		type = PokemonData.Types.STEEL,
		power = "100",
		pp = "10",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "310",
		name = "Astonish",
		type = PokemonData.Types.GHOST,
		power = "30",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "311",
		name = "Weather Ball",
		type = PokemonData.Types.NORMAL,
		power = "50",
		pp = "10",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "312",
		name = "Aromatherapy",
		type = PokemonData.Types.GRASS,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "313",
		name = "Fake Tears",
		type = PokemonData.Types.DARK,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "314",
		name = "Air Cutter",
		type = PokemonData.Types.FLYING,
		power = "55",
		pp = "25",
		accuracy = "95",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "315",
		name = "Overheat",
		type = PokemonData.Types.FIRE,
		power = "140",
		pp = "5",
		accuracy = "90",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "316",
		name = "Odor Sleuth",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "40",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "317",
		name = "Rock Tomb",
		type = PokemonData.Types.ROCK,
		power = "50",
		pp = "10",
		accuracy = "80",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "318",
		name = "Silver Wind",
		type = PokemonData.Types.BUG,
		power = "60",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "319",
		name = "Metal Sound",
		type = PokemonData.Types.STEEL,
		power = "0",
		pp = "40",
		accuracy = "85",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "320",
		name = "GrassWhistle",
		type = PokemonData.Types.GRASS,
		power = "0",
		pp = "15",
		accuracy = "55",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "321",
		name = "Tickle",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "322",
		name = "Cosmic Power",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "323",
		name = "Water Spout",
		type = PokemonData.Types.WATER,
		power = ">HP",
		pp = "5",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		variablepower = true,
	},
	{
		id = "324",
		name = "Signal Beam",
		type = PokemonData.Types.BUG,
		power = "75",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "325",
		name = "Shadow Punch",
		type = PokemonData.Types.GHOST,
		power = "60",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "326",
		name = "Extrasensory",
		type = PokemonData.Types.PSYCHIC,
		power = "80",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "327",
		name = "Sky Uppercut",
		type = PokemonData.Types.FIGHTING,
		power = "85",
		pp = "15",
		accuracy = "90",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "328",
		name = "Sand Tomb",
		type = PokemonData.Types.GROUND,
		power = "15",
		pp = "15",
		accuracy = "70",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "329",
		name = "Sheer Cold",
		type = PokemonData.Types.ICE,
		power = "0",
		pp = "5",
		accuracy = "30",
		category = MoveData.Categories.SPECIAL,
		variablepower = true,
	},
	{
		id = "330",
		name = "Muddy Water",
		type = PokemonData.Types.WATER,
		power = "95",
		pp = "10",
		accuracy = "85",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "331",
		name = "Bullet Seed",
		type = PokemonData.Types.GRASS,
		power = "10",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "332",
		name = "Aerial Ace",
		type = PokemonData.Types.FLYING,
		power = "60",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "333",
		name = "Icicle Spear",
		type = PokemonData.Types.ICE,
		power = "10",
		pp = "30",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "334",
		name = "Iron Defense",
		type = PokemonData.Types.STEEL,
		power = "0",
		pp = "15",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "335",
		name = "Block",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "5",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "336",
		name = "Howl",
		type = PokemonData.Types.NORMAL,
		power = "0",
		pp = "40",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "337",
		name = "Dragon Claw",
		type = PokemonData.Types.DRAGON,
		power = "80",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "338",
		name = "Frenzy Plant",
		type = PokemonData.Types.GRASS,
		power = "150",
		pp = "5",
		accuracy = "90",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "339",
		name = "Bulk Up",
		type = PokemonData.Types.FIGHTING,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "340",
		name = "Bounce",
		type = PokemonData.Types.FLYING,
		power = "85",
		pp = "5",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "341",
		name = "Mud Shot",
		type = PokemonData.Types.GROUND,
		power = "55",
		pp = "15",
		accuracy = "95",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "342",
		name = "Poison Tail",
		type = PokemonData.Types.POISON,
		power = "50",
		pp = "25",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
		iscontact = true,
	},
	{
		id = "343",
		name = "Covet",
		type = PokemonData.Types.NORMAL,
		power = "40",
		pp = "40",
		accuracy = "100",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "344",
		name = "Volt Tackle",
		type = PokemonData.Types.ELECTRIC,
		power = "120",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "345",
		name = "Magical Leaf",
		type = PokemonData.Types.GRASS,
		power = "60",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "346",
		name = "Water Sport",
		type = PokemonData.Types.WATER,
		power = "0",
		pp = "15",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "347",
		name = "Calm Mind",
		type = PokemonData.Types.PSYCHIC,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "348",
		name = "Leaf Blade",
		type = PokemonData.Types.GRASS,
		power = "70",
		pp = "15",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
		iscontact = true,
	},
	{
		id = "349",
		name = "Dragon Dance",
		type = PokemonData.Types.DRAGON,
		power = "0",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.STATUS,
	},
	{
		id = "350",
		name = "Rock Blast",
		type = PokemonData.Types.ROCK,
		power = "25",
		pp = "10",
		accuracy = "80",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "351",
		name = "Shock Wave",
		type = PokemonData.Types.ELECTRIC,
		power = "60",
		pp = "20",
		accuracy = "0",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "352",
		name = "Water Pulse",
		type = PokemonData.Types.WATER,
		power = "60",
		pp = "20",
		accuracy = "100",
		category = MoveData.Categories.SPECIAL,
	},
	{
		id = "353",
		name = "Doom Desire",
		type = PokemonData.Types.STEEL,
		power = "120",
		pp = "5",
		accuracy = "85",
		category = MoveData.Categories.PHYSICAL,
	},
	{
		id = "354",
		name = "Psycho Boost",
		type = PokemonData.Types.PSYCHIC,
		power = "140",
		pp = "5",
		accuracy = "90",
		category = MoveData.Categories.SPECIAL,
	}
}
