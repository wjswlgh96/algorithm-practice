SELECT PARENT.ID,
       COALESCE(CHILD.CHILD_COUNT, 0) AS CHILD_COUNT
FROM ECOLI_DATA AS PARENT
LEFT JOIN (
    SELECT PARENT_ID,
           COUNT(*) AS CHILD_COUNT
    FROM ECOLI_DATA
    WHERE PARENT_ID IS NOT NULL
    GROUP BY 1
) AS CHILD ON  PARENT.ID = CHILD.PARENT_ID
ORDER BY PARENT.ID