--Moves Alliance transport NPCs to their proper position
UPDATE `creature` SET `map`=1628, `zoneId`=0, `areaId`=0, `position_x`=6.30092, `position_y`=-6.32671, `position_z`=5.06364, `orientation`=5.38974 WHERE `guid`=294697 AND `id`=101084;
UPDATE `creature` SET `map`=1628, `zoneId`=0, `areaId`=0, `position_x`=1.24169, `position_y`=-6.66021, `position_z`=5.09145, `orientation`=1.50381 WHERE `guid`=294694 AND `id`=101086;

--Alliance stage 1, conversation 3: These lines are out of order
UPDATE `conversation_data` SET `idx`=1, `textId`=9489 WHERE  `entry`=925 AND `id`=2295;
UPDATE `conversation_data` SET `idx`=2, `textId`=12105 WHERE  `entry`=925 AND `id`=2296;
UPDATE `conversation_data` SET `idx`=0, `textId`=0 WHERE  `entry`=925 AND `id`=2297;

--Remove redundant script that never runs
UPDATE `spell_scene` SET `ScriptName`='' WHERE  `SceneScriptPackageID`=1531 AND `MiscValue`=1157;

--Raising Z of entrance teleport prevents players from falling into the boat
UPDATE `lfg_entrances` SET `position_z`=6.00753 WHERE  `dungeonId`=1027;