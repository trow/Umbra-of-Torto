BEGIN ~UTHing01~

//------------------------------- 主选单 -------------------------------//

IF ~Global("UTTalkedToHinge","MYAREA",0)~
THEN BEGIN First
SAY
	@0
IF ~~
THEN GOTO Second
END

IF ~~
THEN BEGIN Second
SAY
	@1
IF ~~
THEN GOTO Third
END

IF ~~
THEN BEGIN Third
SAY
	@2
	IF ~Global("UTTalkedToHinge","MYAREA",0)~ THEN DO
		~SetGlobal("UTTalkedToHinge","MYAREA",1)~ GOTO Start
END

IF ~GlobalGT("UTTalkedToHinge","MYAREA",0)~
THEN BEGIN Start
SAY
	@3
IF ~~
THEN REPLY
	@4
	GOTO Challenge
IF ~~
THEN REPLY
	@5
	GOTO Storage
IF ~~
THEN REPLY
	@6
	GOTO Miscellaneous
IF ~~
THEN REPLY
	@7
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTCutR2")
	~ EXIT
IF ~~
THEN REPLY
	@8
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END

//------------------------------- 战斗 -------------------------------//

IF ~~
THEN BEGIN Challenge
SAY
	~~
IF ~~
THEN REPLY
	@10
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb01")
	~ EXIT
IF ~~
THEN REPLY
	@11
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb02")
	~ EXIT
IF ~~
THEN REPLY
	@12
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb03")
	~ EXIT
IF ~~
THEN REPLY
	@13
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb04")
	~ EXIT
IF ~~
THEN REPLY
	@14
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb05")
	~ EXIT
IF ~~
THEN REPLY
	@15
	GOTO Start
IF ~~
THEN REPLY
	@8
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END

//------------------------------- 商店 -------------------------------//

IF ~~
THEN BEGIN Storage
SAY
	~~
IF ~~
THEN REPLY
	@16
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		StartStore("trshop",LastTalkedToBy(Myself))
	~ EXIT
IF ~~
THEN REPLY
	@15
	GOTO Start
IF ~~
THEN REPLY
	@8
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END

//------------------------------- 杂项 -------------------------------//

IF ~~
THEN BEGIN Miscellaneous
SAY
	~~
IF ~Global("Comet","MYAREA",0)~
THEN REPLY
	@17
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		SetGlobal("Comet","MYAREA",1)
	~ EXIT
IF ~Global("Comet","MYAREA",1)~
THEN REPLY
	@18
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		SetGlobal("Comet","MYAREA",0)
	~ EXIT
IF ~~
THEN REPLY
	@15
	GOTO Start
IF ~~
THEN REPLY
	@8
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END
