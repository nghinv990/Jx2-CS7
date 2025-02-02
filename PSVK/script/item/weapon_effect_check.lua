-- 脚本名称：灵魄开启脚本
-- 脚本功能：点击灵魄开启的回调脚本，主要用于开启条件的判断
-- 代码开发人：刘宇斌
-- 代码开发时间：2010-3-23
-- 代码修改记录：
Include("\\script\\online_activites\\reborn\\effect\\head.lua")
Include("\\script\\weaponeffect\\ling_add_main.lua")
Include("\\script\\lib\\globalfunctions.lua")

function main(aptitude_name)
    if aptitude_name == "拂晓" or aptitude_name == "破晓" or aptitude_name == "Tu蕁 D藅" or aptitude_name ==
        "Chc Nh藅" or aptitude_name == "B竎h Chi課" or aptitude_name == "eff16" or aptitude_name == "eff17" or
        aptitude_name == "eff18" or aptitude_name == "eff19" or aptitude_name == "eff20" or aptitude_name == "eff21" or
        aptitude_name == "eff22" or aptitude_name == "eff23" or aptitude_name == "eff24" or aptitude_name == "eff25" or
        aptitude_name == "eff26" or aptitude_name == "eff27" or aptitude_name == "eff28" or aptitude_name == "eff29" or
        aptitude_name == "eff30" or aptitude_name == "eff31" or aptitude_name == "eff32" or aptitude_name == "eff33" or
        aptitude_name == "eff34" or aptitude_name == "eff35" or aptitude_name == "eff36" or aptitude_name == "eff37" or
        aptitude_name == "eff38" or aptitude_name == "eff39" or aptitude_name == "eff40" or aptitude_name == "eff41" or
        aptitude_name == "eff42" then
        if GetLevel() < 73 or gf_Check55MaxSkill() == 0 then
            Talk(1, "",
                "<color=green>Nh綾 nh�<color>: Hi謓 kh玭g th� p 鴑g 甶襲 ki謓 k輈h ho箃 Linh ph竎h <color=yellow>" ..
                    aptitude_name ..
                    "<color>. C竎 h� c莕 ph秈 t ng c蕄 73 tr� l猲 v� th玭g th筼 k� n╪g c蕄 55.")
            return 1
        else
            return 1
        end
    end
    if aptitude_name == "H祇 m玭" or --
    aptitude_name == "筺 Giao" or --
    aptitude_name == "Ph莕 V﹏" or --
    aptitude_name == "Ph� Qu﹏" then
        if GetItemCount(2, 0, 30002) < 1 and --
        GetItemCount(2, 0, 30003) < 1 and --
        GetItemCount(2, 0, 30005) < 1 and --
        GetItemCount(2, 0, 30006) < 1 then --
            Talk(1, "",
                "<color=green>Nh綾 nh�<color>: Hi謓 kh玭g th� p 鴑g 甶襲 ki謓 k輈h ho箃 Linh ph竎h <color=yellow>" ..
                    aptitude_name .. "<color>. Kh玭g c� 蕁 t輓 trong h祅h trang c馻 b筺.")
            return 1
        end
    elseif aptitude_name == "L筩 H�" then
        if GetItemCount(2, 0, 30001) < 1 then
            Talk(1, "",
                "<color=green>Nh綾 nh�<color>: Hi謓 kh玭g th� p 鴑g 甶襲 ki謓 k輈h ho箃 Linh ph竎h <color=yellow>" ..
                    aptitude_name .. "<color>. Kh玭g c� V� l﹎ th藀 nh� s� trong h祅h trang c馻 b筺.")
            return 1
        end
    else
        Talk(1, "",
            "<color=green>Nh綾 nh�<color>: Hi謓 kh玭g th� p 鴑g 甶襲 ki謓 k輈h ho箃 Linh ph竎h <color=yellow>" ..
                aptitude_name .. "<color>.")
        return 0
    end
    -- 灵魄开启条件判断
    return 1;
end
