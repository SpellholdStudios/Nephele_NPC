// ---------------------------------------------
// Nephele Banters
// ---------------------------------------------
BEGIN BLK#NEP

// Aerie (Quayle dead)
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
// Quayle dead
Dead("quayle")
Global("LK#NepheleAerie_Quayle","LOCALS",0)~ THEN BLK#NEP LK#NepheleAerie_1
@0
DO ~ActionOverride("Aerie",SetGlobal("LK#NepheleAerie_Quayle","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleAerie_Quayle","LOCALS",1))~
== BAERIE @1
== BLK#NEP @2
== BAERIE @3
= @4
== BLK#NEP @5
= @6
== BAERIE @7
== BLK#NEP @8
== BAERIE @9
== BLK#NEP @10
EXIT

// Aerie 1
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleAerie","LOCALS",0)~ THEN BAERIE LK#NepheleAerie_2
@11
DO ~ActionOverride("Aerie",SetGlobal("LK#NepheleAerie","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleAerie","LOCALS",1))~
== BLK#NEP @12
== BAERIE @13
== BLK#NEP @14
== BAERIE @15
== BLK#NEP @16
= @17
== BAERIE @18
== BLK#NEP @19
EXIT

// Aerie (in Haer'Dalis romance), advises against getting entangled with Haer'Dalis - not stable, not dependable
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("HaerdalisRomanceActive","GLOBAL",2)
Global("LK#NepheleAerie_haerdalis","LOCALS",0)~ THEN BLK#NEP LK#NepheleAerie_haerdalis
@20
DO ~ActionOverride("Aerie",SetGlobal("LK#NepheleAerie_haerdalis","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleAerie_haerdalis","LOCALS",1))~
== BAERIE @21
== BLK#NEP @22
== BAERIE @23
== BLK#NEP @24
== BAERIE @25
== BLK#NEP @26
== BAERIE @27
== BLK#NEP @28
EXIT

// Anomen 1 - reminds her of one of her children
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleAnomen","LOCALS",0)~ THEN BLK#NEP LK#NepheleAnomen_1
@29
DO ~ActionOverride("Anomen",SetGlobal("LK#NepheleAnomen","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleAnomen","LOCALS",1))~
== BLK#NEP @30
== BANOMEN @31
== BLK#NEP @32
== BANOMEN @33
EXIT

// Anomen lawful good
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
Alignment("Anomen",LAWFUL_GOOD)
CombatCounter(0)
Global("LK#NepheleAnomen_lg","LOCALS",0)~ THEN BLK#NEP LK#NepheleAnomen_lg
@34
DO ~ActionOverride("Anomen",SetGlobal("LK#NepheleAnomen_lg","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleAnomen_lg","LOCALS",1))~
== BANOMEN @35
== BLK#NEP @36
= @37
== BANOMEN @38
== BLK#NEP @39
EXIT

// Anomen chaotic neutral
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
Alignment(Myself,CHAOTIC_NEUTRAL)
CombatCounter(0)
Global("LK#NepheleAnomen_cn","LOCALS",0)~ THEN BANOMEN LK#NepheleAnomen_cn
@40
DO ~ActionOverride("Anomen",SetGlobal("LK#NepheleAnomen_cn","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleAnomen_cn","LOCALS",1))~
== BLK#NEP @41
== BANOMEN @42
== BLK#NEP @43
EXIT

// Cernd 1
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("CerndBaby","GLOBAL",1)
Global("LK#NepheleCernd","LOCALS",0)~ THEN BCERND LK#NepheleCernd_1
@44
DO ~ActionOverride("Cernd",SetGlobal("LK#NepheleCernd","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleCernd","LOCALS",1))~
== BLK#NEP @45
== BCERND @46
== BLK#NEP @47
== BCERND @48
== BLK#NEP @49
== BCERND @50
== BLK#NEP @51
EXIT

// Cernd 2
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleCernd","LOCALS",1)~ THEN BCERND LK#NepheleCernd_2
@52
DO ~ActionOverride("Cernd",SetGlobal("LK#NepheleCernd","LOCALS",2)) ActionOverride("Nephele",SetGlobal("LK#NepheleCernd","LOCALS",2))~
== BLK#NEP @53
== BCERND @54
= @55
= @56
== BLK#NEP @57
== BCERND @58
== BLK#NEP @59
== BCERND @60
EXIT


// Edwin 1
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
CombatCounter(0)
// Edwin has scroll
Global("LK#NepheleEdwin","LOCALS",0)~ THEN BEDWIN LK#NepheleEdwin_1
@61
DO ~ActionOverride("Edwin",SetGlobal("LK#NepheleEdwin","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleEdwin","LOCALS",1))~
== BLK#NEP @62
== BEDWIN @63
== BLK#NEP @64
== BEDWIN @65
== BLK#NEP @66
== BEDWIN @67
EXIT

// Edwin 2
CHAIN IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",FEMALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleEdwin_Dress","LOCALS",0)~ THEN BLK#NEP LK#NepheleEdwin_2
@68
DO ~ActionOverride("Edwin",SetGlobal("LK#NepheleEdwin_Dress","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleEdwin_Dress","LOCALS",1))~
== BEDWIN @69
== BLK#NEP @70
== BEDWIN @71
== BLK#NEP @72
== BEDWIN @73
EXIT


// Haerdalis 1
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
Global("HaerDalisFree","GLOBAL",2)
CombatCounter(0)
Global("LK#NepheleHaerdalis","LOCALS",0)~ THEN BLK#NEP LK#NepheleHaerdalis_1
@74
DO ~ActionOverride("Haerdalis",SetGlobal("LK#NepheleHaerdalis","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleHaerdalis","LOCALS",1))~
== BHAERDA @75
== BLK#NEP @76
== BHAERDA @77
== BLK#NEP @78
== BHAERDA @79
== BLK#NEP @80
== BHAERDA @81
== BLK#NEP @82
EXIT

// Haerdalis 2
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleHaerdalis","LOCALS",1)~ THEN BHAERDA LK#NepheleHaerdalis_2
@83
DO ~ActionOverride("Haerdalis",SetGlobal("LK#NepheleHaerdalis","LOCALS",2)) ActionOverride("Nephele",SetGlobal("LK#NepheleHaerdalis","LOCALS",2))~
== BLK#NEP @84
== BHAERDA @85
== BLK#NEP @86
== BHAERDA @87
== BLK#NEP @88
= @89
= @90
== BHAERDA @91
== BLK#NEP @92
EXIT


// Imoen 1
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleImoen","LOCALS",0)~ THEN BLK#NEP LK#NepheleImoen_1
@93
DO ~ActionOverride("Imoen2",SetGlobal("LK#NepheleImoen","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleImoen","LOCALS",1))~
== BIMOEN2 @94
== BLK#NEP @95
= @96
== BIMOEN2 @97
== BLK#NEP @98
== BIMOEN2 @99
== BLK#NEP @100
== BIMOEN2 @101
== BLK#NEP @102
EXIT


// Jaheira 1
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleJaheira","LOCALS",0)~ THEN BLK#NEP LK#NepheleJaheira_1
@103
DO ~ActionOverride("Jaheira",SetGlobal("LK#NepheleJaheira","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleJaheira","LOCALS",1))~
== BJAHEIR @104
== BLK#NEP @105
== BJAHEIR @106
EXIT


// Jaheira 2
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleJaheira","LOCALS",1)~ THEN BLK#NEP LK#NepheleJaheira_2
@107
DO ~ActionOverride("Jaheira",SetGlobal("LK#NepheleJaheira","LOCALS",2)) ActionOverride("Nephele",SetGlobal("LK#NepheleJaheira","LOCALS",2))~
== BJAHEIR @108
== BLK#NEP @109
= @110
== BJAHEIR @111
EXIT


// Jaheira In Romance
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleJaheira_Romance","LOCALS",0)
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN BLK#NEP LK#NepheleJaheira_Romance
@112
DO ~ActionOverride("Jaheira",SetGlobal("LK#NepheleJaheira_Romance","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleJaheira_Romance","LOCALS",1))~
== BJAHEIR @113
== BLK#NEP @114
== BJAHEIR @115
= @116
== BLK#NEP @117
EXIT


// Jan -
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleJan","LOCALS",0)~ THEN BJAN LK#NepheleJan_1
@118
DO ~ActionOverride("Jan",SetGlobal("LK#NepheleJan","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleJan","LOCALS",1))~
== BLK#NEP @119
== BJAN @120
== BLK#NEP @121
== BJAN @122
== BLK#NEP @123
== BJAN @124
= @125
== BLK#NEP @126
== BJAN @127
EXIT


// Keldorn 1
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleKeldorn","LOCALS",0)~ THEN BLK#NEP LK#NepheleKeldorn_1
@128
DO ~ActionOverride("Keldorn",SetGlobal("LK#NepheleKeldorn","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleKeldorn","LOCALS",1))~
== BKELDOR @129
== BLK#NEP @130
== BKELDOR @131
== BLK#NEP @132
== BKELDOR @133
EXIT

// Keldorn 2
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleKeldorn","LOCALS",1)~ THEN BLK#NEP LK#NepheleKeldorn_2
@134
DO ~ActionOverride("Keldorn",SetGlobal("LK#NepheleKeldorn","LOCALS",2)) ActionOverride("Nephele",SetGlobal("LK#NepheleKeldorn","LOCALS",2))~
== BKELDOR @135
== BLK#NEP @136
== BKELDOR @137
EXIT


// Korgan 1
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleKorgan","LOCALS",0)~ THEN BKORGAN LK#NepheleKorgan_1
@138
DO ~ActionOverride("Korgan",SetGlobal("LK#NepheleKorgan","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleKorgan","LOCALS",1))~
== BLK#NEP @139
== BKORGAN @140
== BLK#NEP @141
EXIT


// Mazzy 1
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleMazzy","LOCALS",0)~ THEN BLK#NEP LK#NepheleMazzy_1
@142
DO ~ActionOverride("Mazzy",SetGlobal("LK#NepheleMazzy","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleMazzy","LOCALS",1))~
== BMAZZY @143
= @144
== BLK#NEP @145
== BMAZZY @146
== BLK#NEP @147
== BMAZZY @148
EXIT

// Mazzy 2 - nice to be travelling with a halfling again, it's just not the same. Mazzy knows of one of Neph's travelling companions.
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleMazzy","LOCALS",1)~ THEN BLK#NEP LK#NepheleMazzy_2
@149
DO ~ActionOverride("Mazzy",SetGlobal("LK#NepheleMazzy","LOCALS",2)) ActionOverride("Nephele",SetGlobal("LK#NepheleMazzy","LOCALS",2))~
== BMAZZY @150
== BLK#NEP @151
== BMAZZY @152
== BLK#NEP @153
== BMAZZY @154
EXIT


// Minsc 1
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleMinsc","LOCALS",0)~ THEN BLK#NEP LK#NepheleMinsc_1
@155
DO ~ActionOverride("Minsc",SetGlobal("LK#NepheleMinsc","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleMinsc","LOCALS",1))~
== BMINSC @156
= @157
== BLK#NEP @158
== BMINSC @159
== BLK#NEP @160
== BMINSC @161
= @162
== BLK#NEP @163
= @164
== BMINSC @165
EXIT


// Minsc 2
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleMinsc","LOCALS",1)~ THEN BMINSC LK#NepheleMinsc_2
@166
DO ~ActionOverride("Minsc",SetGlobal("LK#NepheleMinsc","LOCALS",2)) ActionOverride("Nephele",SetGlobal("LK#NepheleMinsc","LOCALS",2))~
== BLK#NEP @167
== BMINSC @168
== BLK#NEP @169
== BMINSC @170
= @171
EXIT


// Nalia 1
// Nalia has a cold; Nephele gives her a herbal potion; timer started (one_day)
CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleNalia","GLOBAL",0)~ THEN BNALIA LK#NepheleNalia_1
@172
DO ~ActionOverride("Nalia",SetGlobal("LK#NepheleNalia","GLOBAL",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleNalia","GLOBAL",1)) SetGlobalTimer("LK#NepheleNalia_potion","GLOBAL",ONE_DAY)~
== BNALIA @173
== BLK#NEP @174
== BNALIA @175
== BLK#NEP @176
== BNALIA @177
= @178
EXIT

// Nalia 2
// scripted - Nalia is sick; Jaheira/Cernd interjections, Nalia takes a dislike to Nephy
CHAIN IF WEIGHT #-1
~Global("LK#NepheleNalia","GLOBAL",2)~ THEN NALIAJ LK#NepheleNalia_2
@179
DO ~ActionOverride("Nalia",SetGlobal("LK#NepheleNalia","GLOBAL",2)) ActionOverride("Nephele",SetGlobal("LK#NepheleNalia","GLOBAL",2))~
== LK#NEPJ @180
== NALIAJ @181
== LK#NEPJ @182
== NALIAJ @183
== LK#NEPJ @184
EXIT


// Valygar 1
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleValygar","LOCALS",0)~ THEN BLK#NEP LK#NepheleValygar_1
@185
DO ~ActionOverride("Valygar",SetGlobal("LK#NepheleValygar","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleValygar","LOCALS",1))~
== BVALYGA @186
== BLK#NEP @187
== BVALYGA @188
== BLK#NEP @189
== BVALYGA @190
== BLK#NEP @191
== BVALYGA @192
== BLK#NEP @193
== BVALYGA @194
EXIT

// Valygar 2 - bonding over vampire killing
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleValygar","LOCALS",0)~ THEN BLK#NEP LK#NepheleValygar_2
@195
DO ~ActionOverride("Valygar",SetGlobal("LK#NepheleValygar","LOCALS",2)) ActionOverride("Nephele",SetGlobal("LK#NepheleValygar","LOCALS",2))~
== BVALYGA @196
== BLK#NEP @197
== BVALYGA @198
= @199
EXIT


// Viconia 1 // is this what your home was like? it's awful
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleViconia","LOCALS",0)~ THEN BLK#NEP LK#NepheleViconia_1
@200
DO ~ActionOverride("Viconia",SetGlobal("LK#NepheleViconia","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleViconia","LOCALS",1))~
== BVICONI @201
= @202
= @203
== BLK#NEP @204
== BVICONI @205
EXIT

// Viconia 2  - post-underdark, understand why she is how she is
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
GlobalGT("chapter","GLOBAL",5)
Global("LK#NepheleViconia","LOCALS",1)~ THEN BLK#NEP LK#NepheleViconia_2
@206
DO ~ActionOverride("Viconia",SetGlobal("LK#NepheleViconia","LOCALS",2)) ActionOverride("Nephele",SetGlobal("LK#NepheleViconia","LOCALS",2))~
== BVICONI @207
== BLK#NEP @208
== BVICONI @209
EXIT


// Yoshimo 1
CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("Nephele",CD_STATE_NOTVALID)
CombatCounter(0)
Global("LK#NepheleYoshimo","LOCALS",0)~ THEN BLK#NEP LK#NepheleYoshimo_1
@210
DO ~ActionOverride("Yoshimo",SetGlobal("LK#NepheleYoshimo","LOCALS",1)) ActionOverride("Nephele",SetGlobal("LK#NepheleYoshimo","LOCALS",1))~
== BYOSHIM @211
= @212
== BLK#NEP @213
== BYOSHIM @214
== BLK#NEP @215
== BYOSHIM @216
EXIT