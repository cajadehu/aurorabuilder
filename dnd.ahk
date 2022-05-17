#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode INPUT  ; Input is recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Icon, msctf.dll, 23

;===============================================================================================================
;DND
:c*:wbtw::Wild Beyond the Witchlight
:*:shileili::shillelagh
:c:dNd::Dungeons and Dragons
:c1:dnd::DnD
:c*:AHK::AutoHotKey

; XML HTML Code quick
;===============================================================================================================
;good for working with Aurora dnd5e files in Notepad++
:c1*:xmlc::{<}{!}--  --{>}{Left 4}
:*:regexbase64::{raw}(?s)<base64>\R?\K.*?(?=<\/base64>)
:*:regexsources::{raw}(?s)<sources>\R?\K.*?(?=<\/sources>)

;Aurora
;===============================================================================================================
:c*:lcgithub::{raw}https://github.com/cajadehu/aurorabuilder
:c*:au0::{raw}https://raw.githubusercontent.com/cajadehu/aurorabuilder/main/lemoncatPreferred.index
:c*:au1::{raw}https://raw.githubusercontent.com/cajadehu/aurorabuilder/main/lemoncat_textReplacement.index
:c*:au2::{raw}https://raw.githubusercontent.com/AuroraLegacy/elements/master/core.index
:c*:au3::{raw}https://raw.githubusercontent.com/AuroraLegacy/elements/master/supplements.index
:c*:au4::{raw}https://raw.githubusercontent.com/AuroraLegacy/elements/master/unearthed-arcana.index
:c*:au5::{raw}https://raw.githubusercontent.com/mamawerecat/AuroraCustomContent/main/taldorei-reborn.index
:c*:au6::{raw}https://raw.githubusercontent.com/community-elements/elements-dndwiki/master/dndwiki.index
:c*:au7::{raw}https://raw.githubusercontent.com/aurorabuilder/elements/master/third-party.index
:c*:au8::{raw}https://raw.githubusercontent.com/community-elements/elements-reddit/master/reddit.index
:c*:delau::{raw}DEL "%UserProfile%\AppData\Local\5e Character Builder\characters.aurora"

;Druid blocks
;===============================================================================================================
;druid wild shape levels
:c*:dws9::NonMoon Druid Wild Shapes{:} 2,3{=}1{/}4{;} 4-7{=}1{/}2{;} 8+{=}1

;druid wild shape 0-1
:c*:dws0::
{
	Send Druid Wild Shapes, no swimming, no flying{enter}
	Send CR 0 - Badger, Cat, Rat, Spider, Weasel. Badger.{enter}
	Send CR 1/8 - Camel, Giant Rat, Giant Weasel, Mastiff, Mule.{enter}
	Send CR 1/4 - Giant Badger, Giant Wolf Spider, Riding Horse, Velociraptor, Wolf. Cow, Panther.{enter}
	Send CR 1/2 - Ape, Warhorse.{enter}
	Send CR 1 - Brn Bear, Dr Wolf, Gnt Hyena, Gnt Spider.
}
return

;druid wild shape 0-1
:c*:dws1::
{
	Send Druid Wild Shapes{enter}
	Send CR 0 - Badger, Cat, Rat, Spider, Weasel. Bat, Badger, Crab, Octopus, Owl.{enter}
	Send CR 1/8 - Camel, Giant Rat, Giant Weasel, Mastiff, Mule.{enter}
	Send CR 1/4 - Giant Badger, Giant Wolf Spider, Riding Horse, Velociraptor, Wolf. Cow, Panther.{enter}
	Send CR 1/2 - Ape, Crocodile, Reef Shark, Warhorse.{enter}
	Send CR 1 - Brn Bear, Dr Wolf, Gnt Hyena, Gnt Spider, Gnt Vulture, Gnt Toad. Gnt Octopus.{enter}
}
return

;druid wild shape 2-6
:c*:dws2::
{
	Send CR 2 - Gnt Con Snake, Gnt Elk, Hntr Shark, Quetzalcoatlus, SaberT Tiger. Aurochs, Polar Bear.{enter}
	Send CR 3 - Ankylosaurus, Gnt Scorpion. Killer Whale.{enter}
	Send CR 4 - {enter}
	Send CR 5 - Brontosaurus, Gnt Crocodile, Gnt Shark. Triceratops.{enter}
	Send CR 6 - Mammoth.{enter}
	Send Elemental Forms - Fire, Water, Air. Earth.
}
return

;Artificer Blocks
;===============================================================================================================
;Artificer Alchemist Experimental Elixirs
:c*:aaee::
{
	Send Experimental Elixir {(}d6, Effect{)} {+} 2d6 {+} IntMod Temp HP IF lvl 9{enter}
	Send 1 - Healing Inst.       Drinker regains hit points equal to 2d4 {+} your IntMod.{enter}
	Send 2 - Swiftness 1h.       Drinker's walking speed increases by 10 feet.{enter}
	Send 3 - Resilience 10m.     Drinker gains a {+}1 bonus to AC.{enter}
	Send 4 - Boldness 1m.        Drinker can roll a d4 and add the number rolled to every attack roll and saving throw.{enter}
	Send 5 - Flight 10m.         Drinker gains a flying speed of 10 feet.{enter}
	Send 6 - Transformation 10m. Drinker's body is transformed as if by the Alter Self spell.{enter}
}
return

;minor alchemy transformation rate
:c*:MATR::Minor Alchemy Transformation Rate is 17.28 cubic inches, a 2.66 diameter, a baseball, per round

;Monk Blocks
;===============================================================================================================
;monk martial arts dies
:c*:mmad::Monk Martial Art Dies{;} 01-04=1d4{;} 05-10=1d6{;} 11-16=1d8{;} 17-20=1d10{;} 

;monk weapons
:c*:mweap::
{
	Send Monk Weapons{:} {(}Simple, melee, {!}2handed, {!}heavy{)}, Javelin is best choice.{enter}
	Send Melee{:} Club, Mace, Quarterstaff, Shortsword, Sickle.{enter}
	Send M{&}R{:}   Dagger, Hand Axe, Javelin, Light Hammer, Spear.
	Send Dedicated{:} Longsword or Whip
}
return

;Rolling Dice
;===============================================================================================================

;Data array for roll 5d6, drop the lowest 2 dice
:c1*:dnda::
Send 5d6LL {(}Array or Point Buy gives 72 points{)}{enter}
total := 0
perc := 0
loop 6
{
	Random, d1, 1, 6
	Random, d2, 1, 6
	Random, d3, 1, 6
	Random, d4, 1, 6
	Random, d5, 1, 6
	Send {[}%d1%,%d2%,%d3%,%d4%,%d5%{]}{tab}
	myVar := ""
	myVar = %d1%,%d2%,%d3%,%d4%,%d5%
	Sort myVar, N R D,  ;sort numerically, reversed, use comma as delimiter
	Send %myVar% SORTED{tab}
	; remove the last two entries
	
	Loop, 2
		myVar := RegExReplace(myVar,",\d+$","")
	Send %myVar% TRIMMED{tab}
	mySum := 0
	
	for k,v in StrSplit(myVar, ",")
		mySum += (v ? v : 0)
		
	Send %mySum% SUMMED{enter}
	total += %mySum%
	SetFormat Float, 0.2
	perc := ((total - 18) / 90)*100
	out := total . " TOTAL, " . perc . "`% MAX`n`n"
}
Send %out%
Return

;Data array for roll 4d6, drop the lowest die
:c1*:dndb::
Send 4d6L {(}Array or Point Buy gives 72 points{)}{enter}
total := 0
perc := 0
loop 6
{
	Random, d1, 1, 6
	Random, d2, 1, 6
	Random, d3, 1, 6
	Random, d4, 1, 6
	Send {[}%d1%,%d2%,%d3%,%d4%{]}{tab}
	myVar := ""
	myVar = %d1%,%d2%,%d3%,%d4%
	Sort myVar, N R D,  ;sort numerically, reversed, use comma as delimiter
	Send %myVar% SORTED{tab}
	; remove the last two entries
	
	Loop, 1
		myVar := RegExReplace(myVar,",\d+$","")
	Send %myVar% TRIMMED{tab}
	mySum := 0
	
	for k,v in StrSplit(myVar, ",")
		mySum += (v ? v : 0)
	
	Send %mySum% SUMMED{enter}
	total += %mySum%
	SetFormat Float, 0.2
	perc := ((total - 18) / 90)*100
	out := total . " TOTAL, " . perc . "`% MAX`n`n"
}
Send %out%
Return

;Roll various dice sizes, useful for playing by Discord or chat
:c1:/d2::
	Random, rand, 1, 2
	Send d2{:} %rand%
Return

:c1:/d3::
	Random, rand, 1, 3
	Send d3{:} %rand%
Return

:c1:/d4::
	Random, rand, 1, 4
	Send d4{:} %rand%
Return

:c1:/d5::
	Random, rand, 1, 5
	Send d5{:} %rand%
Return

:c1:/d6::
	Random, rand, 1, 6
	Send d6{:} %rand%
Return

:c1:/d7::
	Random, rand, 1, 7
	Send d7{:} %rand%
Return

:c1:/d8::
	Random, rand, 1, 8
	Send d8{:} %rand%
Return

:c1:/d10::
	Random, rand, 1, 10
	Send d10{:} %rand%
Return

:c1:/d12::
	Random, rand, 1, 12
	Send d12{:} %rand%
Return

:c1:/d14::
	Random, rand, 1, 14
	Send d14{:} %rand%
Return

:c1:/d16::
	Random, rand, 1, 16
	Send d16{:} %rand%
Return

:c1:/d18::
	Random, rand, 1, 18
	Send d18{:} %rand%
Return

:c1:/d20::
	Random, rand, 1, 20
	Send d20{:} %rand%
Return

:c1:/d22::
	Random, rand, 1, 22
	Send d22{:} %rand%
Return

:c1:/d24::
	Random, rand, 1, 24
	Send d24{:} %rand%
Return

:c1:/d26::
	Random, rand, 1, 26
	Send d26{:} %rand%
Return

:c1:/d28::
	Random, rand, 1, 28
	Send d28{:} %rand%
Return

:c1:/d30::
	Random, rand, 1, 30
	Send d30{:} %rand%
Return

:c1:/d100::
	Random, rand, 1, 100
	Send d100{:} %rand%
Return

;Generate a random 8 digit number between 10,000,000 and 99,999,999
;Useful for filenames and unique IDs etc.
:c1*:RRR::
	Random, rand, 10000000, 99999999
	Send %rand%
Return

;fantasy names
;===============================================================================================================

;Creates a random string of English Language Phonemes for name ideas
:c1*:NNN::
{
	consonants := ["b","bb","d","dd","ed","f","ff","ph","gh","lf","ft","g","gg","gh","gu","gue","h","wh","j","ge","g","dge","di","gg","k","c","ch","cc","lk","qu","q(u)","ck","x","l","ll","m","mm","mb","mn","lm","n","nn","kn","gn","pn","p","pp","r","rr","wr","rh","s","ss","c","sc","ps","st","ce","se","t","tt","th","ed","v","f","ph","ve","w","wh","u","o","z","zz","s","ss","x","ze","se","s","si","z","ch","tch","tu","ti","te","sh","ce","s","ci","si","ch","sci","ti","th","ng","n","ngue","y","i","j"] ;
	vowels := ["a","ai","au","a","ai","eigh","aigh","ay","er","et","ei","au","a_e","ea","ey","e","ea","u","ie","ai","a","eo","ei","ae","e","ee","ea","y","ey","oe","ie","i","ei","eo","ay","i","e","o","u","ui","y","ie","i","y","igh","ie","uy","ye","ai","is","eigh","i_e","a","ho","au","aw","ough","o","oa","o_e","oe","ow","ough","eau","oo","ew","o","oo","u","ou","u","o","oo","ou","o","oo","ew","ue","u_e","oe","ough","ui","oew","ou","oi","oy","uoy","ow","ou","ough","a","er","i","ar","our","ur","air","are","ear","ere","eir","ayer","a","ir","er","ur","ear","or","our","yr","aw","a","or","oor","ore","oar","our","augh","ar","ough","au","ear","eer","ere","ier","ure","our"] ;
	out := ""
	Random, long, 2, 4
	Loop
	{
		if (A_Index > long)
			break  ; Terminate the loop
		if (A_Index < 1)
			continue ; Skip the below and start a new iteration
		Random, c1, 1, consonants.MaxIndex()
		Random, v1, 1, vowels.MaxIndex()
		out := % out consonants[c1] vowels[v1] "-"
	}
	Send % RTrim(out,"-")
}
Return

;Randomly selects a line from the list of fantasy names in the file
:c1*:ZZZ::
{
	Loop, Read, fantasyNames.txt ;change to the location of your file
	Total_Lines = %A_Index%
	Random, Random_Number, 1, %Total_Lines%

	Loop, Read, fantasyNames.txt ;change to the location of your file
		{
			If A_Index = %Random_Number%
				{
					Send %A_LoopReadLine%
						Break
				}
		}
}
Return

;EOF
