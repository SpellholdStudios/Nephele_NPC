// Adding Nephele to the Fate Spirit

EXTEND_TOP FATESP 6 #13
+ ~!Dead("Nephele") !InMyArea("Nephele") Global("LK#NepheleSummoned","GLOBAL",0)~ + @0 DO ~CreateVisualEffect("SPPORTAL",[1999.1228]) Wait(2) CreateCreature("lk#ne25",[1999.1228],1) SetGlobal("LK#NepheleSummoned","GLOBAL",1)~ GOTO 8
END
