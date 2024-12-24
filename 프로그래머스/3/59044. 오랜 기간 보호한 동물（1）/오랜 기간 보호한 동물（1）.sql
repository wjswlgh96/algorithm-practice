SELECT I.NAME,
       I.DATETIME
FROM ANIMAL_INS AS I
WHERE I.ANIMAL_ID NOT IN(
    SELECT O.ANIMAL_ID
    FROM ANIMAL_OUTS AS O
)
ORDER BY I.DATETIME ASC
LIMIT 3