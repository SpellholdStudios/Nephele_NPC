// ---------------------------------------------
// Nephele Out of Party dialogue
// ---------------------------------------------
BEGIN LK#NEPH

// Joining Dialogue
IF ~Global("LK#NephIntro","AR2010",0)~ LK#NJ_0
  SAY @0
  = @1
  ++ @2 DO ~SetGlobal("LK#NephIntro","AR2010",1)~ + LK#NJ_1
  + ~Gender(Player1,MALE)~ + @3 DO ~SetGlobal("LK#NephIntro","AR2010",1)~ + LK#NJ_2_0
  + ~Gender(Player1,FEMALE)~ + @3 DO ~SetGlobal("LK#NephIntro","AR2010",1)~ + LK#NJ_2_1
  ++ @4 DO ~SetGlobal("LK#NephIntro","AR2010",1)~ + LK#NJ_3
END

IF ~~ LK#NJ_1
  SAY @5
  IF ~~ GOTO LK#NJ_4
END

IF ~~ LK#NJ_2_0
  SAY @6
  ++ @7 + LK#NJ_5
  ++ @8 + LK#NJ_6
  ++ @9 + LK#NJ_7
  ++ @10 + LK#NJ_8
  ++ @11 + LK#NJ_9
END

IF ~~ LK#NJ_2_1
  SAY @12
  ++ @13 + LK#NJ_10
  ++ @11 + LK#NJ_9
  ++ @7 + LK#NJ_5
  ++ @8 + LK#NJ_6
  ++ @9 + LK#NJ_7
  ++ @10 + LK#NJ_8
END
  
IF ~~ LK#NJ_3
  SAY @14
  IF ~~ GOTO LK#NJ_4
END

IF ~~ LK#NJ_4
  SAY @15
  = @16
  ++ @17 + LK#NJ_5
  ++ @8 + LK#NJ_6
  ++ @9 + LK#NJ_7
  ++ @11 + LK#NJ_9
END

IF ~~ LK#NJ_5
  SAY @18
  ++ @19 + LK#NJ_11
  ++ @20 + LK#NJ_11
  ++ @21 + LK#NJ_12
  ++ @22 + LK#NJ_13
END

IF ~~ LK#NJ_6
  SAY @23
  ++ @19 + LK#NJ_11
  ++ @20 + LK#NJ_11
  ++ @21 + LK#NJ_12
  ++ @22 + LK#NJ_13
END

IF ~~ LK#NJ_7
  SAY @24
  IF ~~ EXIT
END

IF ~~ LK#NJ_8
  SAY @25
  ++ @19 + LK#NJ_11
  ++ @20 + LK#NJ_11
  ++ @21 + LK#NJ_12
  ++ @22 + LK#NJ_13
END

IF ~~ LK#NJ_9
  SAY @26
  ++ @19 + LK#NJ_11
  ++ @20 + LK#NJ_11
  ++ @21 + LK#NJ_12
  ++ @22 + LK#NJ_13
END

IF ~~ LK#NJ_10
  SAY @27
  IF ~~ GOTO LK#NJ_9
END

IF ~~ LK#NJ_11
  SAY @28
  IF ~~ GOTO LK#NJ_14
END

IF ~~ LK#NJ_12
  SAY @29
  IF ~~ EXIT
END

IF ~~ LK#NJ_13
  SAY @30
  IF ~~ GOTO LK#NJ_14
END

IF ~~ LK#NJ_14
  SAY @31
  ++ @32 + LK#NJ_12
  ++ @33 + LK#NJ_15
  ++ @34 + LK#NJ_16
END

IF ~~ LK#NJ_15
  SAY @35
  IF ~~ DO ~SetGlobal("LK#NepheleJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ LK#NJ_16
  SAY @36
  IF ~~ DO ~SetGlobal("LK#NepheleJoined","LOCALS",1) JoinParty()~ EXIT
END


IF ~Global("LK#NephIntro","AR2010",1)~ Return
  SAY @37
  ++ @38 DO ~SetGlobal("LK#NepheleJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @39 + How
  ++ @40 + No
END

IF ~~ How
  SAY @41
  IF ~~ + Good
END

IF ~~ No
  SAY @42
  IF ~~ + Good
END

IF ~~ Good
  SAY @43
  IF ~~ EXIT
END