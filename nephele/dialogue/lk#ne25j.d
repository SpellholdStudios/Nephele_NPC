// ---------------------------------------------
// Nephele ToB Dialogues
// ---------------------------------------------
BEGIN LK#NE25J

// Soul back
IF ~Global("LK#NephToBFriendTalks","GLOBAL",2)~ n1
  SAY @0
  ++ @1 + n1.1
  ++ @2 + n1.2
  ++ @3 + n1.3
  ++ @4 + n1.4
  ++ @5 + n1.4
  ++ @6 + n1.5
END

IF ~~ n1.1
  SAY @7
  IF ~~ + n1.6
END

IF ~~ n1.2
  SAY @8
  IF ~~ + n1.6
END

IF ~~ n1.3
  SAY @9
  IF ~~ + n1.6
END

IF ~~ n1.4
  SAY @10
  IF ~~ + n1.6
END

IF ~~ n1.5
  SAY @11
  IF ~~ + n1.6
END

IF ~~ n1.6
  SAY @12
  ++ @13 + n1.9
  ++ @14 + n1.7
  ++ @15 + n1.9
  ++ @16 + n1.8
END

IF ~~ n1.7
  SAY @17
  IF ~~ + n1.9
END

IF ~~ n1.8
  SAY @18
  IF ~~ + n1.9
END

IF ~~ n1.9
  SAY @19
  ++ @20 + n1.10
  ++ @21 + n1.11
  ++ @22 + n1.12
END

IF ~~ n1.10
  SAY @23
  IF ~~ + n1.13
END

IF ~~ n1.11
  SAY @24
  IF ~~ + n1.13
END

IF ~~ n1.12
  SAY @25
  IF ~~ + n1.13
END

IF ~~ n1.13
  SAY @26
  IF ~~ DO ~SetGlobal("LK#NephToBFriendTalks","GLOBAL",3)~ EXIT
END


// Saradush
IF ~Global("LK#NephToBFriendTalks","GLOBAL",4)~ n2
  SAY @27
  ++ @28 + n2.3
  ++ @29 + n2.3
  ++ @30 + n2.1
  ++ @31 + n2.2
END

IF ~~ n2.1
  SAY @32
  IF ~~ + n2.3
END

IF ~~ n2.2
  SAY @33
  IF ~~ + n2.3
END

IF ~~ n2.3
  SAY @34
  = @35
  ++ @36 + n2.4
  ++ @37 + n2.4
  ++ @38 + n2.4
END

IF ~~ n2.4
  SAY @39
  = @40
  + ~!Dead("yaga01")~ + @41 + n2.5
  + ~!Dead("yaga01")~ + @42 + n2.5
  + ~Dead("yaga01")~ + @43 + n2.10
  ++ @44 + n2.6
  ++ @45 + n2.7
  ++ @46 + n2.9
END

IF ~~ n2.5
  SAY @47
  IF ~~ + n2.8
END

IF ~~ n2.6
  SAY @48
  IF ~~ + n2.8
END

IF ~~ n2.7
  SAY @49
  IF ~~ + n2.8
END

IF ~~ n2.8
  SAY @50
  IF ~~ DO ~SetGlobal("LK#NephToBFriendTalks","GLOBAL",5) RealSetGlobalTimer("LK#NephToBFriendTalksTimer","GLOBAL",5400)~ EXIT
END

IF ~~ n2.9
  SAY @51
  = @52
  IF ~~ DO ~SetGlobal("LK#NephToBFriendTalks","GLOBAL",5) RealSetGlobalTimer("LK#NephToBFriendTalksTimer","GLOBAL",5400)~ EXIT
END

IF ~~ n2.10
  SAY @53
  IF ~~ + n2.8
END


// pre-final; reasons for joining, pulling all the strings together talk
IF ~Global("LK#NephToBFriendTalks","GLOBAL",6)~ n3
  SAY @54
  ++ @55 + n3.2
  ++ @56 + n3.2
  ++ @57 + n3.2
  ++ @58 + n3.1
END

IF ~~ n3.1
  SAY @59
  IF ~~ + n3.2
END

IF ~~ n3.2
  SAY @60
  ++ @61 + n3.3
  ++ @62 + n3.3
  ++ @63 + n3.3
END

IF ~~ n3.3
  SAY @64
  = @65
  = @66
  ++ @67 + n3.5
  ++ @68 + n3.5
  ++ @69 + n3.5
  ++ @70 + n3.4
END

IF ~~ n3.4
  SAY @71
  IF ~~ + n3.5
END

IF ~~ n3.5
  SAY @72
  = @73
  = @74
  = @75
  = @76
  ++ @77 + n3.6
  ++ @78 + n3.7
  ++ @79 + n3.8
  ++ @80 + n3.9
  ++ @81 + n3.10
END

IF ~~ n3.6
  SAY @82
  IF ~Gender(Player1,MALE)~ + n3.11m
  IF ~Gender(Player1,FEMALE)~ + n3.11f
END

IF ~~ n3.7
  SAY @83
  IF ~Gender(Player1,MALE)~ + n3.11m
  IF ~Gender(Player1,FEMALE)~ + n3.11f
END

IF ~~ n3.8
  SAY @84
  IF ~Gender(Player1,MALE)~ + n3.11m
  IF ~Gender(Player1,FEMALE)~ + n3.11f
END

IF ~~ n3.9
  SAY @85
  IF ~Gender(Player1,MALE)~ + n3.11m
  IF ~Gender(Player1,FEMALE)~ + n3.11f
END

IF ~~ n3.10
  SAY @86
  IF ~Gender(Player1,MALE)~ + n3.11m
  IF ~Gender(Player1,FEMALE)~ + n3.11f
END

IF ~~ n3.11f
  SAY @87
  IF ~~ + n3.11n
END

IF ~~ n3.11m
  SAY @88
  IF ~~ + n3.11n
END

IF ~~ n3.11n
  SAY @89
  = @90
  = @91
  = @92
  ++ @93 + n3.15
  ++ @94 + n3.12
  ++ @95 + n3.13
  ++ @96 + n3.14
  ++ @97 + n3.13
END

IF ~~ n3.12
  SAY @98
  IF ~~ + n3.15
END

IF ~~ n3.13
  SAY @99
  IF ~~ + n3.15
END

IF ~~ n3.14
  SAY @100
  IF ~~ + n3.15
END

IF ~~ n3.15
  SAY @101
  IF ~~ DO ~SetGlobal("LK#NephToBFriendTalks","GLOBAL",7) RealSetGlobalTimer("LK#NephToBFriendTalksTimer","GLOBAL",5400)~ EXIT
END


// final: debrief and apology
IF ~Global("LK#NephToBFriendTalks","GLOBAL",8)~ n4
  SAY @102
  ++ @103 + n4.1
  ++ @104 + n4.2
  ++ @105 + n4.1
  ++ @106 + n4.3
END

IF ~~ n4.1
  SAY @107
  IF ~~ + n4.4
END

IF ~~ n4.2
  SAY @108
  IF ~~ + n4.4
END

IF ~~ n4.3
  SAY @109
  = @110
  IF ~~ + n4.4
END

IF ~~ n4.4
  SAY @111
  ++ @112 + n4.7
  ++ @113 + n4.5
  ++ @114 + n4.6
  ++ @115 + n4.7
END

IF ~~ n4.5
  SAY @116
  IF ~~ + n4.7
END

IF ~~ n4.6
  SAY @117
  IF ~~ + n4.7
END

IF ~~ n4.7
  SAY @118
  = @119
  IF ~~ DO ~SetGlobal("LK#NephToBFriendTalks","GLOBAL",9)~ EXIT
END


// ---------------------------------------------
// Nephele ToB scenery stuff
// ---------------------------------------------


// After talking to Balthazar for the first time
IF ~Global("LK#NepheleToBBalthazar","GLOBAL",1)~ nba
  SAY @120
  IF ~~ DO ~SetGlobal("LK#NepheleToBBalthazar","GLOBAL",2)~ EXIT
END


// After killing Balthazar and finding out the truth about Melissan
IF ~Global("LK#NepheleToBMel","GLOBAL",2)~ nme
  SAY @121
  IF ~~ DO ~SetGlobal("LK#NepheleToBMel","GLOBAL",3)~ + nme.1
END

IF ~~ nme.1
  SAY @122
  ++ @123 + nme.2
  ++ @124 + nme.2
  ++ @125 + nme.2
  ++ @126 + nme.3
END

IF ~~ nme.2
  SAY @127
  IF ~~ + nme.4
END

IF ~~ nme.3
  SAY @128
  IF ~~ + nme.4
END

IF ~~ nme.4
 SAY @129
 IF ~~ EXIT
END


// ---------------------------------------------
// Nephele ToB Interjections
// ---------------------------------------------

I_C_T AMBAR01 18 LK#N_ambar01
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @130
END

I_C_T AMCARRAS 7 LK#N_amcarras
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @131
END

I_C_T AMCARRAS 5 LK#N_amcarras2
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @132
END

I_C_T AMCLER01 3 LK#N_amcler01
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @133
END

I_C_T AMMAYOR 5 LK#N_ammayor
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @134
END

I_C_T AMMONK02 3 LK#N_ammonk02
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @135
END

I_C_T AMSAEMON 16 LK#N_amsaemon
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @136
END

I_C_T BAZEYE01 9 LK#N_bazeye01
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @137
END

I_C_T2 BAZMONK 3 LK#N_bazmonk
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @138
END

I_C_T BAZPAT01 16 LK#N_bazpat01
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @139
END

I_C_T HGNYA01 6 LK#N_nyalee
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @140
END

I_C_T HGNYA01 29 LK#N_nyalee2
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @141
END

I_C_T SARCNT01 6 LK#N_sarcnt01
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @142
END

I_C_T SARCNT01 9 LK#N_sarcnt011
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @143
END

EXTEND_BOTTOM SARCNT01 14
  IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ DO ~CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
CreateCreatureObjectOffScreen("sargrd03",Myself(),0,0,0)
ActionOverride("SARCNT01",Enemy())~ EXTERN LK#NE25J LK#N_sarcnt012
END

APPEND LK#NE25J
IF ~~ LK#N_sarcnt012
  SAY @144
  IF ~~ DO ~ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Anomen",LeaveParty())
ActionOverride("Anomen",Enemy())
LeaveParty()
Enemy()~ EXIT
END
END

I_C_T2 SARKIS01 36 LK#N_sarkis01
== LK#NE25J IF ~InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @145
END


// Watcher's Keep interjections

I_C_T FSSPIR2 1 LK#N_fsspir2
== LK#NE25J IF ~GlobalGT("chapter","GLOBAL",7) InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @146
END

I_C_T GORAPP1 6 LK#N_gorapp1
== LK#NE25J IF ~GlobalGT("chapter","GLOBAL",7) InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @147
END

I_C_T GORAPP1 10 LK#N_gorapp12
== LK#NE25J IF ~GlobalGT("chapter","GLOBAL",7) InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @148
END

I_C_T GORDEMO 1 LK#N_gordemo
== LK#NE25J IF ~GlobalGT("chapter","GLOBAL",7) InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @149
END

I_C_T GORDEMO 24 LK#N_gordemo1
== LK#NE25J IF ~GlobalGT("chapter","GLOBAL",7) InParty("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @150
END


// Advice on Godhood
INTERJECT_COPY_TRANS FINSOL01 27 LK#Nephele_FinSol
  == LK#NE25J @151
  = @152
END


// Post Decision Comment
EXTEND_BOTTOM FINSOL01 29
  IF ~InParty("Nephele") Global("LK#NephelePCGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#NephelePCGod","GLOBAL",1)~ EXTERN LK#NE25J LK#NephelePCGodNE
END

EXTEND_BOTTOM FINSOL01 30
  IF ~InParty("Nephele") Global("LK#NephelePCGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#NephelePCGod","GLOBAL",1)~ EXTERN LK#NE25J LK#NephelePCGodNE
END

EXTEND_BOTTOM FINSOL01 31
  IF ~InParty("Nephele") Global("LK#NephelePCGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#NephelePCGod","GLOBAL",1)~ EXTERN LK#NE25J LK#NephelePCGod
END

EXTEND_BOTTOM FINSOL01 32
  IF ~InParty("Nephele") Global("LK#NephelePCNotGod","GLOBAL",0)~ THEN DO ~SetGlobal("LK#NephelePCNotGod","GLOBAL",1)~ EXTERN LK#NE25J LK#NephelePCNotGod
END

APPEND LK#NE25J
  IF ~~ LK#NephelePCGodNE
    SAY @153
    = @154
    COPY_TRANS FINSOL01 29
  END

  IF ~~ LK#NephelePCGod
    SAY @153
    = @154
    COPY_TRANS FINSOL01 31
  END

  IF ~~ LK#NephelePCNotGod
    SAY @155
    COPY_TRANS FINSOL01 32
  END
END


// Volo
EXTEND_TOP SARVOLO 9 #17
  + ~InParty("Nephele")~ + @156 + LK#Nephele_Volo_0
END

APPEND SARVOLO
IF ~~ LK#Nephele_Volo_0
    SAY @157
    IF ~~ EXTERN LK#NE25J LK#Nephele_Volo_1
  END
END


APPEND LK#NE25J
  IF ~~ LK#Nephele_Volo_1
    SAY @158
    IF ~~ EXTERN SARVOLO 9
  END
END

