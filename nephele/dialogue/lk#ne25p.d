// ---------------------------------------------
// Nephele P Dialogue
// ---------------------------------------------
BEGIN LK#NE25P

// Kicked Out
IF ~Global("LK#NepheleJoined","LOCALS",1)~ LK#Nephele_KO
  SAY @0
  ++ @1 DO ~SetGlobal("LK#NepheleJoined","LOCALS",1) JoinParty()~ EXIT
  + ~AreaCheck("AR4500")~ + @2 DO ~SetGlobal("LK#NepheleJoined","LOCALS",0) MoveToPointNoInterrupt([1585.1374]) Face(0)~ EXIT
  + ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @3 DO ~SetGlobal("LK#NepheleJoined","LOCALS",0) CreateVisualEffectObject("SPDIMNDR",Myself) Wait(2) MoveBetweenAreas("AR4500",[2434.1180],1)~ EXIT
  + ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @4 DO ~SetGlobal("LK#NepheleJoined","LOCALS",0)~ + LK#Nephele_KO_1
END

IF ~~ LK#Nephele_KO_1
  SAY @5
  IF ~~ EXIT
END

// Rejoining
IF ~Global("LK#NepheleJoined","LOCALS",0)~ LK#Nephele_Rejoin
  SAY @6
  ++ @7 + LK#Nephele_Rejoin1
  ++ @8 + LK#Nephele_KO_1
END

IF ~~ THEN BEGIN LK#Nephele_Rejoin1
  SAY @9
  IF ~~ THEN DO ~SetGlobal("LK#NepheleJoined","LOCALS",1) JoinParty()~ EXIT
END
