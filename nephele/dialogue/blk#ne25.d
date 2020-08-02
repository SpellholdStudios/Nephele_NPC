// ---------------------------------------------
// Nephele ToB Banter
// ---------------------------------------------
BEGIN BLK#NE25

// Aerie -
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleAerieToB","LOCALS",0)~ THEN BAERIE25 LK#NepheleAerieToB
@0
DO ~ActionOverride("Aerie",SetGlobal("LK#NepheleAerieToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleAerieToB","LOCALS",1)~
== BLK#NE25 @1
= @2
== BAERIE25 @3
== BLK#NE25 @4
== BAERIE25 @5
== BLK#NE25 @6
= @7
EXIT

// Anomen LG
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
Alignment("Anomen",LAWFUL_GOOD)
CombatCounter(0)
Global("LK#NepheleAnomenToB","LOCALS",0)~ THEN BLK#NE25 LK#NepheleAnomenToB_LG
@8
DO ~ActionOverride("Anomen",SetGlobal("LK#NepheleAnomenToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleAnomenToB","LOCALS",1)~
== BANOME25 @9
== BLK#NE25 @10
== BANOME25 @11
== BLK#NE25 @12
EXIT

// Anomen CN
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
OR(2) 
  Alignment("Anomen",CHAOTIC_NEUTRAL)
  Alignment("Anomen",LAWFUL_NEUTRAL)
CombatCounter(0)
Global("LK#NepheleAnomenToB","LOCALS",0)~ THEN BLK#NE25 LK#NepheleAnomenToB_CN
@13
DO ~ActionOverride("Anomen",SetGlobal("LK#NepheleAnomenToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleAnomenToB","LOCALS",1)~
== BANOME25 @14
== BLK#NE25 @15
== BANOME25 @16
== BLK#NE25 @17
EXIT

// Cernd
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleCerndToB","LOCALS",0)~ THEN BCERND25 LK#NepheleCerndToB
@18
DO ~ActionOverride("Cernd",SetGlobal("LK#NepheleCerndToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleCerndToB","LOCALS",1)~
== BLK#NE25 @19
== BCERND25 @20
== BLK#NE25 @21
== BCERND25 @22
== BLK#NE25 @23
== BCERND25 @24
= @25
EXIT

// Edwin
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleEdwinToB","LOCALS",0)~ THEN BEDWIN25 LK#NepheleEdwinToB
@26
DO ~ActionOverride("Edwin",SetGlobal("LK#NepheleEdwinToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleEdwinToB","LOCALS",1)~
== BLK#NE25 @27
== BEDWIN25 @28
== BLK#NE25 @29
== BEDWIN25 @30
= @31
== BLK#NE25 @32
EXIT

// Haer'Dalis
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleHaerdalisToB","LOCALS",0)~ THEN BLK#NE25 LK#NepheleHaerdalisToB
@33
DO ~ActionOverride("Haerdalis",SetGlobal("LK#NepheleHaerdalisToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleHaerdalisToB","LOCALS",1)~
== BHAERD25 @34
== BLK#NE25 @35
== BHAERD25 @36
== BLK#NE25 @37
== BHAERD25 @38
EXIT

// Imoen
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleImoenToB","LOCALS",0)~ THEN BIMOEN25 LK#NepheleImoenToB
@39
DO ~ActionOverride("Imoen2",SetGlobal("LK#NepheleImoenToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleImoenToB","LOCALS",1)~
== BLK#NE25 @40
== BIMOEN25 @41
= @42
== BLK#NE25 @43
== BIMOEN25 @44
== BLK#NE25 @45
= @46
EXIT

// Jaheira
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleJaheiraToB","LOCALS",0)~ THEN BJAHEI25 LK#NepheleJaheiraToB
@47
DO ~ActionOverride("Jaheira",SetGlobal("LK#NepheleJaheiraToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleJaheiraToB","LOCALS",1)~
== BLK#NE25 @48
== BJAHEI25 @49
== BLK#NE25 @50
EXIT

// Jan
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleJanToB","LOCALS",0)~ THEN BJAN25 LK#NepheleJanToB
@51
DO ~ActionOverride("Jan",SetGlobal("LK#NepheleJanToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleJanToB","LOCALS",1)~
== BLK#NE25 @52
== BJAN25 @53
== BLK#NE25 @54
== BJAN25 @55
== BLK#NE25 @56
EXIT

// Keldorn
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleKeldornToB","LOCALS",0)~ THEN BLK#NE25 LK#NepheleKeldornToB
@57
DO ~ActionOverride("Keldorn",SetGlobal("LK#NepheleKeldornToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleKeldornToB","LOCALS",1)~
== BKELDO25 @58
= @59
== BLK#NE25 @60
== BKELDO25 @61
= @62
== BLK#NE25 @63
EXIT

// Korgan
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleKorganToB","LOCALS",0)~ THEN BKORGA25 LK#NepheleKorganToB
@64
DO ~ActionOverride("Korgan",SetGlobal("LK#NepheleKorganToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleKorganToB","LOCALS",1)~
== BLK#NE25 @65
== BKORGA25 @66
== BLK#NE25 @67
== BKORGA25 @68
== BLK#NE25 @69
EXIT

// Mazzy
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleMazzyToB","LOCALS",0)~ THEN BMAZZY25 LK#NepheleMazzyToB
@70
DO ~ActionOverride("Mazzy",SetGlobal("LK#NepheleMazzyToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleMazzyToB","LOCALS",1)~
== BLK#NE25 @71
== BMAZZY25 @72
== BLK#NE25 @73
= @74
EXIT

// Minsc
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleMinscToB","LOCALS",0)~ THEN BLK#NE25 LK#NepheleMinscToB
@75
DO ~ActionOverride("Minsc",SetGlobal("LK#NepheleMinscToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleMinscToB","LOCALS",1)~
== BMINSC25 @76
== BLK#NE25 @77
== BMINSC25 @78
== BLK#NE25 @79
== BMINSC25 @80
== BLK#NE25 @81
== BMINSC25 @82
== BLK#NE25 @83
== BMINSC25 @84
EXIT

// Nalia - dislikes Nephele
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleNaliaToB","LOCALS",0)~ THEN BLK#NE25 LK#NepheleNaliaToB
@85
DO ~ActionOverride("Nalia",SetGlobal("LK#NepheleNaliaToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleNaliaToB","LOCALS",1)~
== BNALIA25 @86
== BLK#NE25 @87
== BNALIA25 @88
== BLK#NE25 @89
= @90
== BNALIA25 @91
== BLK#NE25 @92
EXIT

// Sarevok
CHAIN IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleSarevokToB","LOCALS",0)~ THEN BLK#NE25 LK#NepheleSarevokToB
@93
DO ~ActionOverride("Sarevok",SetGlobal("LK#NepheleSarevokToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleSarevokToB","LOCALS",1)~
== BSAREV25 @94
== BLK#NE25 @95
== BSAREV25 @96
EXIT

// Valygar
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleValygarToB","LOCALS",0)~ THEN BLK#NE25 LK#NepheleValygarToB
@97
DO ~ActionOverride("Valygar",SetGlobal("LK#NepheleValygarToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleValygarToB","LOCALS",1)~
== BVALYG25 @98
== BLK#NE25 @99
== BVALYG25 @100
EXIT

// Viconia
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleViconiaToB","LOCALS",0)~ THEN BLK#NE25 LK#NepheleViconiaToB
@101
DO ~ActionOverride("Viconia",SetGlobal("LK#NepheleViconiaToB","LOCALS",1) ActionOverride("Nephele",SetGlobal("LK#NepheleViconiaToB","LOCALS",1)~
== BLK#NE25 @102
== BVICON25 @103
= @104
== BLK#NE25 @105
== BVICON25 @106
EXIT