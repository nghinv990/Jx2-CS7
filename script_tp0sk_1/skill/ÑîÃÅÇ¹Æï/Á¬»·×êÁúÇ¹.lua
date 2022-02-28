--技能: 连环钻龙枪

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
	--技能属性

	SKILL_LEVEL_BASE_ATTRIB	  =	--技能等级相关基本属性
	{
	{"skill_effect_persist_time",{{1,3},{20,3}}},
	{"skill_display_persist_time",{{1,5},{9,9},{10,9},{11,10},{20,10}}},
	{"skill_need_practice",{{1,0},{4,0},{5,1},{9,1},{10,0},{20,0}}},
	{"skill_level_practice",{{1,0},{5,0},{6,100},{10,100},{11,0},{20,0}}},
	},

	SKILL_LEVEL_COST_ATTRIB	  =	--技能等级相关消耗属性
	{
	{"cost_momentum",{{1,0},{2,0},{10,0},{11,0},{15,0},{16,0},{20,0}}},
	},

	SKILL_LEVEL_MISSLE_ATTRIB =	--技能等级相关子弹属性
	{
	{"skill_param1",{{1,-11},{20,-11}}},
	{"skill_param2",{{1,9},{20,9}}},
	},

	--魔法属性

	--属性值:	普通攻击力 * X + (1 + 技能等级 * Y) * (力量 * A + 根骨 * B + 身法 * C + 内功 * D + 洞察 * E)
	--			+ 武器外功攻击点 * F + Z
	--			(其中,A,B,C,D,E,F,X,Y,Z为伤害因素.除Z外,其余各伤害因素为百分比数.)

	--成功几率:	(属性值 * A + (自身等级 - 对方等级) * B + 技能等级 * C) * D + X
	--			(其中,A,B,C,D,X为几率因素.除X外,其余各几率因素为百分比数.)

	SKILL_MAGIC_DAMAGE_ATTRIB =	--技能等级相关伤害魔法属性
	{
	{magic="damage_reserved",
	damage_factor_z={{1,4},{20,4}},
	},
	{magic="damage_life_monster",
	damage_factor_z={{1,1000},{9,1800},{10,2000},{20,3000}},
	},
	},

	SKILL_MAGIC_STATE_ATTRIB  =	--技能等级相关状态魔法属性
	{
	{magic="state_slow",
	damage_factor_z={{1,0},{10,0},{11,30},{20,75}},
	},
	{magic="state_block_qinggong",
	probability_factor_x={{1,0},{10,0},{11,5},{12,5},{13,10},{14,10},{15,15},{16,15},{17,20},{18,20},{19,25},{20,30}},
	},
	},

	SKILL_MAGIC_IMME_ATTRIB   =	--技能等级相关立即魔法属性
	{
	{magic="imme_life_percent_damage",
	damage_factor_z={{1,5},{9,9},{10,10},{11,11},{19,15},{20,15}},
	},
	},
}
