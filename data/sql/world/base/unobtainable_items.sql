/*
    Adds otherwise unobtainable cosmetic items to appropriate in-world sources.
    This is intended for completionist servers that want all obtainable content available in-game.
*/

/* Tabard of Flame (WoW TCG Promotional Item) - added as a 3% drop from Ragnaros */
DELETE FROM `creature_loot_template` WHERE `Entry` = 11502 AND `Item` = 23705 AND `Reference` = 0 AND `GroupId` = 0;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(11502, 23705, 0, 3, 0, 1, 0, 1, 1, NULL);

/* Celestial Steed (Real Money Purchase) - added as a 1% drop from Gift of the Observer */
DELETE FROM `gameobject_loot_template` WHERE `Entry` = 26974 AND `Item` = 54811;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(26974, 54811, 0, 1, 0, 1, 0, 1, 1, 'Gift of the Observer - Celestial Steed');
