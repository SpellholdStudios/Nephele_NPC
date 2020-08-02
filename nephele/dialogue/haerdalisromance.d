APPEND LK#NEPJ

IF ~Global("LK#Neph_haerdalisromance","GLOBAL",2)~ h1
  SAY @0
  ++ @1 DO ~SetGlobal("LK#Neph_haerdalisromance","GLOBAL",3)~ + h2
  ++ @2 DO ~SetGlobal("LK#Neph_haerdalisromance","GLOBAL",3)~ + h2
  ++ @3 DO ~SetGlobal("LK#Neph_haerdalisromance","GLOBAL",3)~ + h3
  ++ @4 DO ~SetGlobal("LK#Neph_haerdalisromance","GLOBAL",3)~ + h3
END

IF ~~ h2
  SAY @5
  = @6
  = @7
  ++ @8 + h4
  ++ @9 + h5
  ++ @10 + h6
  ++ @11 + h6
END

IF ~~ h3
  SAY @12
  IF ~~ EXIT
END

IF ~~ h4
  SAY @13
  IF ~~ + h7
END

IF ~~ h5
  SAY @14
  IF ~~ + h7
END

IF ~~ h6
  SAY @15
  IF ~~ + h7
END

IF ~~ h7
  SAY @16
  IF ~~ EXIT
END

END