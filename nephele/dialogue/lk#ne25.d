// ---------------------------------------------
// Nephele ToB Summoned Dialogue
// ---------------------------------------------
BEGIN LK#NE25

IF ~NumTimesTalkedTo(0)~ n
  SAY @0
  IF ~~ DO ~SetGlobal("LK#NepheleToBIntro","GLOBAL",1)~ + n.0
END

IF ~~ n.0
  SAY @1
  ++ @2 + n.1
  ++ @3 + n.2
  ++ @4 + n.3
  ++ @5 + n.4
END

IF ~~ n.1
  SAY @6
  ++ @7 + n.5
  ++ @8 + n.6
  ++ @9 + n.8
END

IF ~~ n.2
  SAY @10
  ++ @11 + n.1
  ++ @12 + n.1
  ++ @13 + n.7
END

IF ~~ n.3
  SAY @14
  ++ @11 + n.1
  ++ @12 + n.1
  ++ @13 + n.7
END

IF ~~ n.4
  SAY @15
  ++ @7 + n.5
  ++ @8 + n.6
  ++ @9 + n.8
END

IF ~~ n.5
  SAY @16
  IF ~~ DO ~SetGlobal("LK#NepheleJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ n.6
  SAY @17
  IF ~~ DO ~MoveToPoint([2434.1180]) Face(1)~ EXIT
END

IF ~~ n.7
  SAY @18
  IF ~~ DO ~MoveToPoint([2434.1180]) Face(1)~ EXIT
END

IF ~~ n.8
  SAY @19
  IF ~~ DO ~MoveToPoint([2434.1180]) Face(1)~ EXIT
END


IF ~NumTimesTalkedToGT(0)~ n1
  SAY @20
  ++ @7 + n.5
  ++ @8 + n1.1
END

IF ~~ n1.1
  SAY @21
  IF ~~ EXIT
END