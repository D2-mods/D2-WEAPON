BEGIN ~D2RAKST2~

IF ~!Global("d2rakst2","GLOBAL",1)~ BEGIN a.0
  SAY @2011 /* The stranger watches as you approach... */
  IF ~~ DO ~SetGlobal("d2rakst2","GLOBAL",1)~ GOTO a.1
END

IF ~~ BEGIN a.1
  SAY @2012 /* He motions to the odd sack on the ground... */
  IF ~~ REPLY @2021 /* Ask to browse Deidre's items. */ DO ~StartStore("wmart2",LastTalkedToBy)~ EXIT
  IF ~~ REPLY @2022 /* Ask to browse Joluv's items. */ DO ~StartStore("wmart1",LastTalkedToBy)~ EXIT
  IF ~~ REPLY @2023 /* Ask to browse Ribald's special store. */ DO ~StartStore("ribald3",LastTalkedToBy)~ EXIT
  IF ~~ REPLY @2015 /* Avoid eye contact... */ EXIT
END

IF ~Global("d2rakst2","GLOBAL",1)~ BEGIN b.0
  SAY @2013 /* The stranger motions to the odd sack on the ground... */
  IF ~~ REPLY @2021 /* Ask to browse Deidre's items. */ DO ~StartStore("wmart2",LastTalkedToBy)~ EXIT
  IF ~~ REPLY @2022 /* Ask to browse Joluv's items. */ DO ~StartStore("wmart1",LastTalkedToBy)~ EXIT
  IF ~~ REPLY @2023 /* Ask to browse Ribald's special store. */ DO ~StartStore("ribald3",LastTalkedToBy)~ EXIT
  IF ~~ REPLY @2015 /* Avoid eye contact... */ EXIT
END
