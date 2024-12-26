SELECT AP.APNT_NO,
       PT.PT_NAME,
       PT.PT_NO,
       AP.MCDP_CD,
       DR.DR_NAME,
       APNT_YMD
FROM APPOINTMENT AS AP
INNER JOIN PATIENT AS PT ON AP.PT_NO = PT.PT_NO
INNER JOIN DOCTOR AS DR ON AP.MDDR_ID = DR.DR_ID
WHERE APNT_YMD LIKE '2022-04-13%' AND APNT_CNCL_YN = 'N' AND AP.MCDP_CD = 'CS'
ORDER BY APNT_YMD ASC