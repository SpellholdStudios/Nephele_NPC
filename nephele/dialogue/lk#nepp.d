// ---------------------------------------------
// Nephele P Dialogue
// ---------------------------------------------
BEGIN LK#NEPP

IF ~Global("LK#NepheleJoined","LOCALS",1)~ Kick
  SAY @0
  ++ @1 DO ~JoinParty()~ EXIT
  ++ @2 + Farewell
END

IF ~~ Farewell
  SAY @3
  IF ~~ DO ~SetGlobal("LK#NepheleJoined","LOCALS",0) EscapeAreaMove("AR2000",3860,2200,1)~ EXIT
END

IF ~Global("LK#NepheleJoined","LOCALS",0)~ Return
  SAY @4
  ++ @5 DO ~SetGlobal("LK#NepheleJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @6 + How
  ++ @7 + No
END

IF ~~ How
  SAY @8
  IF ~~ + Good
END

IF ~~ No
  SAY @9
  IF ~~ + Good
END

IF ~~ Good
  SAY @10
  IF ~~ EXIT
END