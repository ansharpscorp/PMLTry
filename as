=IF(LEN(A2)-LEN(SUBSTITUTE(LEFT(A2,FIND("@",A2)-1),".",""))=2,
    TRIM(MID(LEFT(A2,FIND("@",A2)-1),FIND("~",SUBSTITUTE(LEFT(A2,FIND("@",A2)-1),".","~",2))+1,LEN(A2)))
    & ", " & 
    TRIM(LEFT(LEFT(A2,FIND("@",A2)-1),FIND(".",LEFT(A2,FIND("@",A2)-1))-1)) 
    & " " & 
    TRIM(MID(LEFT(A2,FIND("@",A2)-1),FIND(".",LEFT(A2,FIND("@",A2)-1))+1,FIND("~",SUBSTITUTE(LEFT(A2,FIND("@",A2)-1),".","~",1))-FIND(".",LEFT(A2,FIND("@",A2)-1))-1)),
IF(LEN(A2)-LEN(SUBSTITUTE(LEFT(A2,FIND("@",A2)-1),".",""))=1,
    MID(LEFT(A2,FIND("@",A2)-1),FIND(".",LEFT(A2,FIND("@",A2)-1))+1,LEN(A2))
    & ", " & 
    LEFT(LEFT(A2,FIND("@",A2)-1),FIND(".",LEFT(A2,FIND("@",A2)-1))-1),
LEFT(A2,FIND("@",A2)-1)))
