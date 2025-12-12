CREATE TEMPORARY TABLE temp_swap AS
SELECT Id, Title_loc9, Details_loc9, Objectives_loc9, OfferRewardText_loc9, RequestItemsText_loc9, EndText_loc9, CompletedText_loc9, QuestGiverTextWindow_loc9, QuestGiverTargetName_loc9, QuestTurnTextWindow_loc9, QuestTurnTargetName_loc9, Title_loc10, Details_loc10, Objectives_loc10, OfferRewardText_loc10, RequestItemsText_loc10, EndText_loc10, CompletedText_loc10, QuestGiverTextWindow_loc10, QuestGiverTargetName_loc10, QuestTurnTextWindow_loc10, QuestTurnTargetName_loc10
FROM locales_quest;

UPDATE locales_quest lq
INNER JOIN temp_swap tmp ON lq.Id = tmp.Id
SET lq.Title_loc9 = tmp.Title_loc10, lq.Details_loc9 = tmp.Details_loc10, lq.Objectives_loc9 = tmp.Objectives_loc10, lq.OfferRewardText_loc9 = tmp.OfferRewardText_loc10, lq.RequestItemsText_loc9 = tmp.RequestItemsText_loc10, lq.EndText_loc9 = tmp.EndText_loc10, lq.CompletedText_loc9 = tmp.CompletedText_loc10, lq.QuestGiverTextWindow_loc9 = tmp.QuestGiverTextWindow_loc10, lq.QuestGiverTargetName_loc9 = tmp.QuestGiverTargetName_loc10, lq.QuestTurnTextWindow_loc9 = tmp.QuestTurnTextWindow_loc10, lq.QuestTurnTargetName_loc9 = tmp.QuestTurnTargetName_loc10, lq.Title_loc10 = tmp.Title_loc9, lq.Details_loc10 = tmp.Details_loc9, lq.Objectives_loc10 = tmp.Objectives_loc9, lq.OfferRewardText_loc10 = tmp.OfferRewardText_loc9, lq.RequestItemsText_loc10 = tmp.RequestItemsText_loc9, lq.EndText_loc10 = tmp.EndText_loc9, lq.CompletedText_loc10 = tmp.CompletedText_loc9, lq.QuestGiverTextWindow_loc10 = tmp.QuestGiverTextWindow_loc9, lq.QuestGiverTargetName_loc10 = tmp.QuestGiverTargetName_loc9, lq.QuestTurnTextWindow_loc10 = tmp.QuestTurnTextWindow_loc9, lq.QuestTurnTargetName_loc10 = tmp.QuestTurnTargetName_loc9;

DROP TEMPORARY TABLE IF EXISTS temp_swap;

SELECT COUNT(*) AS Total FROM locales_quest;

