SELECT ITI.ITEM_ID,
       ITI.ITEM_NAME,
       ITI.RARITY
FROM ITEM_INFO AS ITI
LEFT JOIN ITEM_TREE AS ITT ON ITI.ITEM_ID = ITT.PARENT_ITEM_ID
WHERE ITT.ITEM_ID IS NULL
ORDER BY ITI.ITEM_ID DESC