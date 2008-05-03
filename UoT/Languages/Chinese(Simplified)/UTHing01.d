BEGIN ~UTHing01~

//------------------------------- 主选单 -------------------------------//

IF ~Global("UTTalkedToHinge","MYAREA",0)~
THEN BEGIN First
SAY
	~在来得及对眼前的一切表示惊讶之前，知识已自面前流光溢彩的枢纽源源而来，持续不断地灌输到你的思绪之中。于是你便知道了自己身在何处。~
IF ~~
THEN GOTO Second
END

IF ~~
THEN BEGIN Second
SAY
	~这里是超越空间的维度、跨越时间的永恒，这里的生死轮回永无止境、善恶对抗纷争不休，这里是影之特珞无数衍生体中最为诡异险恶的半位面之一。~
IF ~~
THEN GOTO Third
END

IF ~~
THEN BEGIN Third
SAY
	~“次元竞技场”。~
	IF ~Global("UTTalkedToHinge","MYAREA",0)~ THEN DO
		~SetGlobal("UTTalkedToHinge","MYAREA",1)~ GOTO Start
END

IF ~GlobalGT("UTTalkedToHinge","MYAREA",0)~
THEN BEGIN Start
SAY
	~以缪比乌斯的名义：~
IF ~~
THEN REPLY
	~为吾展现致胜之道！~
	GOTO Challenge
IF ~~
THEN REPLY
	~为吾创造战斗之刃！~
	GOTO Storage
IF ~~
THEN REPLY
	~为吾开启虚空之门！~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTCutR2")
	~ EXIT
IF ~~
THEN REPLY
	~结束对话。~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
IF ~~
THEN REPLY
	~（测试用选单）~
	GOTO Miscellaneous
END

//------------------------------- 战斗 -------------------------------//

IF ~~ 
THEN BEGIN Challenge
SAY
	~~
IF ~~
THEN REPLY
	~挑战巴特兹小队。~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb01")
	~ EXIT
IF ~~
THEN REPLY
	~挑战塔那厘小队。~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb02")
	~ EXIT
IF ~~
THEN REPLY
	~挑战秘语者。~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb03")
	~ EXIT
IF ~~
THEN REPLY
	~挑战无魂者。~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb04")
	~ EXIT
IF ~~
THEN REPLY
	~挑战斩神者。~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		ClearAllActions()
		StartCutSceneMode()
		StartCutScene("UTComb05")
	~ EXIT
IF ~~
THEN REPLY
	~回到上级菜单。~
	GOTO Start
IF ~~
THEN REPLY
	~结束对话。~
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
	~开启次元商店。~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		StartStore("trshop",LastTalkedToBy(Myself))
	~ EXIT
IF ~~
THEN REPLY
	~回到上级菜单。~
	GOTO Start
IF ~~
THEN REPLY
	~结束对话。~
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
	~开启区域天灾：星坠。~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		SetGlobal("Comet","MYAREA",1)
	~ EXIT
IF ~Global("Comet","MYAREA",1)~ 
THEN REPLY
	~关闭区域天灾：星坠。~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
		SetGlobal("Comet","MYAREA",0)
	~ EXIT
IF ~~
THEN REPLY
	~回到上级菜单。~
	GOTO Start
IF ~~
THEN REPLY
	~结束对话。~
	DO ~
		ActionOverride("UTHing01",DestroySelf())
	~ EXIT
END