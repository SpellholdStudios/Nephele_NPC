// ---------------------------------------------
// Nephele Friendship Dialogue
// ---------------------------------------------
BEGIN LK#NEPJ

// 1. Why adventure?
IF ~Global("LK#NephFriendTalks","GLOBAL",2)~ LK#NF1_0
  SAY @0
  ++ @1 DO ~SetGlobal("LK#NephFriendTalks","GLOBAL",3) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",5400)~ + LK#NF1_1
  ++ @2 DO ~SetGlobal("LK#NephFriendTalks","GLOBAL",3) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",5400)~ + LK#NF1_1
  ++ @3 DO ~SetGlobal("LK#NephFriendTalks","GLOBAL",3) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",5400)~ + LK#NF1_2
END

IF ~~ LK#NF1_1
  SAY @4
  ++ @5 + LK#NF1_3
  ++ @6 + LK#NF1_4
  ++ @7 + LK#NF1_5
END

IF ~~ LK#NF1_2
  SAY @8
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1)~ EXIT
END

IF ~~ LK#NF1_3
  SAY @9
  ++ @10 + LK#NF1_7
  ++ @11 + LK#NF1_6
  ++ @12 + LK#NF1_7
END

IF ~~ LK#NF1_4
  SAY @13 
  IF ~~ + LK#NF1_3
END

IF ~~ LK#NF1_5
  SAY @14
  = @15 
  IF ~~ + LK#NF1_3
END

IF ~~ LK#NF1_6
  SAY @16
  = @17
  IF ~~ + LK#NF1_7
END

IF ~~ LK#NF1_7
  SAY @18
  ++ @19 + LK#NF1_8
  ++ @20 + LK#NF1_8
  ++ @21 + LK#NF1_9
END

IF ~~ LK#NF1_8
  SAY @22
  = @23
  ++ @24 + LK#NF1_10
  ++ @25 + LK#NF1_11
  ++ @26 + LK#NF1_12
END

IF ~~ LK#NF1_9
  SAY @27
  = @28
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1)~ EXIT
END

IF ~~ LK#NF1_10
  SAY @29
  ++ @30 + LK#NF1_13
  ++ @31 + LK#NF1_13
  ++ @32 + LK#NF1_13
END

IF ~~ LK#NF1_11
  SAY @33
  ++ @34 + LK#NF1_14
  ++ @35 + LK#NF1_14
  ++ @36 + LK#NF1_14
END

IF ~~ LK#NF1_12
  SAY @37
  IF ~~ EXIT
END

IF ~~ LK#NF1_13
  SAY @38
  = @39
  = @40
  IF ~~ EXIT
END

IF ~~ LK#NF1_14
  SAY @41
  = @42
  IF ~~ EXIT
END


// 2. PC's Past
IF ~Global("LK#NephFriendTalks","GLOBAL",4)~ n2
  SAY @43
  = @44
  ++ @45 DO ~IncrementGlobal("LK#NephFriendTalks","GLOBAL",1) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",5400)~ + n2.1
  ++ @46 DO ~IncrementGlobal("LK#NephFriendTalks","GLOBAL",1) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",5400)~ + n2.2
  ++ @47 DO ~IncrementGlobal("LK#NephFriendTalks","GLOBAL",1) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",5400)~ + n2.3
END

IF ~~ n2.1
  SAY @48
  ++ @49 + n2.2
  ++ @50 + n2.4
  ++ @51 + n2.5
END

IF ~~ n2.2
  SAY @52
  = @53
  ++ @54 + n2.10
  ++ @55 + n2.11
  ++ @56 + n2.10
END

IF ~~ n2.3
  SAY @57
  = @58
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1)~ EXIT
END

IF ~~ n2.4
  SAY @59
  ++ @60 + n2.6
  ++ @61 + n2.2
  ++ @62 + n2.7
END

IF ~~ n2.5
  SAY @63
  IF ~~ + n2.2
END

IF ~~ n2.6
  SAY @64
  ++ @65 + n2.8
  ++ @66 + n2.9
  ++ @67 + n2.8
END

IF ~~ n2.7
  SAY @68
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1)~ EXIT
END

IF ~~ n2.8
  SAY @69
  IF ~~ + n2.9
END

IF ~~ n2.9
  SAY @70
  IF ~~ EXIT
END

IF ~~ n2.10
  SAY @71
  ++ @72 + n2.12
  ++ @73 + n2.12
  ++ @74 + n2.12
END

IF ~~ n2.11
  SAY @75
  ++ @72 + n2.12
  ++ @73 + n2.12
  ++ @74 + n2.12
END

IF ~~ n2.12
  SAY @76
  ++ @77 + n2.13
  ++ @78 + n2.14
  ++ @79 + n2.15
END

IF ~~ n2.13
  SAY @80
  IF ~~ + n2.16
END

IF ~~ n2.14
  SAY @81
  IF ~~ + n2.16
END

IF ~~ n2.15
  SAY @82
  IF ~~ + n2.16
END

IF ~~ n2.16
  SAY @83
  = @84
  = @85
  = @86
  ++ @87 + n2.17
  ++ @88 + n2.18
  ++ @89 + n2.17
END

IF ~~ n2.17
  SAY @90
  IF ~~ + n2.9
END

IF ~~ n2.18
  SAY @91
  = @92
  IF ~~ + n2.9
END


// 3. Nephele's Family, Imoen
IF ~Global("LK#NephFriendTalks","GLOBAL",6)~ LK#NF3
  SAY @93
  ++ @94 + nf3.2
  ++ @95 + nf3.2
  ++ @96 + nf3.1
  ++ @97 + nf3.1
END

IF ~~ nf3.1
  SAY @98
  IF ~~ + nf3.2
END

IF ~~ nf3.2
  SAY @99
  = @100
  = @101
  = @102
  ++ @103 + nf3.4
  ++ @104 + nf3.5
  ++ @105 + nf3.3
END

IF ~~ nf3.3
  SAY @106
  IF ~~ + nf3.5
END

IF ~~ nf3.4
  SAY @107
  IF ~~ + nf3.5
END

IF ~~ nf3.5
  SAY @108
  = @109
  = @110
  = @111
  ++ @112 + nf3.6
  ++ @113 + nf3.7
  ++ @114 + nf3.8
  ++ @115 + nf3.9
END

IF ~~ nf3.6
  SAY @116
  = @117
  IF ~~ DO ~SetGlobal("LK#NephFriendTalks","GLOBAL",7) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",5400)~ EXIT
END

IF ~~ nf3.7
  SAY @118
  IF ~~ + nf3.6
END

IF ~~ nf3.8
  SAY @119
  IF ~~ + nf3.6
END

IF ~~ nf3.9
  SAY @120
  ++ @121 + nf3.6
  ++ @122 + nf3.6
  ++ @123 + nf3.10
END

IF ~~ nf3.10
  SAY @124
  IF ~~ + nf3.6
END


// Talk four: halflings in the world
// Race: Halfling
IF ~Global("LK#NephFriendTalks","GLOBAL",8) Race(Player1,HALFLING)~ nf4.halfling
  SAY @125
  IF ~~ + nf4.start
END

// Any other race
IF ~Global("LK#NephFriendTalks","GLOBAL",8) !Race(Player1,HALFLING)~ nf4.not
  SAY @126
  IF ~~ + nf4.start
END

IF ~~ nf4.start
  SAY @127
  = @128
  ++ @129 + nf4.1
  ++ @130 + nf4.2
  ++ @131 + nf4.3
END

IF ~~ nf4.1
  SAY @132
  IF ~~ + nf4.4
END

IF ~~ nf4.2
  SAY @133
  IF ~~ + nf4.1
END

IF ~~ nf4.3
  SAY @134
  IF ~~ + nf4.4
END

IF ~~ nf4.4
  SAY @135
  + ~Global("ShadowLordDead","GLOBAL",1)~ + @136 + nf4.5
  ++ @137 + nf4.6
  ++ @138 + nf4.7
END

IF ~~ nf4.5
  SAY @139
  IF ~~ + nf4.6
END

IF ~~ nf4.6
  SAY @140
  IF ~~ + nf4.8
END

IF ~~ nf4.7
  SAY @141
  IF ~~ + nf4.6
END

IF ~~ nf4.8
  SAY @142
  ++ @143 + nf4.11
  ++ @144 + nf4.11
  + ~Race(Player1,HALFLING)~ + @145 + nf4.9
  ++ @146 + nf4.10
END

IF ~~ nf4.9
  SAY @147
  IF ~~ + nf4.11
END

IF ~~ nf4.10
  SAY @148
  IF ~~ + nf4.11
END

IF ~~ nf4.11
  SAY @149
  = @150
  = @151
  = @152
  ++ @153 + nf4.14
  ++ @154 + nf4.14
  ++ @155 +  nf4.12
  ++ @156 + nf4.13
END

IF ~~ nf4.12
  SAY @157
  IF ~~ + nf4.14
END

IF ~~ nf4.13
  SAY @158
  IF ~~ + nf4.14
END

IF ~~ nf4.14
  SAY @159
  ++ @160 + nf4.18
  ++ @161 + nf4.19
  ++ @162 + nf4.18
  ++ @163 + nf4.15
  ++ @164 + nf4.16
END

IF ~~ nf4.15
  SAY @165
  IF ~~ + nf4.17
END

IF ~~ nf4.16
  SAY @166
  IF ~~ + nf4.17
END

IF ~~ nf4.17
  SAY @167
  IF ~~ + nf4.18
END

IF ~~ nf4.18
  SAY @168
  IF ~~ DO ~SetGlobal("LK#NephFriendTalks","GLOBAL",9)~ EXIT
END

IF ~~ nf4.19
  SAY @169
  = @170
  IF ~~ + nf4.18
END


// 5. Drowskin & Davrin
IF ~Global("LK#NephFriendTalks","GLOBAL",10)~ nf5
  SAY @171
  ++ @172 + nf5.1
  ++ @173 + nf5.2
  ++ @174 + nf5.4
  ++ @175 + nf5.3
END

IF ~~ nf5.1
  SAY @176
  IF ~~ + nf5.4
END

IF ~~ nf5.2
  SAY @177
  IF ~~ + nf5.4
END

IF ~~ nf5.3
  SAY @178
  IF ~~ DO ~SetGlobal("LK#NephFriendTalks","GLOBAL",11) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",5400)~ EXIT
END

IF ~~ nf5.4
  SAY @179
  = @180
  ++ @181 + nf5.7
  ++ @182 + nf5.5
  ++ @183 + nf5.6
END

IF ~~ nf5.5
  SAY @184
  IF ~~ + nf5.7
END

IF ~~ nf5.6
  SAY @185
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1) SetGlobal("LK#NephFriendTalks","GLOBAL",11) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",3600)~ EXIT
END

IF ~~ nf5.7
  SAY @186
  = @187
  IF ~~ DO ~SetGlobal("LK#NephFriendTalks","GLOBAL",11) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",3600)~ EXIT
END


// 6. Underdark
IF ~Global("LK#NephFriendTalks","GLOBAL",12)~ nf6
  SAY @188
  ++ @189 + nf6.2
  ++ @190 + nf6.2
  ++ @191 + nf6.2
  ++ @192 + nf6.1
END

IF ~~ nf6.1
  SAY @193
  IF ~~ + nf6.2
END

IF ~~ nf6.2
  SAY @194
  ++ @195 + nf6.3
  ++ @196 + nf6.4
  ++ @197 + nf6.5
END

IF ~~ nf6.3
  SAY @198
  IF ~~ + nf6.6
END

IF ~~ nf6.4
  SAY @199
  IF ~~ + nf6.6
END

IF ~~ nf6.5
  SAY @200
  IF ~~ + nf6.6
END

IF ~~ nf6.6
  SAY @201
  ++ @202 + nf6.7
  ++ @203 + nf6.8
  ++ @204 + nf6.8
END

IF ~~ nf6.7
  SAY @205
  IF ~~ + nf6.9
END

IF ~~ nf6.8
  SAY @206
  IF ~~ + nf6.9
END

IF ~~ nf6.9
  SAY @207
  IF ~~ DO ~SetGlobal("LK#NephFriendTalks","GLOBAL",13) RealSetGlobalTimer("LK#NephFriendTalksTimer","GLOBAL",5400)~ EXIT
END


// 7. Writing letters to kids
IF ~Global("LK#NephFriendTalks","GLOBAL",14)~ nf7
  SAY @208
  ++ @209 + nf7.1
  ++ @210 + nf7.2
  ++ @211 + nf7.3
  ++ @212 + nf7.4
END

IF ~~ nf7.1
  SAY @213
  IF ~~ + nf7.5
END

IF ~~ nf7.2
  SAY @214
  IF ~~ + nf7.3
END

IF ~~ nf7.3
  SAY @215
  IF ~~ + nf7.5
END

IF ~~ nf7.4
  SAY @216
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1) SetGlobal("LK#NephFriendTalks","GLOBAL",15)~ EXIT
END

IF ~~ nf7.5
  SAY @217
  = @218
  ++ @219 + nf7.6
  ++ @220 + nf7.6
  ++ @221 + nf7.6
END

IF ~~ nf7.6
  SAY @222
  ++ @223 + nf7.8
  ++ @224 + nf7.7
  ++ @225 + nf7.8
END

IF ~~ nf7.7
  SAY @226
  IF ~~ + nf7.8
END

IF ~~ nf7.8
  SAY @227
  = @228
  = @229
  IF ~~ DO ~SetGlobal("LK#NephFriendTalks","GLOBAL",15)~ EXIT
END


// 8. Suldanessellar
IF ~Global("LK#NephFriendTalks","GLOBAL",16)~ LK#nf8
  SAY @230
  ++ @231 + nf8.2
  ++ @232 + nf8.2
  ++ @233 + nf8.1
END

IF ~~ nf8.1
  SAY @234
  IF ~~ + nf8.2
END

IF ~~ nf8.2
  SAY @235
  = @236
  = @237
  ++ @238 + nf8.3
  ++ @239 + nf8.4
  ++ @240 + nf8.4
END

IF ~~ nf8.3
  SAY @241
  IF ~~ + nf8.4
END

IF ~~ nf8.4
  SAY @242
  = @243
  IF ~~ DO ~SetGlobal("LK#NephFriendTalks","GLOBAL",17)~ EXIT
END


// Class: Spellcaster
IF ~Global("LK#NepheleSpellTalk","GLOBAL",2)~ LK#NC_0
  SAY @244
  ++ @245 DO ~SetGlobal("LK#NepheleSpellTalk","GLOBAL",3)~ + LK#NC_1
  ++ @246 DO ~SetGlobal("LK#NepheleSpellTalk","GLOBAL",3)~ + LK#NC_2
  ++ @247 DO ~SetGlobal("LK#NepheleSpellTalk","GLOBAL",3)~ + LK#NC_3
  + ~!Class(Player1,CLERIC_ALL)~ + @248 DO ~SetGlobal("LK#NepheleSpellTalk","GLOBAL",3)~ + LK#NC_4
END

IF ~~ LK#NC_1
  SAY @249
  IF ~~ + LK#NC_5
END

IF ~~ LK#NC_2
  SAY @250
  IF ~~ + LK#NC_5
END

IF ~~ LK#NC_3
  SAY @251
  IF ~~ + LK#NC_5
END

IF ~~ LK#NC_4
  SAY @252
  IF ~~ + LK#NC_5
END

IF ~~ LK#NC_5
  SAY @253
  ++ @254 + LK#NC_6
  ++ @255 + LK#NC_7
  ++ @256 + LK#NC_7
  ++ @257 + LK#NC_6
END

IF ~~ LK#NC_6
  SAY @258
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1)~ EXIT
END

IF ~~ LK#NC_7
  SAY @259
  ++ @260 + LK#NC_8
  ++ @261 + LK#NC_9
  ++ @262 + LK#NC_8
END

IF ~~ LK#NC_8
  SAY @263
  IF ~~ EXIT
END

IF ~~ LK#NC_9
  SAY @264
  ++ @265 + LK#NC_10
  ++ @266 + LK#NC_11
  ++ @267 + LK#NC_6
END

IF ~~ LK#NC_10
  SAY @268
  IF ~~ + LK#NC_12
END

IF ~~ LK#NC_11
  SAY @269
  IF ~~ + LK#NC_12
END

IF ~~ LK#NC_12
  SAY @270
  IF ~~ EXIT
END


// Cooking talk, outdoors, night, after talk #2
IF ~Global("LK#NepheleCooking","GLOBAL",3)~ nc
  SAY @271
  = @272
  ++ @273 + nc.4
  ++ @274 + nc.1
  ++ @275 + nc.2
  ++ @276 + nc.3
END

IF ~~ nc.1
  SAY @277
  IF ~~ + nc.4
END

IF ~~ nc.2
  SAY @278
  IF ~~ + nc.1
END

IF ~~ nc.3
  SAY @279
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1) SetGlobal("LK#NepheleCooking","GLOBAL",4) RestParty()~ EXIT
END

IF ~~ nc.4
  SAY @280
  = @281
  ++ @282 + nc.5
  ++ @283 + nc.6
  ++ @284 + nc.7
  ++ @285 + nc.7
END

IF ~~ nc.5
  SAY @286
  IF ~~ + nc.7
END

IF ~~ nc.6
  SAY @287
  IF ~~ + nc.7
END

IF ~~ nc.7
  SAY @288
  = @289
  = @290
  IF ~~ DO ~SetGlobal("LK#NepheleCooking","GLOBAL",4) RestParty()~ EXIT
END


// Drunk talk
IF ~Global("LK#NepheleDrunkTalk","GLOBAL",1)~ nd
  SAY @291
  = @292
  ++ @293 + nd.3
  ++ @294 + nd.1
  ++ @295 + nd.2
  ++ @296 + nd.3
END

IF ~~ nd.1
  SAY @297
  IF ~~ + nd.3
END

IF ~~ nd.2
  SAY @298
  IF ~~ + nd.3
END

IF ~~ nd.3
  SAY @299
  = @300
  = @301
  ++ @302 + nd.5
  ++ @303 + nd.5
  ++ @304 + nd.5
  ++ @305 + nd.4
END

IF ~~ nd.4
  SAY @306
  IF ~~ + nd.5
END

IF ~~ nd.5
  SAY @307
  = @308
  = @309
  ++ @310 + nd.7
  ++ @311 + nd.6
  ++ @312 + nd.7
  ++ @313 + nd.7
END

IF ~~ nd.6
  SAY @314
  IF ~~ + nd.7
END

IF ~~ nd.7
  SAY @315
  = @316
  IF ~~ DO ~SetGlobal("LK#NepheleDrunkTalk","GLOBAL",2)~ EXIT
END


// Vampires talk
IF ~Global("LK#NepheleVampiresTalk","GLOBAL",2)~ nv
  SAY @317
  ++ @318 + nv.1
  ++ @319 + nv.1
  ++ @320 + nv.1
END

IF ~~ nv.1
  SAY @321
  = @322
  ++ @323 + nv.3
  ++ @324 + nv.2
  ++ @325 + nv.2
  ++ @326 + nv.3
END

IF ~~ nv.2
  SAY @327
  IF ~~ + nv.3
END

IF ~~ nv.3
  SAY @328
  = @329
  = @330
  IF ~~ DO ~SetGlobal("LK#NepheleVampiresTalk","GLOBAL",3)~ EXIT
END


// Talk with PC about loss of soul and Yoshimo's betrayal in Spellhold
IF ~Global("LK#NepheleYoshimoBetrayal","GLOBAL",2)~ ny
  SAY @331
  ++ @332 + ny.3
  ++ @333 + ny.3
  ++ @334 +  ny.1
  ++ @335 + ny.2
END

IF ~~ ny.1
  SAY @336
  IF ~~ + ny.3
END

IF ~~ ny.2
  SAY @337
  IF ~~ + ny.12
END

IF ~~ ny.3
  SAY @338
  ++ @339 + ny.4
  ++ @340 + ny.4
  ++ @341 + ny.4
  ++ @342 + ny.4
END

IF ~~ ny.4
  SAY @343
  = @344
  = @345
  ++ @346 + ny.6
  ++ @347 + ny.6
  ++ @348 + ny.5
END

IF ~~ ny.5
  SAY @349
  IF ~~ + ny.12
END

IF ~~ ny.6
  SAY @350
  IF ~~ + ny.12
  IF ~Global("LK#NephYoshBetray","GLOBAL",1)~ + ny.7
END

IF ~~ ny.7
  SAY @351
  = @352
  = @353
  ++ @354 + ny.8
  ++ @355 + ny.9
  ++ @356 + ny.10
  ++ @357 + ny.11
END

IF ~~ ny.8
  SAY @358
  IF ~~ + ny.12
END

IF ~~ ny.9
  SAY @359
  IF ~~ + ny.12
END

IF ~~ ny.10
  SAY @360
  IF ~~ + ny.12
END

IF ~~ ny.11
  SAY @361
  IF ~~ + ny.12
END

IF ~~ ny.12
  SAY @362
  IF ~~ DO ~SetGlobal("LK#NepheleYoshimoBetrayal","GLOBAL",3)~ EXIT
END


// Talk with Nephele re: Viconia romance
IF ~Global("LK#NepheleViconiaRomance","GLOBAL",2)~ nvr
  SAY @363
  ++ @364 + nvr.1
  ++ @365 + nvr.1
  ++ @366 + nvr.1
  ++ @367 + nvr.1
END

IF ~~ nvr.1
  SAY @368
  = @369
  ++ @370 + nvr.4
  ++ @371 + nvr.4
  ++ @372 + nvr.2
  ++ @373 +  nvr.3
END

IF ~~ nvr.2
  SAY @374
  IF ~~ + nvr.5
END

IF ~~ nvr.3
  SAY @375
  IF ~~ + nvr.5
END

IF ~~ nvr.4
  SAY @376 
  IF ~~ + nvr.5
END
  
IF ~~ nvr.5
  SAY @377
  IF ~~ DO ~SetGlobal("LK#NepheleViconiaRomance","GLOBAL",3)~ EXIT
END


// Waukeen's Promenade (Chapter 6/7) - shopping
IF ~Global("LK#NepheleWPTalk","GLOBAL",2)~ ns
  SAY @378
  ++ @379 + ns.2
  ++ @380 + ns.1
  ++ @381 + ns.2
  ++ @382 + ns.2
END

IF ~~ ns.1
  SAY @383
  = @384
  IF ~~ + ns.3
END

IF ~~ ns.2
  SAY @385
  IF ~~ + ns.3
END

IF ~~ ns.3
  SAY @386
  ++ @387 + ns.5
  ++ @388 + ns.5
  ++ @389 + ns.4
END

IF ~~ ns.4
  SAY @390
  IF ~~ + ns.5
END

IF ~~ ns.5
  SAY @391
  IF ~Gender(Player1,MALE)~ + ns.m
  IF ~Gender(Player1,FEMALE)~ + ns.f
END

IF ~~ ns.m
  SAY @392
  IF ~~ + ns.6
END

IF ~~ ns.f
  SAY @393
  IF ~~ + ns.6
END

IF ~~ ns.6
  SAY @394
  IF ~~ + ns.7
END

IF ~~ ns.7
  SAY @395
  IF ~~ DO ~SetGlobal("LK#NepheleWPTalk","GLOBAL",3)~ EXIT
END


// Nephele insulted talk
IF ~Global("LK#NepheleInsultedTalk","GLOBAL",2)~ ni
  SAY @396
  ++ @397 + ni.2
  ++ @398 + ni.2
  ++ @399 + ni.2
  ++ @400 + ni.1
END

IF ~~ ni.1
  SAY @401
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1)~ + ni.2
END

IF ~~ ni.2
  SAY @402
  = @403
  ++ @404 + ni.5
  ++ @405 + ni.3
  ++ @406 + ni.5
  ++ @407 + ni.5
  ++ @408 + ni.5
END

IF ~~ ni.3
  SAY @409
  IF ~~ + ni.5
END

IF ~~ ni.5
  SAY @410
  = @411
  ++ @412 + ni.8
  ++ @413 + ni.6
  ++ @414 + ni.7
END

IF ~~ ni.6
  SAY @415
  IF ~~ + ni.8
END

IF ~~ ni.7
  SAY @416
  IF ~~ DO ~IncrementGlobal("LK#NepheleInsulted","GLOBAL",1) SetGlobal("LK#NepheleInsultedTalk","GLOBAL",3)~ EXIT
END

IF ~~ ni.8
  SAY @417
  IF ~~ DO ~SetGlobal("LK#NepheleInsultedTalk","GLOBAL",3) IncrementGlobal("LK#NepheleInsulted","GLOBAL",-1)~ EXIT
END


// Nephele insulted talk #2
IF ~Global("LK#NepheleInsultedTalk2","GLOBAL",1)~ ni2
  SAY @418
  = @419
  IF ~~ DO ~DropInventory() LeaveParty() SetGlobal("LK#NepheleJoined","LOCALS",0) EscapeArea()~ EXIT
END


// ---------------------------------------------
// Minor scenery stuff
// ---------------------------------------------


// Aran Linvail
IF ~Global("LK#NepheleAran","GLOBAL",1)~ nar
  SAY @420
  ++ @421 + nar.1
  ++ @422 + nar.2
  ++ @423 + nar.3
END

IF ~~ nar.1
  SAY @424
  IF ~~ + nar.2
END

IF ~~ nar.2
  SAY @425
  IF ~~ DO ~SetGlobal("LK#NepheleAran","GLOBAL",2)~ EXIT
END

IF ~~ nar.3
  SAY @426
  = @427
  IF ~~ DO ~SetGlobal("LK#NepheleAran","GLOBAL",2) IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1)~ EXIT
END


// After killing vampires & talking to escaped Bodhi
IF ~Global("LK#NepheleBodhi","GLOBAL",2)~ nb
  SAY @428
  = @429
  ++ @430 + nb.1
  ++ @431 + nb.1
  ++ @432 + nb.1
  ++ @433 + nb.2
END

IF ~~ nb.1
  SAY @434
  = @435
  IF ~~ DO ~SetGlobal("LK#NepheleBodhi","GLOBAL",3)~ EXIT
END

IF ~~ nb.2
  SAY @436
  IF ~~ + nb.1
END


// After Saemon's betrayal on Brynnlaw
IF ~Global("LK#NepheleSaemon","GLOBAL",1)~ nsa
  SAY @437
  IF ~~ DO ~SetGlobal("LK#NepheleSaemon","GLOBAL",2)~ EXIT
END


// after escaping the Underdark
IF ~Global("LK#NepheleEscapedUnderdark","GLOBAL",2)~ nu
  SAY @438
  ++ @146 + nu.1
  ++ @439 + nu.2
  ++ @440 + nu.1
END

IF ~~ nu.1
  SAY @441
  ++ @112 + nu.3
  ++ @442 + nu.3
  ++ @443 + nu.4
 END

IF ~~ nu.2
  SAY @444
  IF ~~ + nu.1
END

IF ~~ nu.3
  SAY @445
  = @446
  IF ~~ DO ~SetGlobal("LK#NepheleEscapedUnderdark","GLOBAL",3)~ EXIT
END

IF ~~ nu.4
  SAY @447
  IF ~~ + nu.3
END


// After killing Bodhi
IF ~Global("LK#NepheleBodhiDead","GLOBAL",1)~ nbd
  SAY @448
  = @449 
  IF ~~ DO ~SetGlobal("LK#NepheleBodhiDead","GLOBAL",2)~ EXIT
END


// DIALOGUE: Edwin joined party
IF ~Global("LK#NepheleEdwinTalk","GLOBAL",1)~ ned
  SAY @450
  IF ~~ DO ~SetGlobal("LK#NepheleEdwinTalk","GLOBAL",2)~ + ned.0
END

IF ~~ ned.0
  SAY @451
  ++ @452 +  ned.1
  ++ @453 +  ned.2
  ++ @454 + ned.3
  ++ @455 + ned.4
END

IF ~~ ned.1
  SAY @456
  IF ~~ EXIT
END

IF ~~ ned.2
  SAY @457
  IF ~~ EXIT
END

IF ~~ ned.3
  SAY @458
  IF ~~ EXIT
END

IF ~~ ned.4
  SAY @459
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1)~ EXIT
END


// DIALOGUE: Haer'Dalis joined party
IF ~Global("LK#NepheleHaerdalisTalk","GLOBAL",1)~ nha
  SAY @460
  ++ @461 + nha.1
  ++ @462 + nha.2
  ++ @463 + nha.1
  ++ @464 + nha.3
END

IF ~~ nha.1
  SAY @465
  IF ~~ DO ~SetGlobal("LK#NepheleHaerdalisTalk","GLOBAL",2)~ + nha.2
END

IF ~~ nha.2
  SAY @466
  = @467
  IF ~~ DO ~SetGlobal("LK#NepheleHaerdalisTalk","GLOBAL",2)~ EXIT
END

IF ~~ nha.3
  SAY @468
  IF ~~ DO ~SetGlobal("LK#NepheleHaerdalisTalk","GLOBAL",2) IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1)~ EXIT
END


// COMMENT: after talking to freed hendak, after children comment (check nephele interjection variable to trigger)
IF ~Global("LK#NepheleHendak","GLOBAL",1)~ nhe
  SAY @469
  IF ~~ DO ~SetGlobal("LK#NepheleHendak","GLOBAL",2)~ EXIT
END


// DIALOGUE: Working for Renal in chapter 2
IF ~Global("LK#NepheleRenal","GLOBAL",1)~ nre
  SAY @470
  ++ @471 DO ~SetGlobal("LK#NepheleRenal","GLOBAL",2)~ + nre.1
  ++ @472 DO ~SetGlobal("LK#NepheleRenal","GLOBAL",2)~ + nre.2
  + ~Class(Player1,THIEF_ALL)~ + @473 DO ~SetGlobal("LK#NepheleRenal","GLOBAL",2)~ + nre.3
  ++ @474 DO ~SetGlobal("LK#NepheleRenal","GLOBAL",2)~ + nre.4
END

IF ~~ nre.1
  SAY @475
  IF ~~ EXIT
END

IF ~~ nre.2
  SAY @476
  IF ~~ EXIT
END

IF ~~ nre.3
  SAY @477
  IF ~~ EXIT
END

IF ~~ nre.4
  SAY @478
  IF ~~ DO ~IncrementGlobal("LK#NepheleAnnoyed","GLOBAL",1)~ EXIT
END


// ---------------------------------------------
// Nephele Interjections
// ---------------------------------------------
I_C_T AERIE 9 LK#N_aerie
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @479
END

I_C_T ARAN 49 LK#N_aran
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @480
END

I_C_T ARAN 53 LK#N_aran2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @481
END

I_C_T ARAN 54 LK#N_aran3
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @482
END

I_C_T BOOTER 10 LK#N_booter
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @483
END

I_C_T ARNBOY01 0 LK#N_arnboy01
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @484
END

I_C_T ARNMAN01 4 LK#N_arnman01
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @485
  == LK#NEPJ @486
  == ARNMAN01 @487
  == LK#NEPJ @488
END

I_C_T BFTOWN1 2 LK#N_bftown01
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @489
END

I_C_T BHARVAL 17 LK#N_bharval
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @490
END

I_C_T BMERCH1 2 LK#N_bmerch1
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @491
END

I_C_T SAFE BMERCH1 3 LK#N_bmerch12
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @492
  == BMERCH1 @493
END

I_C_T BHOISIG 19 LK#N_bhoisig
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @490
END

I_C_T BODHI2 12 LK#N_bodhi2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @494
END

I_C_T SAFE BOOTER02 0 LK#N_booter2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @495
  == BOOTER02 @496
END

I_C_T SAFE BOY1 2 LK#N_boy1
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @497
  == BOY1 @498
  == LK#NEPJ @499
  == BOY1 @500
END

I_C_T BPROST1 2 LK#N_bprost2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @501
END

CHAIN IF ~See("Nephele")
InParty("Nephele") 
!StateCheck("Nephele",CD_STATE_NOTVALID)
RandomNum(3,3)
Global("brat2nephele","AR0700",0)~ THEN BRAT2 LK#N_brat2
@502
DO ~SetGlobal("brat2nephele","AR0700",1)~ 
== LK#NEPJ @503
== BRAT2 @504
== LK#NEPJ @505
EXIT

I_C_T SAFE CERNDJ 56 LK#N_cernd
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @506
  == CERNDJ @507
END

I_C_T C6BODHI 0 LK#N_bodhi3
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @508
END

I_C_T C6CORAN 6 LK#N_coran
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @509
END

I_C_T C6DRIZZ1 1 LK#N_drizzt
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @510
END

I_C_T C6DRIZZ1 49 LK#N_drizzt7
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @510
END

I_C_T SAFE C6DRIZZ1 5 LK#N_drizzt2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @511
  DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
  == C6DRIZZ1 @512
END

I_C_T SAFE C6DRIZZ1 41 LK#N_drizzt4
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @511
  DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
  == C6DRIZZ1 @512
END

I_C_T SAFE C6DRIZZ1 48 LK#N_drizzt6
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @511
  DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
  == C6DRIZZ1 @512
END

I_C_T C6REGIS1 2 LK#N_c6regis
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @513
END

I_C_T C6ELHAN2 10 LK#N_elhan
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @514
END

I_C_T C6ELHAN2 28 LK#N_elhan2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @515
END

I_C_T SAFE C6ELHAN2 75 LK#N_elhan4
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @516
  == C6ELHAN2 @517
END

/*
I_C_T3 CERNDJ 122 LK#N_cerndlol
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN ~I think you mean 'measure', dear.~
  == CERNDJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN ~I have a cold, I'm afraid.~
  == NALIAJ IF ~IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID) InParty("Nalia") See("Nalia")  !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN ~DON'T TRUST HER!~
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @8
END
*/

I_C_T C6ELHAN2 34 LK#N_elhan3
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @518
END

CHAIN IF ~See("Nephele")
InParty("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
RandomNum(2,1)
Global("celvannephele","AR0300",0)~ THEN CELVAN LK#N_celvan
@519
DO ~SetGlobal("celvannephele","AR0300",1)~
== LK#NEPJ @520
== CELVAN @521
EXIT

I_C_T CENANNY 11 LK#N_cenanny
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @522
END

I_C_T3 CERNDP 10 LK#N_cernd2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @523
  == CERNDP IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @524
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @525
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @526
  == CERNDP IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @527
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @528
  == CERNDP @529
END

I_C_T DALESON 13 LK#N_daleson
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @530
END

I_C_T DBEGGAR2 7 LK#N_dbeggar
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @531
END

INTERJECT DELON 19 LK#N_delon
  == LK#NEPJ IF ~!InParty("Minsc") InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @532
COPY_TRANS DELON 8

I_C_T SAFE DELCIA 16 LK#N_delcia
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @533
  == DELCIA @534
END

I_C_T EDWIN 8 LK#N_edwin
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @535
END

I_C_T SAFE EDWIN 49 LK#N_edwin2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @536
  == EDWIN @537
END

I_C_T SAFE EDWINJ 180 LK#N_edwin4
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @538
  == EDWINJ @539
END

I_C_T SAFE EDWINJ 173 LK#N_edwin5
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @538
  == EDWINJ @539
END

INTERJECT ELGEA 0 LK#N_elgea
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @540
COPY_TRANS ELGEA 1

I_C_T FIRKRA01 3 LK#N_firkraag
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @541
END

I_C_T FIRKRA02 15 LK#N_firkraag2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @542
END

I_C_T SAFE GARREN 29 LK#N_garren
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @543
  == GARREN @544
END

I_C_T SAFE GARREN 30 LK#N_garren2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @543
  == GARREN @544
END

I_C_T SAFE GARREN 35 LK#N_garren3
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @545
  == GARREN @546
END

I_C_T SAFE GARREN 44 LK#N_garren4
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @547
  == GARREN @544
END

I_C_T SAFE GIRL2 5 LK#N_girl2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @548
  == GIRL2 @549
END

I_C_T SAFE HAEGAN 1 LK#N_haegan
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @550
  == HAEGAN @551
END

I_C_T SAFE HAEGAN 2 LK#N_haegan
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @550
  == HAEGAN @551
END

I_C_T SAFE HAEGAN 3 LK#N_haegan
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @550
  == HAEGAN @551
END

I_C_T SAFE HAEGAN 5 LK#N_haegan
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @550
  == HAEGAN @551
END

I_C_T HENDAK 18 LK#N_hendak
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID) !Global("FreeSlaves","GLOBAL",1)~ THEN @552
END

I_C_T INSPECT 13 LK#N_inspect
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @553
END

I_C_T BARONP 47 LK#N_baronp
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @554
END

I_C_T TAT 0 LK#N_tat
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @555
END

I_C_T KELDORJ 11 LK#N_keldorn
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @556
END

I_C_T SAFE KELDORP 20 LK#N_keldorn2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @557
  == KELDORP @558
END

I_C_T LEHTIN 27 LK#N_lehtinan3
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @559
END

I_C_T LISSA 4 LK#N_lissa
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @560
END

I_C_T MAEVAR 1 LK#N_maevar
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @561
END

I_C_T SAFE MAEVAR 42 LK#N_maevar2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @562
  == MAEVAR @563
END

I_C_T MOURNER6 0 LK#N_mourner6
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @564
END

I_C_T MOURNER5 6 LK#N_mourner5
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @565
END

I_C_T WELLYN 7 LK#N_wellyn
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @566
END

I_C_T WELLYN 5 LK#N_wellyn2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @567
END

I_C_T WELLYN 6 LK#N_wellyn3
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @567
END

I_C_T SAFE WELLYN 10 LK#N_wellyn4
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @568
  == WELLYN @569
END

I_C_T KELDORJ 46 LK#N_keldorn3
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @570
END

I_C_T SAFE KELDORJ 47 LK#N_keldorn4
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @557
  == KELDORJ @558
END

I_C_T MAZZYJ 4 LK#N_mazzy
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @571
END

CHAIN IF ~See("Nephele")
InParty("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("murtlennephele","AR0700",0)~ THEN MURTLEN LK#N_murtlen
@572
DO ~SetGlobal("murtlennephele","AR0700",1)~ 
== LK#NEPJ @573
EXIT

I_C_T NALIAJ 224 LK#N_nalia
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @574
END

I_C_T2 SAFE NEVAZIAH 21 LK#N_nevaziah
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @575
  == NEVAZIAH @576
END

CHAIN IF 
~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
RandomNum(2,2)
Global("PehllusNephele","LOCALS",0)
~ THEN PEHLLUS LK#N_pehllus
@577
DO ~SetGlobal("PehllusNephele","LOCALS",1)~ 
== LK#NEPJ @578
EXIT

I_C_T PIRMUR10 3 LK#N_pirmur10
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @579
END

I_C_T PLAYER1 5 LK#N_player1
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @580
  = @581
END

EXTEND_BOTTOM PLAYER1 16
  IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID) Global("LK#N_player11","GLOBAL",0)~ THEN DO ~SetGlobal("IrenicusBeat","AR2806",2)~ EXTERN LK#NEPJ LK#N_player11
END

CHAIN LK#NEPJ LK#N_player11
@582
DO ~SetGlobal("LK#N_player11","GLOBAL",1)~
== LK#NEPJ @583
COPY_TRANS SAFE PLAYER1 16

I_C_T PPIMOEN 1 LK#N_imoen
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @584
END

I_C_T PPIMOEN 5 LK#N_imoen2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @585
END

I_C_T PPSAEM2 1 LK#N_ppsaemon3
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @586
END

I_C_T PPSAEM2 24 LK#N_ppsaemon4
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @587
END

I_C_T PPDILI 0 LK#N_ppdili
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @588
END

INTERJECT PIRCOR02 1 LK#N_ginia
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @589
  == PIRCOR02 @590
  == LK#NEPJ @591
  = @592
COPY_TRANS PIRCOR02 2

I_C_T YOSHJ 113 LK#N_yoshj
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @593
END

CHAIN IF ~InParty("Nephele")
See("Nephele")
!StateCheck("Nephele",CD_STATE_NOTVALID)
Global("QuayleNephele","LOCALS",0)~ THEN QUAYLE LK#N_quayle
@594
DO ~SetGlobal("QuayleNephele","LOCALS",1)~
== LK#NEPJ @595
= @596
== QUAYLE @597
== LK#NEPJ @598
= @599
== QUAYLE @600
== LK#NEPJ @601
== QUAYLE IF ~InPartyAllowDead("Aerie")~ THEN @602
== LK#NEPJ IF ~InPartyAllowDead("Aerie")~ THEN @603
== QUAYLE @604
EXIT

I_C_T SAHBEH01 0 LK#N_sahbeh01
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @605
END

I_C_T SAHBAR03 1 LK#N_sahbar03
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @606
END

I_C_T SAFE SBWENCH 9 LK#N_sbwench
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @607
  == EDWINJ @608
END

I_C_T SLHALF02 2 LK#N_slhalf02
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @609
END

I_C_T SPOILED1 3 LK#N_spoiled1
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @610
END

I_C_T SUDEMIN 11 LK#N_sudemin
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @611
END

/*
I_C_T2 SUJON 14 LK#N_sujon
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN ~We will make you suffer for what you have taken, you bastard! Enjoy the fiery pits of hell!~
END
*/ 

I_C_T SAFE TANNER 18 LK#N_tanner
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @612
  == TANNER @613
END

I_C_T TIANA 1 LK#N_tiana
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @614
END

I_C_T TIRDIR 2 LK#N_tirdir
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @615
END

I_C_T TOLGER 80 LK#N_tolger
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @616
END

I_C_T TRSKIN02 16 LK#N_trskin02
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @617
END

I_C_T SAFE VALYGAR 28 LK#N_valygar
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @618
  DO ~DropInventory() LeaveParty() SetGlobal("LK#NepheleJoined","LOCALS",0) EscapeArea()~
  == VALYGAR @619
END

I_C_T VALYGARJ 111 LK#N_valygar2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @620
END

I_C_T VICONI 2 LK#N_viconia
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @621
END

// Bodhi
INTERJECT_COPY_TRANS BODHI 1 LK#N_BodhiIntro
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN
  @622
END

I_C_T BODHI 6 LK#N_BodhiWarn
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN
  @623
END

INTERJECT_COPY_TRANS BODHI 18 LK#N_BodhiLeave
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN
  @624
  DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
END


// Trademeet Gypsy
EXTEND_BOTTOM TRGYP02 2
  IF ~!InPartySlot(LastTalkedToBy,0) Name("Nephele",LastTalkedToBy)~ EXTERN TRGYP02 LK#NepheleGypsy_0
END

APPEND TRGYP02
IF ~~ LK#NepheleGypsy_0
  SAY @625
  IF ~~ EXTERN LK#NEPJ LK#NepheleGypsy_1
END
END

APPEND LK#NEPJ
IF ~~ LK#NepheleGypsy_1
  SAY @626
  IF ~~ EXIT
END
END


// Adalon
INTERJECT UDSILVER 9 LK#NepheleAdalon
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @627
END UDSILVER 58


// In Hell
I_C_T PLAYER1 25 LK#Nep_Hell
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @628
  = @629
END


// Irenicus in Hell
I_C_T HELLJON 7 LK#Nep_Iren
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @630
END

I_C_T HELLJON 8 LK#Nep_Iren1
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @630
END

I_C_T HELLJON 9 LK#Nep_Iren2
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @630
END

I_C_T HELLJON 10 LK#Nep_Iren3
  == LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @630
END


// Tree of Life
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("Nephele") InMyArea("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID) Global("LK#NepheleTreeofLife","GLOBAL",0)~
EXTERN PLAYER1 LK#NepheleToL
END


CHAIN PLAYER1 LK#NepheleToL
@631
END
  ++ @632 DO ~SetGlobal("LK#NepheleTreeofLife","GLOBAL",1)~ EXTERN LK#NEPJ LK#NepheleToL_1
  ++ @633 DO ~SetGlobal("LK#NepheleTreeofLife","GLOBAL",1)~ EXTERN LK#NEPJ LK#NepheleToL_1
  ++ @634 DO ~SetGlobal("LK#NepheleTreeofLife","GLOBAL",1)~ EXTERN LK#NEPJ LK#NepheleToL_2

APPEND LK#NEPJ
  IF ~~ LK#NepheleToL_1
    SAY @635
    COPY_TRANS PLAYER1 33
  END
  
  IF ~~ LK#NepheleToL_2
    SAY @636
    COPY_TRANS PLAYER1 33
  END
END


// new interjections - 22/1/2011
I_C_T UHGIRL01 2 LK#N_uhgirl02
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @637
END

I_C_T UHGIRL01 9 LK#N_uhgirl022
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @638
END

I_C_T SAFE JUGDAR01 2 LK#N_jugdar01
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @639
DO ~SetGlobal("TalkedToDaar","GLOBAL",1)~
END

I_C_T JUGJER01 32 LK#N_jugjer01
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @640
END

I_C_T UHKID01 2 LK#N_uhkid01
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @641
END

I_C_T UHKID02 2 LK#N_uhkid02
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @642
END

I_C_T UHKID03 3 LK#N_uhkid03
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @643
END

I_C_T UHKID02 7 LK#N_uhkid022
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @644
END

I_C_T UHKID03 11 LK#N_uhkid031
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @645
END

I_C_T UHKID03 12 LK#N_uhkid032
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @645
END

I_C_T UHKID02 11 LK#N_uhkid023
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @645
END

I_C_T UHKID01 14 LK#N_uhkid011
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @646
END

I_C_T UHKID03 14 LK#N_uhkid032
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @647
END

I_C_T UHKID03 15 LK#N_uhkid033
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @648
END

I_C_T UHOGRE01 6 LK#N_uhogre01
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @649
END

I_C_T SEWERM1 8 LK#N_sewerm1
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @650
END

I_C_T CLKID 1 LK#N_clkid1
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @651
END

I_C_T CLMOM 8 LK#N_clmom
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @652
END

I_C_T CLMOM 11 LK#N_clmom2
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @653
END

I_C_T NALIAJ 224 LK#N_naliaj2
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @654
END

I_C_T NALIAJ 59 LK#N_naliaj3
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @655
END

I_C_T NALIAJ 60 LK#N_naliaj3
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @656
END

I_C_T SAFE PLAYER1 3 LK#N_player122
== LK#NEPJ IF ~InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @657
= @658
DO ~SetGlobal("SelfTalk","GLOBAL",2)~
END

// Watcher's Keep interjections

I_C_T FSSPIR2 1 LK#N_fsspir2
== LK#NEPJ IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_8%) InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @659
END

I_C_T GORAPP1 6 LK#N_gorapp1
== LK#NEPJ IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_8%) InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @660
END

I_C_T GORAPP1 10 LK#N_gorapp12
== LK#NEPJ IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_8%) InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @661
END

I_C_T GORDEMO 1 LK#N_gordemo
== LK#NEPJ IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_8%) InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @662
END

I_C_T GORDEMO 24 LK#N_gordemo1
== LK#NEPJ IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_8%) InParty("Nephele") See("Nephele") !StateCheck("Nephele",CD_STATE_NOTVALID)~ THEN @663
END