_PALETTECOLOR 1, _RGB32(255, 255, 255)
COLOR 0, 1
fontpath$ = ENVIRON$("SYSTEMROOT") + "\fonts\LiberationMono-Bold.ttf" 'Find Windows Folder Path.
fontpath$ = ENVIRON$("SYSTEMROOT") + "\fonts\DroidSansMono.ttf" 'Find Windows Folder Path.
'fontpath$ = ENVIRON$("SYSTEMROOT") + "\fonts\consolab.ttf" 'Find Windows Folder Path.
'fontpath$ = ENVIRON$("SYSTEMROOT") + "\fonts\ARLRDBD.ttf" 'Find Windows Folder Path.
'fontpath$ = "cyberbit.ttf"
'fontpath$ = "consola.ttf"
style$ = "MONOSPACE, BOLD, ITALIC"
font& = _LOADFONT(fontpath$, 22, style$)
_FONT font&



CLS
OPEN "Player.dat" FOR INPUT AS #1
INPUT #1, x$, str
INPUT #1, x$, dex
INPUT #1, x$, slug
INPUT #1, x$, energy
INPUT #1, x$, archaic
INPUT #1, x$, heavy
INPUT #1, x$, tech
CLOSE #1

IF dex < 1 THEN modi = -3: GOTO 1
IF dex < 3 THEN modi = -2: GOTO 1
IF dex < 6 THEN modi = -1: GOTO 1
IF dex < 9 THEN modi = 0: GOTO 1
IF dex < 12 THEN modi = 1: GOTO 1
IF dex < 15 THEN modi = 2: GOTO 1
modi = 3: GOTO 1

1
IF str < 1 THEN smodi = -3: GOTO 2
IF str < 3 THEN smodi = -2: GOTO 2
IF str < 6 THEN smodi = -1: GOTO 2
IF str < 9 THEN smodi = 0: GOTO 2
IF str < 12 THEN smodi = 1: GOTO 2
IF str < 15 THEN smodi = 2: GOTO 2
smodi = 3: GOTO 2
2
tohit0 = modi + skill
Timeline = 23

s78 = 71
CLS
spa = 25
PRINT SPC(spa); " Traveller Weapon Customizer"

LOCATE 9, 1
PRINT SPC(spa); " 1. TRAVELLER 2E"
PRINT
PRINT SPC(spa); " 2. 2300 AD"
PRINT
PRINT SPC(spa); " 3. TWILIGHT 2000"
PRINT
PRINT SPC(spa); " 4. Space:1889"
PRINT



PRINT SPC(spa);: INPUT " ", era
ix = 100
RESTORE 999
IF era = 2 THEN Timeline = 23: RESTORE 996
IF era = 3 THEN Timeline = 20: RESTORE 997
IF era = 4 THEN Timeline = 89: RESTORE 998: tech = 4
ix = 100: DIM trait$(10), text$(100)
'  READ tl, range, DamD, DamA, weight, price, magazine, magprice, traits

998 '1889
'  .476 Enfield                 1882    1D-1 12.11mm 17.1g 185m/s    293.4J 2 1.30 MR, WCM = 2.3  2D   [IBA   14% SAPI   2% ESAPI   2%]
DATA "S","x","89","P","Adams .476 Enfield",4,20,1,-1,1.1,0,5,0,0
DATA "12.11 mm Enfield, Length: 28.6 cm, Action: Double-Action Revolver, Mass (empty): 1.1 kg, Ammunition: .450 Adams, Muzzle Velocity: 210 mps, Magazine: 5-round, Magazine Mass: 0.15 kg."

'.450 Adams (Bulldog)         1881    1D-1 11.60mm 15.0g 210m/s    332.0J 3 1.30 MR, WCM = 2.1  2D   [IBA   18% SAPI   3% ESAPI   2%]
DATA "S","x","89","P","Beaumont-Adams Revolver .450",4,20,1,-1,1.1,0,5,0,0
DATA "11.6 mm Adams, Length: 28.6 cm, Action: Double-Action Revolver, Mass (empty): 1.1 kg, Ammunition: .450 Adams, Muzzle Velocity: 210 mps, Magazine: 5-round, Magazine Mass: 0.15 kg."


'Smoothbore Musket 1 -- 2 2 3 1 45         Brown bess
'Smoothbore Carbine 1 -- 2 2 2 1 30
'Weight  10.5 lb (4.8 kg) Length  58.5 in (1,490 mm) Paper cartridge, musket ball undersized (.69/17.526 mm) to reduce the effects of powder fouling Calibre .75 (19,050 mm) Barrels Smoothbore Rate of fire    User dependent; usually 3 to 4 rounds every 1 minute
DATA "S","x","89","R","Brown Bess Musket",3,45,2,0,4.8,0,1,0,1,"Slow Reload"
DATA "17.5 mm muzzleloading smoothbore, Length: 149 cm, Action: Single shot, Mass (empty): 4.8 kg, Ammunition: .69 ball, Muzzle Velocity: 270 mps, RoF: 3 rpm."


'Heavy Revolver   3 6 (3) l-2t 2 2 15     Colt SAA
' .45 Colt Revolver            1873    1D+1 11.53mm 16.2g 265m/s    567.4J 2 1.30 MR, WCM = 2.1  3D-1 [IBA   30% SAPI   5% ESAPI   4%] Nil
DATA "S","x","89","P","Colt Single Action Army .45",4,20,1,2,1.048,0,6,0,0
DATA "11.58 mm Revolver, Length: 28 cm, Action: Single shot, Mass (empty): 1.048 kg, Ammunition: .45 Colt, Muzzle Velocity: 293 mps, Magazine: 6-round cylinder, Magazine Mass: 0.2 kg."

'Heavy Revolver   3 6 (3) l-2t 2 2 15     Colt SAA
'.44-40 200gr lead 1873               2D-1 10.82mm 13.0g 379m/s    933.0J 3 1.30 MR, WCM = 1.8  3D   [IBA   57% SAPI   9% ESAPI   8%] 1-Nil
DATA "S","x","89","P","Colt Frontier Six Shooter .44-40",4,20,2,-1,1.048,0,6,0,0
DATA "10.82 mm Revolver, Length: 28 cm, Action: Single shot, Mass (empty): 1.048 kg, Ammunition: .44-40 Colt, Muzzle Velocity: 293 mps, Magazine: 6-round cylinder, Magazine Mass: 0.2 kg."

DATA "S","x","89","X","Gatling gun .58",4,90,2,2,77.2,0,40,0,1,"Auto 2"
DATA "11.6 mm machine gun, Length: 108 cm, Action: Auto, Mass (empty): 77.2 kg, Ammunition: 577/450 Martini-Henry, Muzzle Velocity: 400 mps, RoF: 200 rpm."

'.45-70 US-GOVERNMENT         1873    2D+2 11.09mm 26.3g 400m/s  2,102.0J 2 1.30 MR, WCM = 2.2  5D+3 [IBA  121% SAPI  19% ESAPI  17%]
DATA "S","x","89","X","Gatling gun .45-70",4,90,2,2,77.2,0,21,0,1,"Auto 3"
DATA "11.09 mm machine gun, Length: 108 cm, Action: Auto, Mass (empty): 77.2 kg, Ammunition: .45-70 US-GOVERNMENT, Muzzle Velocity: 400 mps, RoF: 400 rpm. Ammo can be reloaded while firing."


DATA "S","x","89","X","Gatling gun .30",4,90,3,0,77.2,0,240,0,1,"Auto 4"
DATA "7.62 mm machine gun, Length: 108 cm, Action: Auto, Mass (empty): 77.2 kg, Ammunition: .30 cal, Muzzle Velocity: 400 mps, RoF: 600 rpm."

'  .44 Henry Rimfire            1860    1D+2 11.27mm 13.6g 343m/s    770.0J 3 1.30 MR, WCM = 2.0  3D   [IBA   43% SAPI   7% ESAPI   6%] Nil
DATA "S","x","89","R","Henry rifle .44",4,30,1,2,4.2,0,15,0,0
DATA "10.8 mm repeating rifle, Length: 114 cm, Action: Single shot, Mass (empty): 4.2 kg, Ammunition: .44 Henry Rimfire, Muzzle Velocity: 343 mps, Magazine: 15-round tube, Magazine Mass: 0.8 kg, RoF: 20 rpm."




'   .600 NITRO-EXPRESS           1903    5D   15.70mm 58.0g 620m/s 11,146.0J 3 1.60 MR, WCM = 5.1 27D-1 [IBA  212% SAPI  33% ESAPI  29%]
'Heavy Double Rifle 2 2 1 4 4 1 150        Holland and Holland .600 Nitro ~ / ' / Express
DATA "S","x","89","R","Holland & Holland Nitro Express .600",4,150,5,0,5.2,0,2,0,1,"Bulky"
DATA "15.7 mm double-barreled rifle, Length: 112 cm, Action: Single shot, Mass (empty): 4.9 kg, Ammunition: .600 fixed cartridge ball, Muzzle Velocity: 620 mps, Magazine: 2 rounds, Mass of two rounds: 0.3 kg, RoF: 30 rpm."

'Heavy Double Rifle 2 2 1 4 4 1 150        Holland and Holland .600 Nitro ~ / ' / Express
'1889 4-bore        (1880)                6D-1 26.70mm129.6g 460m/s 13,711.4J 2 1.00 MR, WCM = 6.6 38D   [IBA  231% SAPI  36% ESAPI  31%]
DATA "S","x","89","R","4-bore, 2-barrel elephant gun",4,50,6,-1,9.8,0,2,0,1,"Very Bulky"
DATA "26.7 mm double-barreled rifle, Length: 80 cm, Action: Single shot, Mass (empty): 9.8 kg, Ammunition: 4-bore solid shot, Muzzle Velocity: 410 mps, RoF: 2 rpm."


DATA "S","x","89","R","4-bore, elephant gun",4,50,6,-1,5.9,0,1,0,2,"Very Bulky","Slow Reload"
DATA "26.7  mm  muzzle  loader,  Length:  112 cm, Action: Single shot, Mass (empty):  5.9 kg, Ammunition: 4-bore solid shot, Muzzle Velocity: 410 mps, RoF: 1 rpm."

'  .577 SNIDER Lancaster        1867    2D+2 14.50mm 29.0g 400m/s  2,290.0J 3 1.30 MR, WCM = 3.1  7D+3 [IBA   77% SAPI  12% ESAPI  11%]
DATA "S","x","89","P","Lancaster Howdah .577",4,20,2,2,1.4,0,4,0,1,"Bulky"
DATA "14.60 mm pistol, Length: 28.0 cm, Action: Single shot, Mass (empty): 1.4 kg, Ammunition: .577 Lead Ball, Muzzle Velocity: 400 mps, Magazine: 4-round, Magazine Mass: 0.2 kg."

'1889 11mm French ORD  1873               1D-1 11.46mm 10.6g 190m/s    196.0J 3 1.30 MR, WCM = 1.9  1D+1 [IBA   11% SAPI   2% ESAPI   1%] Nil
DATA "S","SG","89","P","LeMat Revolver 11mm",4,20,1,-1,1.41,0,9,0,0
DATA "11.46 mm Revolver, Length: 36 cm, Action: Single shot, Mass (empty): 1.41 kg, Ammunition: 11mm French ORD, Muzzle Velocity: 190 mps, Magazine: 9-round cylinder, Magazine Mass: 0.3 kg."


'Heavy Multibarrel   2 4 (2) 2 2 1 15   Lancaster
DATA "S","SG","89","P","LeMat Revolver .42",4,20,1,0,1.41,0,9,0,0
DATA "10.67 mm Revolver, Length: 36 cm, Action: Single shot, Mass (empty): 1.41 kg, Ammunition: .42 Ball, Muzzle Velocity: 190 mps, Magazine: 9-round cylinder, Magazine Mass: 0.3 kg."


'Bolt Action Rifle (LM) 1 8 (4) 2 3 1 120     Lee Metford
'Bolt Action Carbine (LM) 1 8 (4) 2 2 1 90       Lee Metford
'7.92 mm .303 British        1888    3D+1  7.92mm 12.0g 783m/s  2,636.0J 3 1.30 MR, WCM = 1.3  4D+2 [IBA  298% SAPI  46% ESAPI  41%]
DATA "S","x","89","R","Lee-Metford .303",4,126,3,1,3.8,0,8,0,0
DATA "7.92 mm repeating rifle, Length: 126 cm, Action: Single shot, Mass (empty): 3.8 kg, Ammunition: .303 Mk I, Muzzle Velocity: 783 mps, RoF: 20 rpm."

'Breech-loading Carbine I -- I 2 2 I 60          Martini-Henry
DATA "S","x","89","R","Martini-Henry .577-450",4,90,3,0,3.8,0,1,0,1,"Reload"
DATA "11.6 mm breechloading rifle, Length: 125 cm, Action: Single shot, Mass (empty): 3.8 kg, Ammunition: 577/450 Martini-Henry, Muzzle Velocity: 400 mps, RoF: 12 rpm."

'Bolt Action Rifle 1 5 (5) 2 3 1 120              Mauser
'Bolt Action Carbine 1 5 (5) 2 2 1 90                Mauser
'1889 11.15x60Mauser(1880)                3D   11.30mm 24.0g 440m/s  2,280.0J 3 1.00 MR, WCM = 1.6  4D+3 [IBA  214% SAPI  33% ESAPI  29%]
DATA "S","x","89","R","Mauser Model 1871",4,120,3,0,4.5,0,1,0,1,"Reload"
DATA "11.15 mm bolt-action rifle, Length: 135 cm, Action: Single shot, Mass (empty): 4.5 kg, Ammunition: 11.16x60R, Muzzle Velocity: 440 mps, RoF: 12 rpm."

DATA "S","x","89","R","Mauser Model 71-84",4,120,3,0,4.5,0,8,0,0
DATA "11.15 mm bolt-action rifle, Length: 135 cm, Action: Single shot, Mass (empty): 4.5 kg, Ammunition: 11.16x60R, Muzzle Velocity: 440 mps, Magazine: 8-round tubular magazine, RoF: 20 rpm."

DATA "S","x","89","R","Mauser Model 80-07",4,120,3,0,4.5,0,5,0,0
DATA "11.15 mm bolt-action rifle, Length: 135 cm, Action: Single shot, Mass (empty): 4.5 kg, Ammunition: 11.16x60R, Muzzle Velocity: 440 mps, Magazine: 5-round stripper clip, RoF: 20 rpm."

DATA "S","x","89","X","Maxim gun .577-450",4,90,3,0,27.2,0,250,0,1,"Auto 3"
DATA "11.6 mm machine gun, Length: 108 cm, Action: Auto, Mass (empty): 27.2 kg, Ammunition: 577/450 Martini-Henry, Muzzle Velocity: 400 mps, RoF: 550 rpm."

DATA "S","x","89","X","Maxim gun .303",4,90,3,0,27.2,0,250,0,1,"Auto 4"
DATA "7.92 mm machine gun, Length: 108 cm, Action: Auto, Mass (empty): 27.2 kg, Ammunition: .303 British, Muzzle Velocity: 744 mps, RoF: 550 rpm."


'Muzzle-loading Rifle 1 -- 3 2 3 1 75 British Enfield and American Springfield RifleMusket
'Muzzle-loading Carbine 1 -- 2 2 2 1 45
'Pattern 1853 Enfield Weight    9.5 lb (4.3 kg) unloaded Length 55 in (1,400 mm) Cartridge  .577 ball Calibre   .58 in (15 mm) Action   Percussion lock Rate of fire    User dependent, usually 3+ rounds a minute Muzzle velocity  900 ft/s (270 m/s) Maximum firing range 1,250 yd (1,140 m) Feed system  Muzzle-loading Sights   adjustable ramp rear sights, fixed-post front sights
DATA "S","x","89","R","Pattern 1853 Enfield Rifle",4,90,2,0,4.3,0,1,0,1,"Slow Reload"
DATA "15 mm muzzleloading rifle, Length: 140 cm, Action: Single shot, Mass (empty): 4.3 kg, Ammunition: .577 ball, Muzzle Velocity: 270 mps, RoF: 3 rpm."

'Remington 1875", Ammunition  : .44 Remington Standard length: 33 cm Standard barrel: 19 cm, 14.6 cm (rare) Barrel: 6 shots Mass of the empty weapon: 1.25  kg
'1889 .44 Remington   1875                1D+2 11.40mm 14.7g 324m/s    771.7J 0 1.30 MR, WCM = 2.0  3D   [IBA   42% SAPI   7% ESAPI   6%] Nil
DATA "S","x","89","P","Remington 1875 .44",4,20,1,2,1.25,0,6,0,0
DATA "11.40 mm Revolver, Length: 33 cm, Action: Single shot, Mass (empty): 1.25 kg, Ammunition: .44 Remington, Muzzle Velocity: 324 mps, Magazine: 6-round cylinder, Magazine Mass: 0.2 kg."

'Remington 1890" Ammunition  : .44-40 WCF, Standard length: 28 cm, Standard barrel: 19 cm, 14 cm, Barrel: 6 shots, Mass of the empty weapon: 1.10  kg
DATA "S","x","89","P","Remington 1890 .44-40",4,20,2,-1,1.1,0,6,0,0
DATA "10.82 mm Revolver, Length: 28 cm, Action: Single shot, Mass (empty): 1.1 kg, Ammunition: .44-40 Wincherster, Muzzle Velocity: 293 mps, Magazine: 6-round cylinder, Magazine Mass: 0.2 kg."

'Light Multibarrel  2 2 (2) l-2t 1 2 5     .41 Double derringer
' 1889 .41 Derringer (1863)                1D-2 10.30mm  8.0g 130m/s     71.0J 3 1.00 MR, WCM = 1.1  1D-2 [IBA    8% SAPI   1% ESAPI   1%]
DATA "S","x","89","P","Remington Model 95",4,5,1,-1,.2,0,2,0,0
DATA "10.3 mm pistol, Length: 12.38 cm, Action: Single shot, Mass (empty): 0.31 kg, Ammunition: .41, Muzzle Velocity: 130 mps, Magazine: 2-round, Magazine Mass: 0.05 kg."


'Breech-loading Rifle 1 -- 1 2 3 1 90           Remington Rolling Block Rifle
'1889 12,17x42 REM  (1867)                2D+2 12.70mm 24.0g 386m/s  1,788.0J 3 1.00 MR, WCM = 1.9  5D-1 [IBA  133% SAPI  21% ESAPI  18%]
DATA "S","x","89","R","Remington Rolling Block Rifle .44",4,90,2,2,4.1,0,1,0,1,"Reload"
DATA "12.17 mm breechloading rifle, Length: 128 cm, Action: Single shot, Mass (empty): 4.1 kg, Ammunition: 12.17x42mmRF, Muzzle Velocity: 386 mps, RoF: 12 rpm."

'Long Hunting Rifle 1 -- 1 3 3 I 200     Sharps .50 caliber Long  Range Express "Big Fifty"
DATA "S","x","89","R","Sharps .50 caliber Long Range Express",4,200,4,-1,6,0,1,0,3,"Bulky","Reload","Scope"
DATA "13.00 mm breechloading rifle, Length: 148 cm, Action: Single shot, Mass (empty): 6 kg, Ammunition: .50-90 Sharps, Muzzle Velocity: 533 mps, RoF: 6 rpm."

'.45-70 US-GOVERNMENT         1873    2D+2 11.09mm 26.3g 400m/s  2,102.0J 2 1.30 MR, WCM = 2.2  5D+3 [IBA  121% SAPI  19% ESAPI  17%]
DATA "S","x","89","R","Springfield Model 1873",4,120,3,-1,4.1,0,1,0,1,"Reload"
DATA "11.6 mm breechloading rifle, Length: 128 cm, Action: Single shot, Mass (empty): 4.1 kg, Ammunition: .45-70.405, Muzzle Velocity: 410 mps, RoF: 15 rpm."


'Lever Action Carbine 2 6 (3) l-2t 1 1 45
DATA "S","x","89","R","Spencer M-1860 .56-56",4,30,2,0,5.2,0,7,0,0
DATA "13.2 mm repeating rifle, Length: 120 cm, Action: Single shot, Mass (empty): 5.2 kg, Ammunition: .56-56 Spencer rimfire, Muzzle Velocity: 315 mps, Magazine: 7-round tube, Magazine Mass: 0.7 kg, RoF: 14-20 rpm."

'.577 Tranter                 1867    1D+1 14.60mm 25.9g 221m/s    632.5J 2 1.30 MR, WCM = 3.1  4D   [IBA   21% SAPI   3% ESAPI   3%]
DATA "S","x","89","P","Tranter .577 Revolver",4,20,1,1,1.4,0,6,0,0
DATA "14.60 mm Revolver, Length: 28.0 cm, Action: Single shot, Mass (empty): 1.4 kg, Ammunition: .577 Boxer, Muzzle Velocity: 221 mps, Magazine: 6-round, Magazine Mass: 0.15 kg."

'1889 .41 Volcanic  (1848)                1D-2 10.41mm  6.9g 150m/s     76.0J 3 1.00 MR, WCM = 1.1  1D-2 [IBA    8% SAPI   1% ESAPI   1%] Nil
DATA "S","x","89","P","Volcanic Pistol .41",4,5,1,-2,1,0,7,0,0
DATA "10.41 mm Pistol, Length: 30.0 cm, Action: Single shot, Mass (empty): 1.0 kg, Ammunition: .41 Volcanic, Muzzle Velocity: 150 mps, Magazine: 7-round tube, Magazine Mass: 0.15 kg."

'.44-40 200gr lead 1873               2D-1 10.82mm 13.0g 379m/s    933.0J 3 1.30 MR, WCM = 1.8  3D   [IBA   57% SAPI   9% ESAPI   8%] 1-Nil
'Lever Action Rifle 2 12 (3) l-2t 2 1 75
DATA "S","x","89","R","Winchester 1873 .44-40",4,75,2,-1,4.3,0,15,0,0
DATA "10.8 mm repeating rifle, Length: 125 cm, Action: Single shot, Mass (empty): 4.5 kg, Ammunition: .44-40 WINCHESTER, Muzzle Velocity: 379 mps, Magazine: 15-round tube, Magazine Mass: 0.8 kg, RoF: 20 rpm."

DATA "S","x","89","R","Winchester 1876 .45-70",4,50,3,-1,4.3,0,10,0,0
DATA "11.6 mm repeating rifle, Length: 125 cm, Action: Single shot, Mass (empty): 4.5 kg, Ammunition: .45-70, Muzzle Velocity: 425 mps, Magazine: 10-round tube, Magazine Mass: 0.8 kg, RoF: 20 rpm."

DATA "S","x","89","R","Winchester 1886 .50-110WCF",4,50,2,3,4.1,0,9,0,0
DATA "13.0 mm repeating rifle, Length: 113 cm, Action: Single shot, Mass (empty): 4.1 kg, Ammunition: .50-110 WINCHESTER, Muzzle Velocity: 490 mps, Magazine: 9-round tube, Magazine Mass: 0.8 kg, RoF: 20 rpm."


'12-gauge Double 2 2 1 ID 3 0 30*
DATA "S","X","X","R","12-gauge Double",4,30,4,0,4,0,2,0,2,"Bulky","Shot"
DATA "Shotguns are smoothbore weapons that typically fire ammunition containing multiple small pellets. They are most effective at short range. A shotgun using pellet ammunition ignores Dodge dice modifers, but Armour gives double protection against pellet attacks."

'12-gauge Scattergun 2 2 1 ID 3 0 15"*
DATA "S","X","X","R","12-gauge Scattergun",4,15,4,0,2,0,2,0,2,"Bulky","Shot"
DATA "Popular more as a threat and (comparative) ease of concealment than a serious combat weapon, a sawed-off shotgun has had its barrels greatly shortened and the stock removed. It has a very short range but the wide spread of shot doubles the attack roll bonus at short range (DM+2)."

'12-gauge Lever Action 2 5 (2) ID 3 0 30*    Winchester Repeating Shotgun
DATA "S","X","X","R","Winchester Repeating Shotgun ",4,30,4,0,4,0,5,0,2,"Bulky","Shot"
DATA "Shotguns are smoothbore weapons that typically fire ammunition containing multiple small pellets. They are most effective at short range. A shotgun using pellet ammunition ignores Dodge dice modifers, but Armour gives double protection against pellet attacks."

DATA "XXX"
'  READ tl, range, DamD, DamA, weight, price, magazine, magprice, traits

'S M A L L ARMS FIRING TABLE
'Required
'Shots Mag Reload Wnd Strength Save Range
'Pistols
'Single-Barrel Pistol  1 - I 2 1 15   rEMINGTON ROLLING BLOCK
'Light Revolver  3 6 (3) l-2t 1 2 10    Hopkins & Allen .32


'Rifles

'Shotguns
'20-gauge Double 2 2 1 ID/2 2 0 30*



'N o n f l r e a r m s
'Bow l - - i 1 2 2 30
'Spear 1 -- -- 2 3 2 10
'Throwing Knife 1 -- -- 1 2 3 5
'Stone 1 -- -- 1 1 4 5 t



996

'  READ tl, range, DamD, DamA, weight, price, magazine, magprice, traits

DATA "S","x","23","P","AI-987 Zmeya",10,40,1,2,1,750,26,3.9,1,"Auto 4"
DATA "6.5 mm conventional autopistol, Length: 23 cm, Action: Single shot or burst, Mass (empty): 0.8 kg, Ammunition: 6.5x33 mm fixed cartridge ball, Muzzle Velocity: 420 mps, Magazine: 26-round removable box magazine, Mass of loaded magazine: 0.15 kg, RoF: 1200 rpm."

DATA "S","GL","23","R","Avtomat Segetov 2289",12,400,3,3,4.3,1350,60,10,2,"Auto 4","Scope"
DATA "4.54 mm gauss rifle, Length: 73 cm, Action: Single shot or burst, 4.54x21 mm Flechette, Muzzle Velocity: 1,530 mps, RoF: 800 rpm, Magazine: 60-round box magazine with integral power cell."

DATA "S","x","23","R","Darlan Fabrique FTE-10",12,700,6,0,13.3,3255,10,60,4,"AP 6","Scope","Laser","Very Bulky"
DATA "10 mm Gauss sniper rifle, Length: 192 cm ,Mass: 13.3 kg, Action: Single shot, Ammunition: 10x37 mm Flechette, Muzzle Velocity: 1,670 mps, Magazine: 10-round box magazine. Separately loaded 30-round power cell. Magazine Mass: 0.3 kg, RoF: 50 rpm"


DATA "S","x","23","R","DunArmCo Close Assault Gun",12,50,4,0,4.5,1340,10,20,3,"Bulky","Auto 4","Shot"
DATA "18 mm automatic shotgun, Length: 68 cm, Mass (empty): 3.5 kg, Action: Single shot or bursts, Ammunition: 18x60 mm fixed cartridge buckshot (9x8mm slugs), Muzzle Velocity: 410 mps, Magazine: 20-round box"


DATA "S","x","23","R","FAA-73",10,400,3,0,3.5,360,25,10,1,"Auto 4"
DATA "7.5 mm conventional assault rifle, Length: 83 cm, Action: Single shot or bursts, Mass (empty): 3.0 kg, Ammunition: 7.5x40 mm fixed cartridge ball, Muzzle Velocity: 910 mps for rifle, Magazine: 25 round removable box magazine (50 or 100-round, also available, for Lv20 and Lv50 each), Mass of loaded rifle magazine: 0.5 kg (1.1 kg for 50 round, 2.4 kg for 100-round snail mag), Price: Lv360, Lv10 for 600 loose rounds, RoF: 550 rpm."

DATA "S","GL","23","R","Guiscard FAM-90",12,450,4,1,5.0,2100,60,20,4,"Holo","Laser","AP 2","auto 6"
DATA "4.5 mm Gauss rifle, Length: 76cm, Mass (empty); 4.5 kg, Action: Single shot or bursts, Ammunition: 4.5x20 mm Flechette, Muzzle Velocity: 1,600 mps, Magazine: 60-round box magazine with integral power cell magazine, Magazine Mass: 0.5 kg, RoF: 2,000 rpm in 4-round burst mode."

DATA "S","x","23","R","Guiscard FC-68",9,250,1,0,1.3,720,70,20,1,"Auto 4"
DATA "5.0 mm sporting rifle, Length: 75 cm, Action: Single shot or bursts, Mass (empty): 1.0 kg, Ammunition: 5x15 mm fixed cartridge ball, Muzzle Velocity: 630 mps, Magazine: 70-round box, Magazine Mass: 0.3 kg, RoF: 600 rpm."

DATA "S","x","23","R","Guiscard FC70 (Fusil Chasseur 2270)",10,400,3,0,3.2,650,5,10,1,"Scope"
DATA "7.5 mm hunting rifle, Length: 102cm, Mass (empty): 3.0 kg, Action: Single shot, Ammunition: 7.5x40 mm fixed cartridge ball, Muzzle Velocity: 910mps, Magazine: 5-round box, Magazine Mass: 0.2kg, Lv10 for box of 100 rounds, RoF: 120rpm."

DATA "S","x","23","P","Guiscard F-44 Gauss Gun",12,500,4,1,35,2500,5000,1000,3,"Auto 8","APDS 12","Holo"
DATA "4.5 mm crew-served gauss support weapon, Length: 130 cm, Mass (empty): 20 kg, Action: Single shot or bursts, Ammunition: 5.5x25 mm Flechette, Muzzle Velocity: 1,100 mps, Magazine: 5,000 - round cassettes, Magazine Mass: 15 kg, RoF: 1,200 rpm, Lv 20 for box of 100 rounds, Lv 50 for empty drum."

DATA "S","x","23","P","Hancock 9-23",10,20,1,1,0.5,170,6,20,1,""
DATA "9 mm police revolver, Length: 21 cm, Mass (empty): 0.5 kg, Action: Single shot, Ammunition: 9x23 mm fixed cartridge ball, Muzzle Velocity: 390 mps, Magazine: 6-round cylinder, Mass of 6 rounds in Reloader: 0.1 kg."

DATA "S","x","23","R","Haifa Defense Industries Muzna Shotgun",12,50,4,0,3.5,1500,16,6,1,"Shot"
DATA "18mm binary-propellant shotgun, Length: 69 cm, Action: Single shot, Mass (empty): 2.7 kg, Ammunition: 18x40 mm fxed cartridge buckshot (9x8mm slugs), Muzzle Velocity: 540 mps, Magazine: 16 round internal tube (2x 8-round tubes), separate oxidizer and propellant bottles for 120 shots, Mass of loaded magazine: 0.4 kg, 0.4kg for propellant bottles. Price: Lv1500, Lv10 per box of 100 rounds, Lv30 for propellant bottles, RoF: 60rpm."

DATA "S","GL","23","R","Leefield L55 Gauss Assault Rifle",12,450,4,1,5.3,2200,60,20,2,"auto 4","AP 4"
DATA "4.5mm Gauss Rifle with integral 30mm grenade launcher, Length: 78 cm, Action: Single shot or Bursts, Mass (empty): 4.8 kg, Ammunition: 4.5x20 mm Flechette, Muzzle Velocity: 1510 mps, Magazine: 60 removable box magazine with integral power cell, Mass of loaded magazine: 0.5 kg, Lv20 per 60-round disposable magazine, RoF: 2000rpm in 4-round burst mode."

DATA "S","GL","AL","R","M41A1 Pulse Rifle",10,250,4,2,4.7,2000,99,60,3,"Auto 6","Scope","Laser"
DATA "10.0 mm Heavy ACR, Length: 84 cm, Action: Single shot, burst or full Auto, Mass (empty): 4.38 kg, Ammunition: US M309 10x24 mm caseless, Muzzle Velocity: 840 mps, Magazine: 99-round box, Magazine Mass: 1.5 kg, RoF: 900 rpm."

'  Rawlings Bluebird   9   Pistol  50  3d6     1,4 Lv900   6   Lv40/200    No  2
DATA "S","x","23","X","Rawlins Bluebird .357",9,50,2,0,1.4,900,6,.9,0
DATA "9mm conventional revolver, Length: 24 cm, Action: Single shot, Mass (empty): 1.1 kg, Ammunition: 9x29 mm (.357 Magnum calibre in Texas), Muzzle Velocity: 900 mps, Magazine: 6 rounds internal cylinder, Mass of six rounds, Lv30 for 200 loose rounds, RoF: 40rpm."

'  Rawlings Redbird    9   Pistol  50  3d6+3   1,8 Lv1,200     6   Lv40/60 No  1
DATA "S","x","23","P","Rawlings Redbird .44 Magnum",9,20,2,2,1.8,1200,6,1.2,0
DATA "11.2mm conventional revolver, Length: 32 cm, Action: Single shot, Mass (empty): 1.4 kg, Ammunition: 11.2x30 mm (.44 Magnum calibre in Texas), Muzzle Velocity: 1,020 mps, Magazine: 6 rounds internal cylinder, Mass of six rounds: 0.35 kg, Price: Lv1,200, Lv40 for 200 loose rounds, RoF: 40rpm."

'  Rawlings Blackbird  9       50  4d6     1,1 Lv1,800     6   Lv50/200    No  1
DATA "S","x","23","P","Rawlings Blackbird .50cal",9,50,4,0,1.1,1800,6,1.5,0
DATA "12.7mm conventional revolver, Length: 36 cm, Action: Single shot, Mass (empty): 1.9 kg, Ammunition: 12.7x35 mm (.50 calibre in Texas), Muzzle Velocity: 940 mps, Magazine: 6 rounds internal cylinder, Mass of six rounds: 0.30 kg, Lv50 for 200 loose rounds, RoF: 40rpm."


DATA "S","x","23","P","Rockwell 12-39",10,30,4,1,2.1,900,6,9,1,"Bulky"
DATA "12mm hunting revolver, Mass (Empty): 1.8 kg, Length: 44 cm, Mass (empty): 1.8 kg, Action: Single shot, Ammunition: 12x39 mm fixed cartridge ball, Muzzle Velocity: 620mps, Magazine: 6-round cylinder, Magazine Mass: 0.3 kg, RoF: 60 rpm."

DATA "S","x","23","R","Rockwell 12-81",10,550,5,0,14.5,1200,6,50,1,"Scope"
DATA "12 mm big game and sniper rifle, Length: 144 cm, Mass (empty): 14 kg, Action: Single shot, Ammunition: 12x81 mm fixed cartridge ball, Muzzle Velocity: 1,100 mps, Magazine: 6-round box, Magazine Mass: 0.5 kg, Price: Lv 1,200, Lv 50 for box of 10 rounds,  RoF: 30 rpm."

'    Lk-1    12  Ri?e    500 4d6     3,5 Lv2,550     30  Lv15    No  0


DATA "S","GL","23","R","Rorttman Lk-1",12,500,4,0,3.5,2550,30,15,1,"Holo"
DATA "35-01 laser rifle, Length: 65cm, Mass (empty): 2.5kg, Action: Single shot, Pulse Energy: 0.35 megajoules, Muzzle Velocity: C, Magazine: 12 MJ FDLMS cell (30 pulses), Magazine Mass: 1kg, Lv15 for disposable cell, RoF: 120rpm."



DATA "S","GL","23","R","Rorttman Sk-19",12,400,4,0,4.5,1320,50,15,2,"Auto 6","AP 4"
DATA "9.0 mm binary propellant assault rifle, gun, Length 75 cm, Action: Single shot or bursts, Ammunition: 9x12 mm APHE, Muzzle Velocity: 700 mps (area fire 400 mps), Magazine: 50-round box magazine with separate propellant gas bottle with charge for 600 aimed shots or 200 bursts, ROF: 900 rpm."


DATA "S","x","23","P","Stracher P-11",12,40,4,0,1.7,350,6,50,1,"Bulky"
DATA "11.0 mm automatic, Length: 35 cm, Action: Single shot, Ammunition: 11x35 mm fixed cartridge ball, Muzzle Velocity: 580 mps, RoF: 120 rpm, Lv20 for box of 100 rounds."

DATA "S","x","23","R","Stracher Double Express .600",10,200,5,0,5.2,8000,2,2,0
DATA "15.2 mm double-barreled rifle, Length: 112 cm, Action: Single shot, Mass (empty): 4.9 kg, Ammunition: 15.2x120 mm fixed cartridge ball, Muzzle Velocity: 1,370 mps, Magazine: 2 rounds, Mass of two rounds: 0.3 kg, Price: Lv 800 for the Classik model, Lv 8,000 for the Meisterwerk, Lv 2 per round, RoF: 30 rpm."




DATA "S","gl","23","P","SDP 10mm Detective Special",10,50,2,1,1,500,5,1,0
DATA "10.0 mm police revolver, Length: 18 cm, Action: Single shot Ammunition: 10 x 33 mm fixed cartridge ball, Muzzle Velocity: 480 mps Magazine: 5-round cylinder, Weight of 5 rounds in reloader: 0.1 kg"


DATA "S","x","23","R","Sturmgewehr-2277",9,350,3,1,3.3,280,40,10,1,"Auto 4"
DATA "5.5 mm conventional assault rifle, Length: 75 cm, Mass (empty): 3 kg, Action: Single shot or bursts, Ammunition: 5.5x40 mm fixed cartridge ball, Muzzle Velocity: 1,200 mps, Magazine: 40 rounds, Magazine Mass: 0.3 kg, RoF: 650 rpm."

DATA "S","x","23","P","Tork SA-9 Pepperball Gun",10,10,0,0,.8,400,8,8,0
DATA "15mm gas-powered semi-automatic pistol, Length: 27 cm, Action: Single shot, Mass (empty): 0.6 kg, Ammunition: 15mm hard gel capsule, Muzzle Velocity: 120 mps, Magazine: 8 removable box magazine with compressed gas bottle, Mass of loaded magazine: 0.2 kg, RoF: 60rpm, Price: Lv400, Lv20 per box of 50 pepper-ball rounds."



'Traylor C4  10  Pistol      2d6+1   0,6 Lv600   7   Lv20/200    No  0
DATA "S","x","23","P","Traylor Arms C4 Wallet Gun",10,10,1,0,0.6,600,7,.7,0
DATA "4.0 mm conventional autopistol, Length: 12 cm, Action: Single shot, Mass (empty): 0.5 kg, Ammunition: 4x10 mm ball, Muzzle Velocity: 520 mps, Magazine: 7-round removable box magazine, Mass of seven rounds: 0.1 kg, Lv20 for 200 loose rounds, RoF: 80rpm."



DATA "S","x","23","R","Traylor Arms M-2",10,300,3,2,3.4,260,30,15,2,"Auto 4","Scope"
DATA "9.0 mm conventional assault rifle, Country: USA, Length: 79cm, Mass (empty): 3kg, Action: Single shot or bursts, Ammunition: 9x44mm fixed cartridge APHE, Muzzle Velocity: 800 mps, Magazine: 30 rounds, Magazine Mass: 0.4kg, RoF: 550 rpm."

DATA "S","GL","23","R","Traylor Arms M5A1",12,400,4,1,3.5,1740,40,10,4,"Holo","Laser","AP 2","Auto 4"
DATA "9.0 mm binary propellant assault rifle, Length: 75 cm, Mass (Unloaded): 3 kg, Action: Single shot or bursts, Ammunition: 9x40 mm APHE, Muzzle Velocity: 1,200 mps, Magazine: 40 rounds (separate propellant bottles for 120 shots), Magazine Mass: 0.4 kg, Propellant Bottle Mass: 0.1 kg, RoF: 700 rpm"

'Traylor M57 10  Pistol  30  3d6     0,7 Lv300   20  Lv10/200    No  1
DATA "S","x","23","P","Traylor M57 Chip Traylor Special",10,30,1,2,0.73,300,20,1,0
DATA "9.0 mm automatic, Length: 20 cm, Mass (empty): 0.6 kg, Action: Single shot, Ammunition: 9x24 mm fixed cartridge ball, Muzzle Velocity: 460 mps, Magazine: 20-round box, Magazine Mass: 0.13 kg, RoF: 120 rpm."

'Traylor M59 10  Pistol  40  3d6+3   0,9 Lv500   18  Lv20/200    No  1
DATA "S","x","23","P","Traylor Model M-59",10,40,2,0,0.9,500,18,2,0
DATA "10.0 mm conventional autopistol, Length: 21 cm, Action: Single shot, Mass (empty): 0.7 kg, Ammunition: 10x28 mm fixed cartridge ball, Muzzle Velocity: 540 mps, Magazine: 18-round removable box magazine, Mass of loaded magazine: 0.18 kg, Lv20 for 100 loose rounds, RoF: 80rpm."

'Traylor M20 10  Pistol      4d6-1   1,9 Lv1,200     10  Lv10/50 No  1
DATA "S","x","23","P","Traylor M20",10,60,4,-1,1.9,1200,10,4,0
DATA "11.0 mm conventional autopistol, Length: 33 cm, Action: Single shot, Mass (empty): 1.4 kg, Ammunition: 11x38 mm ball, Muzzle Velocity: 610 mps, Magazine: 10-round removable box magazine, Mass of full magazine: 0.5 kg, Lv20 for 50 loose rounds, RoF: 80rpm."

DATA "S","x","23","P","Traylor MX-99",12,40,4,0,2.1,1450,12,12,1,"AP 4"
DATA "3.0 mm gauss, Length: 41 cm, Mass (empty): 1.7 kg, Action: Single shot, Ammunition: 3x22 mm Flechette, Muzzle Velocity: 1,540 mps, Magazine: 12-round box, Magazine Mass: 0.4 kg, RoF: 120 rpm."

DATA "S","x","23","R","Type-34",10,100,3,-3,3.6,1200,100,10,1,"Auto 6"
DATA "8.0 mm submachinegun, Length: 62 cm, Action: Single shot or bursts, Mass (empty): 1.4 kg, Ammunition: 8x28mm fixed cartridge ball, Muzzle Velocity: 670 mps, Magazine: 100-round removable helical magazine, Mass of loaded magazine: 2.2 kg, Lv20 for 200 loose rounds, RoF: 1,100 rpm."

DATA "S","x","23","R","Yen Shan State Armoury Type-81",10,350,5,0,16,1740,10,60,4,"AP10","Laser","Scope","Very Bulky"
DATA "20.0 mm binary propellant storm gun, Length: 163 cm, Mass: 12 kg, Action: Single shot, Ammunition: 20x31 mm APHE, Muzzle Velocity: 840 mps, Magazine: 10-round box magazine; separately loaded internal, gas bottles with charge for 100 rounds, Magazine Mass: 2 kg, Propellant Bottle Mass: 2 kg, Lv 60 for box of 20 rounds, Lv 20 for recharge, bottle. RoF: 30 rpm."

DATA "S","x","23","R","Wu-Beijing Type-49",10,350,3,2,2.7,230,25,10,1,"Auto 4"
DATA "7.5 mm conventional assault rifle, Length: 58cm, Mass (empty): 2.5 kg, Action: Single shot or bursts, Ammunition: 7.5x32 mm fixed cartridge ball, Muzzle Velocity: 880 mps, Magazine: 25 rounds, Magazine Mass: 0.2 kg, RoF: 650 rpm."

DATA "XXX"










'  READ tl, range, DamD, DamA, weight, price, magazine, magprice, traits



997

DATA "S","x","IT","P","Beretta M9",7,40,1,2,.97,500,17,8,0
DATA "9 mm automatic pistol, Length: 22 cm, Action: Single shot, Mass (empty): .97 kg, Ammunition: 9mm x 19, Muzzle Velocity: 381 mps, Magazine: 17+1-round box, Magazine Mass: 0.2 kg."

DATA "S","x","US","P","Colt 1911A1",6,40,1,1,1.1,500,7,4,0
DATA "11.43 mm automatic pistol, Length: 21 cm, Action: Single shot, Mass (empty): 1.105 kg, Ammunition: .45 ACP, Muzzle Velocity: 253 mps, Magazine: 7+1-round box, Magazine Mass: 0.1 kg."

DATA "S","x","IS","P","Desert Eagle Mark XIX",7,40,2,2,1.766,0,7,0,1,"Bulky"
DATA "12.7 mm automatic pistol, Length: 27 cm, Action: Single shot, Mass (empty): 1.766 kg, Ammunition: .50AE, Muzzle Velocity: 470 mps, Magazine: 7+1-round box, Magazine Mass: 0.425 kg."

DATA "S","x","AU","P","Glock 20",7,40,2,0,1.11,500,15,8,0
DATA "10 mm automatic pistol, Length: 19 cm, Action: Single shot, Mass (empty): .785 kg, Ammunition: 10 mm, Muzzle Velocity: 490 mps, Magazine: 15+1-round box, Magazine Mass: 0.325 kg."

DATA "S","x","DE","R","Heckler & Koch G3",6,300,4,0,5,500,20,12,1,"Auto 3"
DATA "7.62 mm conventional assault rifle, Length: 102 cm, Action: Single shot or bursts, Mass (empty): 4.38 kg, Ammunition: 7.62x51 mm NATO, Muzzle Velocity: 800 mps, Magazine: 20-round box, Magazine Mass: 0.6 kg, RoF: 500-600 rpm."

'   7.62 mmS     7.62 x 39 Short        3D    7.62mm  7.9g 715m/s  2,004.0J 3 1.00 MR, WCM = 0.8  2D+2 [IBA  414% SAPI  64% ESAPI  56%] 2-3-Nil
DATA "S","x","US","R","Kalashnikov AK-47",6,250,3,0,3.47,500,30,9,1,"Auto 4"
DATA "7.62 mm conventional assault rifle, Length: 88 cm, Action: Single shot, burst or full Auto, Mass (empty): 3.47 kg, Ammunition: 7.62x39 PACT, Muzzle Velocity: 730 mps, Magazine: 30-round box, Magazine Mass: 0.5 kg, RoF: 600 rpm."

'   7.62 mmS     7.62 x 39 Short        3D    7.62mm  7.9g 715m/s  2,004.0J 3 1.00 MR, WCM = 0.8  2D+2 [IBA  414% SAPI  64% ESAPI  56%] 2-3-Nil
DATA "S","x","US","R","Kalashnikov AKM",6,250,3,0,3.1,500,30,9,1,"Auto 4"
DATA "7.62 mm conventional assault rifle, Length: 88 cm, Action: Single shot, burst or full Auto, Mass (empty): 3.1 kg, Ammunition: 7.62x39 PACT, Muzzle Velocity: 730 mps, Magazine: 30-round box, Magazine Mass: 0.5 kg, RoF: 600 rpm."


' 5.45 mmB     5.45 x 39              2D+3  5.45mm  3.4g 900m/s  1,365.0J 3 1.00 MR, WCM = 0.4  1D   [IBA  551% SAPI  85% ESAPI  75%] 2-4-6
DATA "S","x","US","R","Kalashnikov AK-74",6,250,3,0,3.47,500,30,9,1,"Auto 4"
DATA "5.45 mm conventional assault rifle, Length: 94 cm, Action: Single shot, burst or full Auto, Mass (empty): 3.07 kg, Ammunition: 5.45x39 PACT, Muzzle Velocity: 880 mps, Magazine: 30-round box, Magazine Mass: 0.5 kg, RoF: 650 rpm."

'9 mmM        9.25 x 18 Makarov      1D    9.25mm  6.0g 339m/s    345.0J 3 1.00 MR, WCM = 0.9  1D   [IBA   48% SAPI   7% ESAPI   7%] Nil
'9 mm Soviet Auto Pistol     1960    1D    9.22mm  6.1g 335m/s    344.9J 2 1.00 MR, WCM = 0.9  1D   [IBA   49% SAPI   8% ESAPI   7%] Nil
'Weight  730 g (26 oz)
'Length  161.5 mm (6.36 in)
'Barrel length   93.5 mm (3.68 in)
'Width   29.4 mm (1.16 in)
'Cartridge 9×18mm Makarov  .380 Auto
'Action  Blowback Muzzle velocity 315 m/s (1,030 ft/s) Effective firing range  50 m (55 yd)
'Feed system 8-round detachable box magazine (10- and 12-round available on the PMM)
'Sights  Blade front, notch rear (drift adjustable)
DATA "S","x","SV","P","Makarov 9x18M",7,40,1,0,.73,500,8,8,0
DATA "9 mm automatic pistol, Length: 16 cm, Action: Single shot, Mass (empty): .73 kg, Ammunition: 9mm x 18, Muzzle Velocity: 336 mps, Magazine: 8+1-round box, Magazine Mass: 0.2 kg."

DATA "S","x","US","R","M16A1",7,275,3,0,3.4,500,20,6,1,"Auto 5"
DATA "5.56 mm conventional assault rifle, Length: 100 cm, Action: Single shot or bursts, Mass (empty): 2.9 kg, Ammunition: 5.56x45 NATO, Muzzle Velocity: 960 mps, Magazine: 20-round box, Magazine Mass: 0.4 kg, RoF: 700-950 rpm."

DATA "S","x","US","R","M16A2",7,275,3,0,3.4,500,30,9,1,"auto 3"
DATA "5.56 mm conventional assault rifle, Length: 100 cm, Action: Single shot or bursts, Mass (empty): 2.9 kg, Ammunition: 5.56x45 NATO, Muzzle Velocity: 960 mps, Magazine: 30-round box, Magazine Mass: 0.5 kg, RoF: 700-950 rpm."

DATA "S","x","US","R","M16A4",7,275,3,0,3.4,500,30,9,3,"auto 3","Scope","Laser"
DATA "5.56 mm conventional assault rifle, Length: 100 cm, Action: Single shot or bursts, Mass (empty): 2.9 kg, Ammunition: 5.56x45 NATO, Muzzle Velocity: 960 mps, Magazine: 30-round box, Magazine Mass: 0.5 kg, RoF: 700-950 rpm."

DATA "S","x","US","R","M4 Carbine",8,250,3,0,3.4,500,30,9,3,"auto 3","Scope","Laser"
DATA "5.56 mm conventional assault rifle, Length: 100 cm, Action: Single shot or bursts, Mass (empty): 2.9 kg, Ammunition: 5.56x45 NATO, Muzzle Velocity: 960 mps, Magazine: 30-round box, Magazine Mass: 0.5 kg, RoF: 700-950 rpm."

DATA "S","x","US","R","M4A1 Carbine",8,250,3,0,3.4,500,30,9,3,"Auto 6","Scope","Laser"
DATA "5.56 mm conventional assault rifle, Length: 100 cm, Action: Single shot, burst or full Auto, Mass (empty): 2.9 kg, Ammunition: 5.56x45 NATO, Muzzle Velocity: 960 mps, Magazine: 30-round box, Magazine Mass: 0.5 kg, RoF: 700-950 rpm."

'.44 Magnum  S&W M29/10.2             2D+1 10.97mm 15.6g 425m/s  1,406.0J 3 1.00 MR, WCM = 1.4  3D+1 [IBA  140% SAPI  22% ESAPI  19%] 1-Nil
'.44 Magnum  S&W M29/16.5             2D+2 10.97mm 15.6g 448m/s  1,561.0J 3 1.00 MR, WCM = 1.4  3D+2 [IBA  156% SAPI  24% ESAPI  21%] 1-Nil
'.44 Magnum  S&W M29/21.3             2D+2 10.97mm 15.6g 459m/s  1,637.0J 3 1.00 MR, WCM = 1.4  3D+2 [IBA  163% SAPI  25% ESAPI  22%] 1-Nil
'.44 Magnum  S&W M29/29.0             2D+2 10.97mm 15.6g 475m/s  1,759.0J 3 1.00 MR, WCM = 1.4  4D-1 [IBA  175% SAPI  27% ESAPI  24%] 1-Nil





' 7.62 mmT     7.62 x 25 Tokarev      1D+2  7.85mm  5.6g 424m/s    503.0J 3 1.00 MR, WCM = 0.8  1D   [IBA   98% SAPI  15% ESAPI  13%] 1-Nil
'Weight  854 g (30.1 oz) Length  194 mm (7.6 in) Barrel length   116 mm (4.6 in) Height  134 mm (5.3 in)
'Cartridge   7.62×25mm Tokarev Action  Short recoil actuated, locked breech, single action
'Muzzle velocity 450 m/s (1,476 ft/s) Effective firing range  50 m
'Feed system 8-round detachable box magazine
'Sights  Front blade, rear notch
'156 mm (6.1 in) sight radius
DATA "S","x","SV","P","Tokarev TT 7.62x25",7,40,1,2,.85,500,8,8,0
DATA "7.62 mm automatic pistol, Length: 19 cm, Action: Single shot, Mass (empty): .85 kg, Ammunition: 7.62mm x 25, Muzzle Velocity: 424 mps, Magazine: 8+1-round box, Magazine Mass: 0.2 kg."

'  READ tl, range, DamD, DamA, weight, price, magazine, magprice, traits

DATA "XXX"





g$ = "Mongoose Traveller 2 weapon customizer":
IF era = 2 THEN g$ = "2300 AD weapon customizer"
IF era = 4 THEN g$ = "Space : 1889 AD weapon customizer"
IF era = 3 THEN g$ = "Twilight 2000 weapon customizer"
g$ = UCASE$(g$)
space = 50 - LEN(g$)

CLS: PRINT SPC(space); g$: PRINT
count = 0
FOR I = 1 TO ix
    READ skill$: IF skill$ = "XXX" THEN ix = I - 1: I = 100: GOTO 5
    READ GL$, world$, form$
    READ name$: IF weap$ = "XXX" THEN END
    READ tl, range, DamD, DamA, weight, price, magazine, magprice, traits
    FOR x = 1 TO traits: READ trait$(x): NEXT
    READ description$
    'IF VAL(LEFT$(description$, 1)) = 0 THEN name$ = name$ + STR$(tl)
    kal$ = LEFT$(description$, 5):
    IF VAL(RIGHT$(kal$, 1)) = 0 THEN kal$ = LEFT$(kal$, 4)
    IF VAL(RIGHT$(kal$, 1)) = 0 THEN kal$ = LEFT$(kal$, 3)

    kal = VAL(kal$) / 25.41
    DMULTz = .5
    DMULTz = 1
    IF kal >= .341 THEN DMULTz = 1 REM .341
    IF kal >= .393 THEN DMULTz = 1.5
    IF kal >= .44 THEN DMULTz = 1.6
    IF kal >= .49 THEN DMULTz = 1.8
    IF kal >= .55 THEN DMULTz = 1.9
    IF kal > .6 THEN DMULTz = 2
    IF kal = 0 THEN DMULTz = 1

    damage = CINT((DamD * 3.5 + DamA) * DMULTz)
    name$ = STR$(damage) + "-" + name$
    IF tl > tech GOTO 5
    'IF tl < tech - 5 GOTO 5
    count = count + 1
    PRINT USING "##."; I;
    ten = 16: cx = 4
    IF era > 1 THEN ten = 32: cx = 2
    IF LEN(name$) > ten THEN name$ = LEFT$(name$, ten)
    PRINT name$; SPC(ten - LEN(name$)); " ";
    IF INT(count / cx) = count / cx THEN PRINT
    5
NEXT: PRINT
INPUT weapon
big = 3
ix = 90: RESTORE 999
IF era = 2 THEN Timeline = 23: RESTORE 996
IF era = 3 THEN Timeline = 20: RESTORE 997
IF era = 4 THEN Timeline = 89: RESTORE 998: tech = 4
FOR I = 1 TO weapon
    READ skill$, GL$, world$, form$
    READ weap$: IF weap$ = "XXX" THEN END
    READ tl, range, DamD, DamA, weight, price, magazine, magprice, traits
    skill = -3
    IF skill$ = "S" OR a$ = "s" THEN skill = slug
    IF skill$ = "E" THEN skill = energy
    IF skill$ = "A" THEN skill = archaic
    IF skill$ = "H" OR skill$ = "h" THEN skill = heavy
    tohit0 = modi + skill
    NoAuto = 0: bulk = 0: aDM = 0: Shot = 0: Scope = 0: AP = 0: AP0 = 0: ROF = 1: Laser = 0: HOLO = 0: RMO = 1: LRM = 1
    IF big = 0 THEN big = 2
    IF traits = 0 THEN GOTO 16

    15 'traits
    FOR x = 1 TO traits: READ trait$(x): NEXT
    16 READ description$: description$ = description$ + " "
    IF I < weapon GOTO 4300


    FOR x = 1 TO traits: trait$ = trait$(x)
        IF LEFT$(trait$, 2) = "AP" THEN AP0 = VAL(RIGHT$(trait$, 2))
        IF RIGHT$(trait$, 3) = "lky" THEN bulk = 1
        IF LEFT$(trait$, 3) = "Ver" THEN bulk = 2
    NEXT


    5000 'BUYING ACCESORIES
    CLS
    PRINT " "; weap$
    PRINT
    text$ = description$: GOSUB 19999
    PRINT
    PRINT " Do you want to customize the " + weap$ + " Y/N"
    GOSUB 1000
    IF a$ <> "Y" THEN big = 2: GOTO 5201

    CLS
    PRINT " "; weap$; ","; price; "CR,"; weight; "kg,"; range; "m"
    IF bulk = 0 OR smodi - bulk >= 0 OR tech < 9 GOTO 5010
    PRINT
    PRINT " The weapon is bulky"; smodi - bulk; ", do you want to gyrostabilize it for 500 Cr?"
    GOSUB 1000
    IF a$ = "Y" THEN weight = weight + 1: cost = cost + 500: gyro = 1

    'Gyrostabiliser
    'GYROSTABILISER
    'Stabilisers can be added to a Bulky weapon, reducing its
    'recoil and removing the Bulky trait. Gyrostabilisers cannot be
    'added to Destructive weapons.
    'Item TL Kg Cost
    'Gyrostabiliser 9 1 Cr500

    5010
    IF magazine < 4 OR tech < 5 THEN GOTO 5012
    PRINT
    PRINT " Magazine capacity"; magazine; "shots. Double the capacity for"; magprice * 3; "CR per Magazine?"
    GOSUB 1000
    IF a$ = "Y" THEN magazine = magazine * 2: magprice = magprice * 3
    '  READ tl, range, DamD, DamA, weight, price, magazine, magprice, DDDDtraits

    'HIGH-CAPACITY MAGAZINE
    'The ability for a weapon to hold more ammunition before
    'requiring a change in magazine is always beneficial, especially
    'on high rate-of-fire automatic weapons. High-capacity
    'magazines, while bulky in use, are designed to solve this
    'problem. Multiply the mass and cost of a weapon's standard
    'magazine to purchase a high-capacity version. This will double
    'the magazine's capacity of the weapon.

    ' The referee may rule
    'that some weapons (such as many shotguns) cannot use highcapacity magazines.
    'Item TL Kg Cost
    'High-capacity Magazine 4 x2 x3



    5012 IF skill$ = "E" OR skill$ = "A" OR skill$ = "h" OR skill$ = "s" OR tech < 5 THEN GOTO 5014
    FOR x = 1 TO traits: IF LEFT$(trait$(x), 4) = "Sile" THEN GOTO 5014
    NEXT

    'SUPPRESSOR
    'A suppressor can be added to any non-automatic, nonheavy slug thrower, masking the sound
    ' produced by firing. A suppressor adds the Silent trait to a weapon.
    'Item TL Kg Cost            Suppressor 8 - Cr250
    PRINT
    PRINT " Do you want to install a Suppressor for 250 Cr ?"
    GOSUB 1000
    IF a$ = "Y" THEN cost = cost + 250: supp = 1: traits = traits + 1: trait$(traits) = "Silent":




    5014 LRM = 1: IF form$ <> "P" GOTO 5016
    'SHOULDER STOCK
    'A shoulder stock may be attached temporarily to a pistol weapon, resulting in a crude carbine
    'arrangement and greater accuracy at slightly longer ranges. The overall length of the pistol
    'is increased by the length of the stock, and the 'pistol cannot be holstered while it is attached.
    'Attaching the stock (or detaching it) requires 1D rounds. A shoulder stock
    'increases the effective and long range of a pistol by +25%, but does not increase its extreme range.
    'Item TL Kg Cost  shoulder Stock 4 1 Cr75
    PRINT
    PRINT " Do you want to add a shoulder stock to your Pistol for 75 Cr ?"
    GOSUB 1000
    IF a$ = "Y" THEN cost = cost + 75: stock = 1: traits = traits + 1:: LRM = 1.25: trait$(traits) = "Stock"



    5016
    'PERSONAL HEADS-UP DISPLAY
    'Personal HUD projects an aiming point onto an image of the target, automatically correcting
    'for wind, gravity and other factors. Various display devices are available, ranging from
    'a helmet visor to a pair of designer shades. A P-HUD grants DM+1 on all attacks at all
    'ranges, for any ranged weapon it is keyed to. Modules that allow additional weapons to be used
    'on the same P-HUD system cost Cr250 each and require an hour or so to ft and calibrate.
    'There is no real limit on how many weapons can be calibrated to one P-HUD. At TL11, the
    'P-HUD incorporates a holographic projector and no obvious visual device need be worn.
    'Item TL Kg Cost P-HUD P-HUD 9 11 0.5  -  Cr1500 Cr2500



    5020 IF skill$ = "A" THEN GOTO 5110
    IF tech < 10 GOTO 5030
    FOR x = 1 TO traits: IF LEFT$(trait$(x), 4) = "Holo" THEN GOTO 5040
    NEXT
    'Holographic sights
    'HOLOGRAPHIC SIGHTS
    'Holographic sights project an aim point for the Traveller, and
    'automatically compensate for wind, gravity and other adverse
    'conditions. They grant the Scope trait plus DM+1 to all attack
    'rolls made against targets 50 metres or more away.
    'Holographic Sights 10 0.5 Cr2000
    PRINT
    PRINT " Do you want to add a holoscopic scope for CR 2000 ?":
    GOSUB 1000
    IF a$ = "Y" THEN traits = traits + 1: trait$(traits) = "Holo": price = price + 2000: GOTO 5040


    5030 IF tech < 4 GOTO 5040
    FOR x = 1 TO traits: IF LEFT$(trait$(x), 5) = "Scope" THEN Scope = 1
    NEXT
    IF Scope = 1 OR HOLO = 1 GOTO 5040
    PRINT
    PRINT " Do you want to add a scope to the weapon for CR 50 ?":
    GOSUB 1000
    IF a$ = "Y" THEN traits = traits + 1: Scope = 1: trait$(traits) = "Scope": price = price + 50
    'SCOPE
    'A high-quality telescopic scope for attachment to a rifle or
    'heavy weapon, allowing accurate shots to be made at extreme
    'ranges. Any hand-held rifle or heavy weapon equipped with
    'this gains the Scope trait. At TL7, image enhancement and
    'light intensifcation are added, allowing the scope to be used
    'in low-light environments without penalty.
    'Item TL Kg Cost
    'Scope 5 CR 50
    'Scope 7 CR 50


    5040 IF tech < 8 GOTO 5050
    FOR x = 1 TO traits: IF LEFT$(trait$(x), 5) = "Laser" THEN GOTO 5050
    NEXT
    ' LASER SIGHT
    'Integrated optics and laser sights grant DM+1 to any attack
    'made at ranges of less than 50 metres. At TL10, X-ray lasers
    'and improved display technology removes the tell-tale red dot
    'of a vislight laser.
    'Item TL Kg Cost
    'Laser Sight 8 200
    'Laser Sight 10 200
    PRINT
    PRINT " Do you want to add a Laser sight to your gun for CR 200 ?":
    GOSUB 1000
    IF a$ = "Y" THEN traits = traits + 1: trait$(traits) = "Laser": price = price + 200


    5050 IF form$ <> "R" OR tech < 7 GOTO 5110
    'AUXILIARY GRENADE LAUNCHER
    'An underslung grenade launcher can be added to any rifle
    'weapon. This grenade launcher has a magazine of one grenade
    'that takes three Minor Actions to reload. Otherwise, it is
    'identical to the grenade launcher on page 124 and cause use
    'any suitable grenade as ammunition.
    'TL Range Damage Kg Cost Magazine Magazine Cost Traits
    '7 100 As grenade 1 Cr1000 1 As grenades -
    PRINT
    PRINT " Do you want to add a AUXILIARY GRENADE LAUNCHER to your gun for CR 1000 ?":
    GOSUB 1000
    IF a$ = "Y" THEN GL$ = "GL": price = price + 1000: weight = weight + 1





    5110
    IF skill$ = "E" OR skill$ = "A" OR skill$ = "h" OR skill$ = "s" THEN GOTO 5090


    'IF AP > 0 GOTO 5200
    IF tech < 8 GOTO 5100
    PRINT
    PRINT " Do you want to use incendiary ammunition, Cost"; magprice * 8; " CR ?"
    'INCENDIARY
    'Incendiary warheads are designed to set fire to things, causing flammable material close by
    'to catch fire. The round's Burst trait will be equal to the number of damage dice of the weapon,
    'multiplied by 10 if the weapon is Vehicle scale.

    'Weapon TL Range Damage Cost Traits Pistol Rifle Shotgun Heavy
    'Incendiary 8 - - x3 Blast X, Fire ? ? ? ?
    GOSUB 1000
    IF a$ = "Y" THEN magprice = magprice * 3: trait$(traits + 1) = "Fire": trait$(traits + 2) = "Blast" + STR$(DamD): traits = traits + 2: GOTO 5200

    5100
    'IF AP > 0 GOTO 5200
    IF tech < 5 GOTO 5070
    PRINT
    PRINT " Do you want to use HEAP ammunition, Cost"; magprice * 8; " CR ?"
    'HIGH EXPLOSIVE ARMOUR PIERCING (HEAP)
    'High Explosive Armour Piercing rounds use shaped charge warheads or similar technologies
    'to penetrate thick levels of armour before detonating inside the target. HEAP ammunition
    'provides a weapon with an AP trait equal to double the number of damage dice it rolls
    'before the bonus dice is added for HEAP ammunition).
    'Weapon TL Range Damage Cost Traits Pistol Ri?e Shotgun Heavy
    'HEAP    5  -25%  +1D    x8  AP  Special - - - ?
    GOSUB 1000
    IF a$ = "Y" THEN RMO = .75: AP = DamD * 2: DamD = DamD + 1: magprice = magprice * 8: traits = traits + 1: trait$(traits) = "HEAP": GOTO 5200

    5070 'IF AP > 0 GOTO 5200
    IF tech < 5 GOTO 5080
    PRINT
    PRINT " Do you want to use APDS ammunition, Cost"; magprice * 5; " CR ?"

    'ARMOUR PIERCING DISCARDING SABOT (APDS)
    'Representing several variations on the theme of a rod penetrator launched with a sabot
    'and featuring increasingly long 'acronyms, APDS is an anti-armour round representative
    'of various efforts to get through armour. APDS ammunition provides a weapon with an
    'AP trait equal to triple the number of damage dice it rolls. If the weapon already has the
    'AP trait, this is 'added to the fnal AP score.
    'Weapon TL Range Damage Cost Traits Pistol Ri?e Shotgun Heavy
    'APDS 5 +10% - x5 AP X - ? - ?
    GOSUB 1000
    IF a$ = "Y" THEN RMO = 1.1: AP = DamD * 3: magprice = magprice * 5: traits = traits + 1: trait$(x) = "APDS": GOTO 5200



    5080 IF AP > 0 GOTO 5200
    IF tech < 5 GOTO 5060
    PRINT
    PRINT " Do you want to use AP ammunition, Cost"; magprice * 4; " CR ?"
    'ARMOUR PIERCING
    'These rounds are pointed projectiles of dense or very hard material designed to punch through
    'armour. AP ammunition 'provides a weapon with an AP trait equal to the number of damage dice
    'it rolls. If the weapon already has the AP trait, this is added to the fnal AP score.
    'Weapon TL Range Damage Cost Traits Pistol Ri?e Shotgun Heavy
    'Armour Piercing 4 - - x4 AP X ? ? ? ?
    GOSUB 1000
    IF a$ = "Y" THEN AP = DamD: magprice = magprice * 4: traits = traits + 1: trait$(x) = "AP": GOTO 5200




    5060 IF AP > 0 THEN GOTO 5200
    IF tl < 4 GOTO 5090
    PRINT
    PRINT " Do you want to use Solid shot, Cost"; magprice * 2; " CR ?"
    'SOLID SHOT
    'A basic anti-armour round, solid shot is essentially a pointed projectile of dense or hard
    ' material. Solid shot provides a weapon 'with an AP trait equal to half the number of damage
    'dice it rolls, rounding up. If the weapon already has the AP trait, this is 'added to the
    'final AP score.
    'Weapon TL Range Damage Cost Traits Pistol Ri?e Shotgun Heavy
    'Solid Shot 5 -25% - x2 AP X ? ? ? ?
    GOSUB 1000
    IF a$ = "Y" THEN RMO = .75: AP = CINT(DamD / 2): magprice = magprice * 2: traits = traits + 1: trait$(x) = "Solid": GOTO 5200

    5090

    5200
    IF tl < 5 GOTO 5201
    IF skill$ = "E" OR skill$ = "A" OR skill$ = "h" OR skill$ = "s" THEN GOTO 5201

    PRINT
    PRINT " Do you want to use extended range ammunition,"; range * 1.25; "m, Cost"; magprice * 3; " CR ?"

    'EXTENDED RANGE
    'Extended range rounds use more effcient propellant or even a rocket boost to increase
    'their velocity and therefore effective range. Artillery weapons may combine extended
    'range ammunition with other types simply by adding their cost multipliers 'together.
    'Weapon TL Range Damage Cost Traits Pistol Ri?e Shotgun Heavy
    'Extended Range 7 +25% -1D x3 - ? ? - ?
    GOSUB 1000
    IF a$ = "Y" THEN RMO = 1.25: DamD = DamD - 1: magprice = magprice * 3: traits = traits + 1: trait$(x) = "Extended Range": GOTO 5201



    'DIRECTED PLASMA
    'Directed plasma rounds are an advanced version of shaped charge weapons, intended to destroy hard targets. Directed plasma
    'rounds for pistols and ri?es become available at TL16.
    'Weapon TL Range Damage Cost Traits Pistol Ri?e Shotgun Heavy
    'Directed Plasma 15 - +1D x10 AP x3, Blast 0 ? ? ? ?

    'GUIDED
    'Some warheads can be either guided by the operator or ftted with a self-homing capability. Guided rounds become available
    'for ri?es and pistols at TL10.
    'Weapon TL Range Damage Cost Traits Pistol Ri?e Shotgun Heavy
    'Guided 7 - - x6 Smart ? ? - ?


    'PLASMA
    'Plasma warheads are an advanced form of high explosive, designed to eliminate both soft and armoured targets, depending on
    'what weapon they are fired from. Plasma rounds for pistols and ri?es become available at TL16.
    'Weapon TL Range Damage Cost Traits Pistol Ri?e Shotgun Heavy
    'Plasma 15 - +1D x10 AP x2, Blast x2 ? ? ? ?


    5201

    PRINT: PRINT traits; "x Traits";
    FOR x = 1 TO traits: PRINT ", "; trait$(x);: NEXT: PRINT: PRINT
    PRINT
    PRINT " Output Format"
    PRINT
    PRINT " 1. Small, only the game relevant information."
    PRINT " 2. Medium. Descriptive Text and game information."
    PRINT " 3. Maximum, all rules and descriptive texts, might not fit on one page."
    INPUT " ", big: IF big = 0 THEN big = 2

    IF magazine > 1 AND magazine < 80 THEN PRINT " Do you want the Ammo Bar in the display Y/N ?": GOSUB 1000: ab$ = a$

    5202
    FOR x = 1 TO traits
        trait$ = trait$(x)

        IF LEFT$(trait$, 4) = "APDS" THEN: AP = AP0 + AP: trait$(x) = "APDS: Deduct" + STR$(AP) + " from Armor.": GOTO 5203
        IF LEFT$(trait$, 4) = "HEAP" THEN AP = AP0 + AP: trait$(x) = "HEAP: Deduct" + STR$(AP) + " from Armor.": GOTO 5203
        IF LEFT$(trait$, 2) = "AP" THEN AP = AP0 + AP: trait$(x) = "AP: Deduct" + STR$(AP) + " from Armor.": GOTO 5203
        IF trait$ = "Solid" THEN AP = AP0 + AP: trait$(x) = "SOLID SHOT: Deduct" + STR$(AP) + " from Armor.": GOTO 5203

        IF trait$ = "Reload" THEN ROF = .5
        IF trait$ = "Slow Reload" THEN ROF = .333
        IF trait$ = "Very Slow Reload" THEN ROF = .2

        IF LEFT$(trait$, 4) = "auto" THEN NoAuto = 1: trait$ = "Auto" + RIGHT$(trait$, 2)
        5203
        IF big = 1 THEN GOTO 10
        IF big = 2 THEN GOTO 20
        IF big = 3 THEN GOTO 30

        10 'Minimal Size  big=1
        IF trait$ = "Scope" THEN Scope = 1: trait$(x) = "Scope."

        IF trait$ = "DM-1 to all attacks" THEN aDM = -1

        IF LEFT$(trait$, 4) = "Auto" THEN ROF = VAL(RIGHT$(trait$, 1)): trait$(x) = "Auto" + STR$(ROF) + "."

        IF trait$ = "Shot" THEN Shot = 1: trait$(x) = "Shot, no Dodge DM, Armour x 2."

        IF trait$ = "Bulky" THEN bulk = -1: trait$(x) = "Bulky, STR<9 -1 to hit."

        IF trait$ = "Very Bulky" THEN bulk = -2: trait$(x) = "Very Bulky, STR<12 -2 to hit."

        IF trait$ = "Smart" THEN trait$(x) = "Smart +DM =" + STR$(tl) + "-target TL."

        IF trait$ = "Silent" THEN trait$(x) = "Silent: Detection DM -6."

        IF LEFT$(trait$, 5) = "Blast" THEN BLA = VAL(RIGHT$(trait$, 1)): trait$(x) = "Damage is rolled against every target within" + STR$(BLA) + " metres."

        IF trait$ = "Dangerous" THEN trait$(x) = "Explodes if Effect -5 or worse."

        IF trait$ = "Laser" AND tl < 10 THEN Laser = 1: trait$(x) = "Targeting Laser."

        IF trait$ = "Laser" AND tl > 9 THEN Laser = 1: trait$(x) = "Targeting X-Laser."

        IF trait$ = "Holo" THEN trait$(x) = "Holographic sights.": HOLO = 1

        IF trait$ = "Fire" THEN trait$(x) = "Fire Damage every round after the initial attack. 2D roll of 8+ will quench it."

        IF trait$ = "Stun" THEN trait$(x) = "Stun. Target is incapacitated for a number of rounds = Damage - END."

        IF trait$ = "One shot" THEN trait$(x) = "One Shot."

        IF trait$ = "Radiation" THEN trait$(x) = "Radiation."

        IF trait$ = "Stock" THEN trait$(x) = "Shoulder Stock."

        'IF trait$ = "SAP" THEN AP = .5: trait$(x) = "SAP Deduct" + STR$(INT(DamD / 2)) + " from Armor."
        'IF trait$ = "AP" THEN AP = 1: trait$(x) = "AP Deduct" + STR$(INT(DamD)) + " from Armor."
        'IF trait$ = "Super-AP" THEN AP = DamD * 2: trait$(x) = "Super-AP Deduct" + STR$(INT(DamD * 2)) + " from Armor."

        IF trait$ = "Zero-G" THEN trait$(x) = "Zero-G."

        IF trait$ = "Solid" THEN trait$(x) = "SOLID SHOT: A basic anti-armour round. "

        IF trait$ = "Reload" THEN ROF = .5: trait$(x) = "Single Shot Breechloader."
        IF trait$ = "Slow Reload" THEN ROF = .25: trait$(x) = "Single Shot Muzzle Loader."
        IF trait$ = "Very Slow Reload" THEN ROF = .2: trait$(x) = "Single Shot Muzzle Loader Rifle."

        GOTO 39

        20 'Medium big=2

        IF trait$ = "Scope" THEN Scope = 1: trait$(x) = "SCOPE: The weapon has been fitted with vision enhancing sights."

        IF trait$ = "DM-1 to all attacks" THEN aDM = -1

        IF LEFT$(trait$, 4) = "Auto" THEN ROF = VAL(RIGHT$(trait$, 1)): trait$(x) = "AUTO: A weapon with the Auto trait can make Burst attacks, adds" + STR$(ROF) + " to damage, uses" + STR$(ROF) + " rounds.": IF NoAuto = 0 THEN trait$(x) = trait$(x) + " Full Auto:" + STR$(ROF) + " attacks can be made against separate targets within six metres of one another. Full auto uses" + STR$(ROF * 3) + " rounds."

        IF trait$ = "Shot" THEN Shot = 1: trait$(x) = "SHOT: Ignore Dodge dice modifers, but Armour gives double protection."

        IF trait$ = "Bulky" THEN bulk = -1: trait$(x) = "BULKY: A Bulky weapon has a powerful recoil or is simply extremely heavy. Bulky weapon must have STR 9 or higher to use it without penalty."

        IF trait$ = "Very Bulky" THEN bulk = -2: trait$(x) = "VERY BULKY: Some weapons are designed only for the strongest combatants. A Traveller using a Very Bulky weapon must have STR 12 or higher to use it without penalty. Otherwise, all attack rolls will have a negative DM equal to the difference between their STR DM and +2."

        IF trait$ = "Smart" THEN trait$(x) = "SMART: +DM =" + STR$(tl) + "-target TL. This weapon has intelligent or semi-intelligent rounds that are able to guide themselves onto a target. They gain a DM to their attack rolls equal to the difference between their TL and that of the target, to a minimum of DM+1 and a maximum of DM+6."

        IF trait$ = "Silent" THEN trait$(x) = "SILENT: The weapon is silenced: Detection DM -6."

        IF LEFT$(trait$, 5) = "Blast" THEN BLA = VAL(RIGHT$(trait$, 2)): trait$(x) = "BLAST: Upon a successful attack, damage is rolled against every target within" + STR$(BLA) + " metres. Dodge Reactions may not be made against a Blast weapon, but targets may dive for cover."

        IF trait$ = "Dangerous" THEN trait$(x) = "DANGEROUS: This weapon can be as lethal to the user as his intended target. If an attack roll is made by this weapon with an Effect of -5 or worse, it explodes."

        IF trait$ = "Laser" AND tl < 10 THEN Laser = 1: trait$(x) = "LASER: Integrated optics and laser sights grant DM+1 to any attack made at ranges of less than 50 metres."

        IF trait$ = "Laser" AND tl > 9 THEN Laser = 1: trait$(x) = "X-LASER: Integrated optics and X-ray laser sights grant DM+1 to any attack made at ranges of less than 50 metres."

        IF trait$ = "Holo" THEN trait$(x) = "HOLO: Holographic sights project an aim point. They grant the Scope trait plus DM+1 to all attacks 50 metres or more away.": HOLO = 1

        IF trait$ = "Fire" THEN trait$(x) = "FIRE: This weapon sets a target on fire, causing damage every round after the initial attack."

        IF trait$ = "Stun" THEN trait$(x) = "STUN: These weapons are designed to deal non-lethal damage. Damage is only deducted from END, taking into account any armour. If the target's END is reduced to 0, the target will be incapacitated."

        IF trait$ = "Zero-G" THEN trait$(x) = "ZERO-G: This weapon has little or no recoil, allowing it to be used in low or zero gravity situations without requiring an Athletics (dexterity) check."

        IF trait$ = "One shot" THEN trait$(x) = "ONE SHOT: This weapon is designed to be used just once, completely expending its energy or ammunition in one go and then being rendered useless."

        IF trait$ = "Radiation" THEN trait$(x) = "RADIATION: When a Radiation weapon is fired, anyone close to the firer, target and the line of fire in-between the two will receive 2D x 20 rads."

        'IF trait$ = "SAP" THEN AP = .5: trait$(x) = "SAP Deduct" + STR$(INT(DamD / 2)) + " from Armor."
        'IF trait$ = "AP" THEN AP = 1: trait$(x) = "AP Deduct" + STR$(INT(DamD)) + " from Armor."
        'IF trait$ = "Super-AP" THEN AP = DamD * 2: trait$(x) = "Super-AP Deduct" + STR$(INT(DamD * 2)) + " from Armor."

        IF trait$ = "Stock" THEN trait$(x) = "STOCK: Attaching the stock (or detaching it) requires 1D rounds. A shoulder stock increases the effective and long range of a pistol by +25%, but does not increase its extreme range."

        IF trait$ = "Extended Range" THEN trait$(x) = "EXTENDED RANGE: Extended range rounds use more effcient propellant or even a rocket boost to increase their velocity and therefore effective range."
        IF LEFT$(trait$, 2) = "AP" THEN trait$(x) = "AP: Armor Piercing. Deduct" + STR$(AP) + " from Armor."
        IF LEFT$(trait$, 4) = "APDS" THEN trait$(x) = "APDS: Armor Piercing Discarding Sabot. Deduct" + STR$(AP) + " from Armor.": GOTO 39
        IF trait$ = "HEAP" THEN trait$(x) = "HEAP: High Explosive Armor Piercing. Deduct" + STR$(AP) + " from Armor."
        IF trait$ = "Solid" THEN trait$(x) = "SOLID SHOT: A basic anti-armour round, solid shot is essentially a pointed projectile of dense or hard material."

        IF trait$ = "Reload" THEN ROF = .5: trait$(x) = "Single Shot Breechloader. The weapon needs one turn to reload after firing."
        IF trait$ = "Slow Reload" THEN ROF = .25: trait$(x) = "Single Shot Muzzle Loader. The weapon needs three turns to reload after firing."
        IF trait$ = "Very Slow Reload" THEN ROF = .2: trait$(x) = "Single Shot Muzzle Loader Rifle. The weapon needs four turns to reload after firing."

        GOTO 39




        30 'Maximum Size, All possible data big=3
        IF trait$ = "Scope" THEN Scope = 1: trait$(x) = "Scope: The weapon has been fitted with vision enhancing sights, allowing it to put shots on target from far greater ranges. A weapon with the Scope trait ignores the rule that limits all attacks made at a range greater than 100 metres are automatically Extreme Range, so long as it is aimed before shooting."
        IF trait$ = "DM-1 to all attacks" THEN aDM = -1
        IF LEFT$(trait$, 4) = "Auto" THEN ROF = VAL(RIGHT$(trait$, 1)): trait$(x) = "Auto: A weapon with the Auto trait can make attacks in three fire modes: single, burst, and full auto. Single: Attacks are made using the normal combat rules. Burst: Add" + STR$(ROF) + " to damage. This uses" + STR$(ROF) + " rounds.": IF NoAuto = 0 THEN trait$(x) = trait$(x) + " Full Auto: Make" + STR$(ROF) + " attacks. These attacks can be made against separate targets so long as they are all within six metres of one another. Full auto uses" + STR$(ROF * 3) + " rounds.": IF Scope = 1 THEN trai$(x) = trait$(x) + " A weapon cannot use the Auto trait in the same action as the Scope trait or aiming action."
        IF trait$ = "Shot" THEN Shot = 1: trait$(x) = "Shot: A shotgun using pellet ammunition ignores Dodge dice modifers, but Armour gives double protection against pellet attacks."
        IF trait$ = "Bulky" THEN bulk = -1: trait$(x) = "Bulky: A Bulky weapon has a powerful recoil or is simply extremely heavy, this makes it diffcult to use effectively in combat by someone of a weak physical stature. A Traveller using a Bulky weapon must have STR 9 or higher to use it without penalty. Otherwise, all attack rolls will have a negative DM equal to the difference between their STR DM and +1."
        IF trait$ = "Very Bulky" THEN bulk = -2: trait$(x) = "Very Bulky: Some weapons are designed only for the strongest combatants. A Traveller using a Very Bulky weapon must have STR 12 or higher to use it without penalty. Otherwise, all attack rolls will have a negative DM equal to the difference between their STR DM and +2."
        IF trait$ = "Smart" THEN trait$(x) = "Smart: +DM =" + STR$(tl) + "-target TL. This weapon has intelligent or semi-intelligent rounds that are able to guide themselves onto a target. They gain a DM to their attack rolls equal to the difference between their TL and that of the target, to a minimum of DM+1 and a maximum of DM+6."
        IF LEFT$(trait$, 5) = "Blast" THEN BLA = VAL(RIGHT$(trait$, 1)): trait$(x) = "Blast: Upon a successful attack, damage is rolled against every target within" + STR$(BLA) + " metres. Dodge Reactions may not be made against a Blast weapon, but targets may dive for cover."
        IF trait$ = "Dangerous" THEN trait$(x) = "Dangerous: This weapon can be as lethal to the user as his intended target. If an attack roll is made by this weapon with an Effect of -5 or worse, it explodes. Its damage is inflicted upon the firer, and the weapon is rendered inoperable."
        IF trait$ = "Laser" AND tl < 10 THEN Laser = 1: trait$(x) = "Targeting Laser: Integrated optics and laser sights grant DM+1 to any attack made at ranges of less than 50 metres."
        IF trait$ = "Laser" AND tl > 9 THEN Laser = 1: trait$(x) = "Targeting Laser: Integrated optics and laser sights grant DM+1 to any attack made at ranges of less than 50 metres.  X-ray lasers and improved display technology remove the tell-tale red dot of a vislight laser."
        IF trait$ = "Holo" THEN trait$(x) = "Holo: Holographic sights project an aim point, and automatically compensate for wind, gravity and other adverse conditions. They grant the Scope trait plus DM+1 to all attack rolls made against targets 50 metres or more away.": HOLO = 1
        IF trait$ = "Fire" THEN trait$(x) = "Fire: This weapon sets a target on fire, causing damage every round after the initial attack. Left to its own devices, a fire will extinguish itself on a 2D roll of 8+, rolled for at the start of every round."
        IF trait$ = "Stun" THEN trait$(x) = "Stun: These weapons are designed to deal non-lethal damage, incapacitating a living target rather than killing it. Damage is only deducted from END, taking into account any armour. If the target's END is reduced to 0, the target will be incapacitated and unable to perform any actions for a number of rounds by which the damage exceeded his END. Damage received from Stun weapons is completely healed by one hour of rest."
        IF trait$ = "Zero-G" THEN trait$(x) = "Zero-G: This weapon has little or no recoil, allowing it to be used in low or zero gravity situations without requiring an Athletics (dexterity) check."
        IF trait$ = "One shot" THEN trait$(x) = "One shot: This weapon is designed to be used just once, completely expending its energy or ammunition in one go and then being rendered useless."
        IF trait$ = "Radiation" THEN trait$(x) = "Radiation: When a Radiation weapon is fired, anyone close to the firer, target and the line of fire in-between the two will receive 2D x 20 rads. This effect extends from the firer, target and line of fire a distance in metres equal to the number of dice the weapon rolls for damage. If the fusion weapon is Destructive, this distance becomes ten times the number of dice rolled for damage."
        'IF trait$ = "SAP" THEN AP = .5: trait$(x) = "SAP rounds ignore" + STR$(INT(DamD / 2)) + " points of Armor."
        'IF trait$ = "AP" THEN AP = 1: trait$(x) = "AP rounds ignore a number of points of armour equal to " + STR$(INT(DamD)) + "."
        'IF trait$ = "Super-AP" THEN AP = DamD * 2: trait$(x) = "Super-AP rounds ignore" + STR$(INT(DamD * 2)) + " points of armour."
        IF trait$ = "Silent" THEN trait$(x) = "Silent: Most projectile weapons require a noisy discharge of chemical, heat or kinetic energy in order to attack, but this weapon channels or removes the excess sound energy also created. Any attempts to detect the sound of this weapon firing suffer DM-6."
        IF trait$ = "Stock" THEN trait$(x) = "Shoulder Stock: A shoulder stock may be attached temporarily to a pistol weapon, resulting in a crude carbine arrangement and greater accuracy at slightly longer ranges. The overall length of the pistol is increased by the length of the stock, and the 'pistol cannot be holstered while it is attached. Attaching the stock (or detaching it) requires 1D rounds. A shoulder stock increases the effective and long range of a pistol by +25%, but does not increase its extreme range."
        IF trait$ = "Extended Range" THEN trait$(x) = "EXTENDED RANGE: Extended range rounds use more effcient propellant or even a rocket boost to increase their velocity and therefore effective range. Artillery weapons may combine extended range ammunition with other types simply by adding their cost multipliers together."


        IF trait$ = "AP" THEN trait$(x) = "ARMOUR PIERCING: These rounds are pointed projectiles of dense or very hard material designed to punch through armour. AP ammunition provides a weapon with an AP trait equal to the number of damage dice it rolls. If the weapon already has the AP trait, this is added to the fnal AP score."
        IF LEFT$(trait$, 4) = "APDS" THEN trait$(x) = "ARMOUR PIERCING DISCARDING SABOT (APDS): Representing several variations on the theme of a rod penetrator launched with a sabot and featuring increasingly long acronyms, APDS is an anti-armour round representative of various efforts to get through armour. APDS ammunition provides a weapon with an AP trait equal to triple the number of damage dice it rolls. If the weapon already has the AP trait, this is added to the fnal AP score."
        IF trait$ = "HEAP" THEN trait$(x) = "HIGH EXPLOSIVE ARMOUR PIERCING (HEAP): High Explosive Armour Piercing rounds use shaped charge warheads or similar technologies to penetrate thick levels of armour before detonating inside the target. HEAP ammunition provides a weapon with an AP trait equal to double the number of damage dice it rolls (before the bonus dice is added for HEAP ammunition)."
        IF trait$ = "Solid" THEN trait$(x) = "SOLID SHOT: A basic anti-armour round, solid shot is essentially a pointed projectile of dense or hard material. Solid shot provides a weapon with an AP trait equal to half the number of damage dice it rolls, rounding up. If the weapon already has the AP trait, this is added to the final AP score."
        IF trait$ = "Reload" THEN ROF = .5: trait$(x) = "Single Shot Breechloader. The weapon needs one turn to reload after firing."
        IF trait$ = "Slow Reload" THEN ROF = .333: trait$(x) = "Single Shot Muzzle Loader. The weapon needs two turns to reload after firing."
        IF trait$ = "Very Slow Reload" THEN ROF = .2: trait$(x) = "Single Shot Muzzle Loader Rifle. The weapon needs four turns to reload after firing."

        39
        IF RIGHT$(trait$, 3) = "lky" AND gyro = 1 THEN trait$(x) = trait$(x) + " Gyrostabilized.": bulk = 0: gyro = 0
        IF RIGHT$(trait$, 3) = "hot" AND AP > 0 THEN trait$(x) = "": Shot = 0
    NEXT

    40 'no traits jump address
    'READ description$: description$ = description$ + " "

    IF I < weapon GOTO 4300
    kal$ = LEFT$(description$, 5):
    IF VAL(RIGHT$(kal$, 1)) = 0 THEN kal$ = LEFT$(kal$, 4)
    IF VAL(RIGHT$(kal$, 1)) = 0 THEN kal$ = LEFT$(kal$, 3)

    kal = VAL(kal$) / 25.41
    DMULTz = .5
    DMULTz = 1
    IF kal >= .341 THEN DMULTz = 1 REM .341
    IF kal >= .393 THEN DMULTz = 1.5
    IF kal >= .44 THEN DMULTz = 1.6
    IF kal >= .49 THEN DMULTz = 1.8
    IF kal >= .55 THEN DMULTz = 1.9
    IF kal > .6 THEN DMULTz = 2
    IF kal = 0 THEN DMULTz = 1

    IF DMULTz <> 1 AND era <> 4 THEN PRINT: PRINT " Additional GURPS damage calculation Y/N ?": GOSUB 1000: Gurps$ = a$




    IF bulk < 0 THEN aDM = aDM - smodi - bulk
    tohit = tohit0 - aDM

    50
    IF world$ = "X" THEN weap$ = weap$ + ", TL" + STR$(tl)
    IF supp = 1 THEN weap$ = "Silenced " + weap$










    REM Datenausgabe

    nnn = 1: OPEN weap$ + ".DOC" FOR OUTPUT AS #1: PRINT #nnn,
    PRINT #nnn, weap$
    mun$ = "": mut$ = ""
    mag0 = magazine: munbar = 1: IF magazine > s78 / 2 AND magazine < 71 THEN magazine = INT(magazine / 2): munbar = 2

    FOR u = 1 TO magazine
        ww$ = "ï"
        REM ww$ = CHR$(233)
        mun$ = mun$ + ww$
    NEXT




    'AMMUNITION BAR
    IF ab$ = "N" OR magazine < 2 THEN GOTO 401

    placeholder = INT(s78 / LEN(mun$)) - 1
    zz$ = "":
    FOR r = 1 TO placeholder: zz$ = zz$ + " ": NEXT
    IF placeholder > -1 THEN FOR p = 1 TO LEN(mun$): mut$ = mut$ + MID$(mun$, p, 1) + zz$: NEXT
    mut$ = RTRIM$(mut$): mut$ = LTRIM$(mut$): ww = s78: N = LEN(mut$): n1 = CINT((ww - N) / 2): n2 = ww - n1 - N
    mun1$ = "": mut1$ = ""
    FOR u = 1 TO magazine
        ww$ = "²":
        REM ww$ = CHR$(219): REM weiss
        REM ww$ = CHR$(176)
        ww$ = CHR$(177)
        ww$ = CHR$(176)
        'ww$ = CHR$(219): ' schwarz
        rofx = ROF: rofz = ROF * 3
        IF NoAuto = 1 THEN rofz = rofx

        IF INT(u / rofx) - u / rofx = 0 AND ROF > 1 THEN ww$ = "±"
        IF INT(u / rofz) - u / rofz = 0 AND ROF > 1 THEN ww$ = "²"

        IF ROF = 1 THEN ww$ = "²":
        mun1$ = mun1$ + ww$
    NEXT
    IF LEN(mun$) > s78 THEN mun$ = LEFT$(mun$, s78)
    IF LEN(mun$) > s78 OR magazine < 2 OR placeholder < 1 THEN GOTO 401
    PRINT #nnn, "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
    placeholder = INT(s78 / LEN(mun1$)) - 1
    zz$ = "": FOR r = 1 TO placeholder: zz$ = zz$ + " ": NEXT
    IF placeholder > -1 THEN FOR p = 1 TO LEN(mun1$): mut1$ = mut1$ + MID$(mun1$, p, 1) + zz$: NEXT
    mut1$ = RTRIM$(mut1$): mut1$ = LTRIM$(mut1$): ww = s78: N = LEN(mut1$): n1 = CINT((ww - N) / 2): n2 = ww - n1 - N
    PRINT #nnn, "³"; SPC(n1); mut$; SPC(n2); "³"
    PRINT #nnn, "³"; SPC(n1); mut1$; SPC(n2); "³"
    IF munbar = 1 GOTO 198
    PRINT #nnn, "³"; SPC(n1); mut$; SPC(n2); "³"
    PRINT #nnn, "³"; SPC(n1); mut1$; SPC(n2); "³"
    198 PRINT #nnn, "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ"


    401 'WEAPON DESCRIPTON


    magazine = mag0

    PRINT #nnn, "ÚÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
    PRINT #nnn, USING "³ TL ## ³ Weight###.# kg "; tl; weight;
    IF price = 0 THEN PRINT #nnn, "³                  ³";
    IF world$ = "23" AND price > 0 THEN PRINT #nnn, USING "³ Cost########, Lv ³"; price;
    IF world$ <> "23" AND price > 0 THEN PRINT #nnn, USING "³ Cost########, Cr ³"; price;



    IF magazine < 1 THEN PRINT #nnn, " NO LIMIT ";: GOTO 402
    IF magazine < 1000 THEN PRINT #nnn, USING "### Shots "; magazine;: GOTO 402
    IF magazine > 999 THEN PRINT #nnn, USING "### Shots "; magazine;

    402
    IF magprice = 0 THEN PRINT #nnn, "³                ³"
    IF world$ = "23" AND magprice > 0 THEN PRINT #nnn, USING "³ Ammo######, Lv ³"; magprice
    IF world$ <> "23" AND magprice > 0 THEN PRINT #nnn, USING "³ Ammo######, CR ³"; magprice
    PRINT #nnn, "ÃÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´"
    'IF traits = 0 THEN GOTO 405

    403 'WEAPON TRAITS
    ammo$ = "": FOR x = 1 TO traits: ammo$ = ammo$ + trait$(x) + " ": NEXT: IF LEN(ammo$) < s78 THEN GOTO 404
    IF big = 1 THEN FOR x = 1 TO traits: text$ = text$ + trait$(x) + " ": NEXT: GOSUB 19999: GOTO 405

    'text$ = "": GOSUB 19999:
    FOR x = 1 TO traits: text$ = trait$(x) + ".": GOSUB 19999
        IF x < traits THEN text$ = "": GOSUB 19999
    NEXT: GOTO 405

    404
    ww = s78 - 1
    N = LEN(ammo$): n1 = CINT((ww - N) / 2): n2 = ww - n1 - N: '- 8: n1 = n1 - 8
    PRINT #nnn, "³ "; SPC(n1); ammo$; SPC(n2); "³"

    405 range = range * RMO
    crange = range / 4: IF crange > 20 THEN crange = CINT(crange / 10) * 10
    mrange = range:
    xeight = mrange: GOSUB 500: mrange = WTX
    lrange = range * 2 * LRM
    xeight = lrange: GOSUB 500: lrange = WTX
    xrange = range * 4
    xeight = xrange: GOSUB 500: xrange = WTX

    chit = 7 - Shot - Laser
    mhit = 8: IF mrange < 51 AND Laser = 1 THEN mhit = 7
    lhit = 10: IF lrange < 51 AND Laser = 1 THEN lhit = 9
    xhit = 12: IF xrange < 51 AND Laser = 1 THEN xhit = 11
    IF mrange > 100 THEN mhit = 12
    IF lrange > 100 THEN lhit = 12
    scopix = Scope: IF HOLO = 1 THEN scopix = 2

    PRINT #nnn, "ÃÄÄÄÄÄÄÄÂÄÄÄÂÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄ´"

    IF AP > 0 THEN PRINT #nnn, USING "³ AP ## ³ATK³RNDS³DAMAGE³"; AP;

    IF AP = 0 THEN PRINT #nnn, "³       ³ATK³RNDS³DAMAGE³";


    PRINT #nnn, USING "#####, m   ³"; crange;
    PRINT #nnn, USING "#####, m   ³"; mrange;
    PRINT #nnn, USING "#####, m   ³"; lrange;
    PRINT #nnn, USING "#####, m   ³"; xrange
    PRINT #nnn, "ÃÄÄÄÄÄÄÄÅÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄ´"
    IF ROF >= 1 THEN PRINT #nnn, "³ SINGLE³ 1 ³  1 ³";: wurfel = DamD * 3.5 + DamA: GOSUB 10000: PRINT #nnn, "³";: GOTO 407
    IF ROF < 1 THEN PRINT #nnn, USING "³ SINGLE³1/#³  1 ³"; 1 / ROF;: wurfel = DamD * 3.5 + DamA: GOSUB 10000: PRINT #nnn, "³";


    407 IF ROF < 2 THEN GOSUB 9000: GOTO 4100 ELSE GOSUB 9100
    PRINT #nnn, USING "³ BURST ³ # ³ ## ³"; 1; ROF;
    DamA = DamA + ROF: wurfel = DamD * 3.5 + DamA: GOSUB 10000: DamA = DamA - ROF: PRINT #nnn, "³";: GOSUB 9000
    'PRINT #nnn, "ÃÄÄÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄ´"

    IF NoAuto = 1 THEN PRINT #nnn, "³       ³   ³    ³      ³";: GOSUB 9100: GOTO 4100
    PRINT #nnn, USING "³ AUTO  ³ # ³ ## ³"; ROF; ROF * 3;
    wurfel = DamD * 3.5 + DamA: GOSUB 10000: PRINT #nnn, "³";: GOSUB 9100
    4100
    IF Scope = 0 AND HOLO = 0 THEN GOTO 4200
    PRINT #nnn, "ÃÄÄÄÄÄÄÄÁÄÄÄÁÄÄÄÄÅÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄ´"

    IF Laser = 1 AND HOLO = 1 THEN PRINT #nnn, "³ HOLOSCOPE+XLAS ³ 1AIM ³";: GOTO 4150
    IF Laser = 1 AND tl < 10 THEN PRINT #nnn, "³ SCOPED + LASER ³ 1AIM ³";: GOTO 4150
    IF Laser = 1 AND tl >= 10 THEN PRINT #nnn, "³ SCOPE + XLASER ³ 1AIM ³";: GOTO 4150

    PRINT #nnn, "³  S C O P E D   ³ 1AIM ³";
    4150
    PRINT #nnn, USING "    ##+    ³"; 7 - tohit - scopix;
    PRINT #nnn, USING "    ##+    ³"; 8 - tohit - scopix;
    PRINT #nnn, USING "    ##+    ³"; 10 - tohit - scopix;
    PRINT #nnn, USING "    ##+    ³"; 12 - tohit - scopix
    PRINT #nnn, "ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÙ": GOTO 100
    4200
    PRINT #nnn, "ÀÄÄÄÄÄÄÄÁÄÄÄÁÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÙ"
    100
    IF description$ = "" OR big < 2 THEN GOTO 110
    PRINT #nnn, "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
    text$ = description$: GOSUB 19999:
    PRINT #nnn, "À";
    FOR I2 = 1 TO s78: PRINT #nnn, "Ä";: NEXT
    PRINT #nnn, "Ù"
    110
    IF Gurps$ <> "N" AND DMULTz <> 1 THEN GOSUB 4000

    IF UCASE$(GL$) <> "GL" THEN GOTO 4290


    range = 100: DamD = 5: DamA = 0: traits = 1: ROF = 1: trait$(1) = "Blast 9": BLA = 9: Gx$ = "":
    text$ = "Integral 30 mm grenade launcher. Upon a successful attack, " + STR$(DamD) + "D damage is rolled against every target within" + STR$(BLA) + " metres. ": ' Dodge Reactions may not be made against a Blast weapon, but targets may dive for cover. "


    IF world$ = "23" THEN DamD = 6: BLA = 6: text$ = "Integral 3 shot, 30 mm grenade launcher, Range 100 m. Upon a successful attack, " + STR$(DamD) + "D damage is rolled against every target within" + STR$(BLA) + " metres. Grenade weight : 0.4 kg. "
    IF GL$ = "gl" THEN DamD = 4: BLA = 2: text$ = "Integral 14 mm grenade launcher. Upon a successful attack, " + STR$(DamD) + "D damage is rolled against every target within" + STR$(BLA) + " metres. ": ' Dodge Reactions may not be made against a Blast weapon, but targets may dive for cover. "
    PRINT #nnn, "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
    'text$ = "    Integral 3 shot, 30 mm grenade launcher, 5D damage, Blast 9m."
    GOSUB 19999: ' GOTO 404
    PRINT #nnn, "À";
    FOR I2 = 1 TO s78: PRINT #nnn, "Ä";: NEXT
    PRINT #nnn, "Ù"
    4290
    IF UCASE$(GL$) <> "SG" THEN GOTO 4300

    DamD = 3: text$ = "Integral shotgun barrel." + STR$(DamD) + "D damage. Ignore Dodge dice modifiers, but Armour gives double protection."
    PRINT #nnn, "ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿"
    'text$ = "    Integral 3 shot, 30 mm grenade launcher, 5D damage, Blast 9m."
    GOSUB 19999: ' GOTO 404
    PRINT #nnn, "À";
    FOR I2 = 1 TO s78: PRINT #nnn, "Ä";: NEXT
    PRINT #nnn, "Ù"




    4300

    'FOR z = 1 TO 1: PRINT #nnn,: NEXT
NEXT
RUN

IF big < 3 GOTO 405
FOR x = 1 TO traits: text$ = trait$(x) + "."
    PRINT #nnn, "Ú";: FOR I2 = 1 TO s78: PRINT #nnn, "Ä";: NEXT: PRINT #nnn, "¿"
    GOSUB 19999
    PRINT #nnn, "À";: FOR I2 = 1 TO s78: PRINT #nnn, "Ä";: NEXT: PRINT #nnn, "Ù"
NEXT

4000 REM Waffenschaden GURPS Weapons
dmax = (DamD * 6 + DamA) * DMULTz: 'PRINT DamD; DamA; kal, dmultz; dmax
dax = (dmg * 3.5) + dmod

REM 1W6

IF DamD > 1 THEN GOTO 4002
PRINT #nnn, "ÚÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄ¿"
PRINT #nnn, "³ 1D6 ³     1    ³     2    ³     3    ³     4    ³     5    ³     6    ³"
PRINT #nnn, "ÃÄÄÄÄÄÅÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍ´"
'PRINT #nnn, "³     ³          ³          ³          ³          ³          ³          ³"
'PRINT #nnn, USING "³ #.# "; dmultz;
PRINT #nnn, USING "³#.## "; kal;


FOR uj = 1 TO 6: value = INT(uj * dmax / 6): IF uj = 6 THEN value = dmax
    PRINT #nnn, USING "³   ###    "; value;
NEXT
PRINT #nnn, "³"

'PRINT #nnn, "³     ³          ³          ³          ³          ³          ³          ³"
PRINT #nnn, "ÀÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÙ"
RETURN

4002 REM 2W6
IF DamD > 2 THEN GOTO 4003
PRINT #nnn, "ÚÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄ¿"
PRINT #nnn, "³ 2D6 ³  2  ³  3  ³  4  ³  5  ³  6  ³  7  ³  8  ³  9  ³ 10  ³ 11  ³ 12  ³"
PRINT #nnn, "ÃÄÄÄÄÄÅÍÍÍÍÍØÍÍÍÍÍØÍÍÍÍÍØÍÍÍÍÍØÍÍÍÍÍØÍÍÍÍÍØÍÍÍÍÍØÍÍÍÍÍØÍÍÍÍÍØÍÍÍÍÍØÍÍÍÍÍ´"
'PRINT #nnn, "³     ³     ³     ³     ³     ³     ³     ³     ³     ³     ³     ³     ³"
PRINT #nnn, USING "³#.## "; kal;
'PRINT #nnn, "³    ";
FOR uj = 2 TO 12:
    value = INT((uj + dmod) * DMULTz): IF uj = 12 THEN value = dmax
    value = INT(dmax / 12 * uj): IF uj = 12 THEN value = dmax

    IF uj < 13 THEN PRINT #nnn, USING "³###  "; value;
    '    IF uj > 9 THEN PRINT #nnn, USING "³####  "; value;

NEXT: PRINT #nnn, "³"


'PRINT #nnn, "³     ³     ³     ³     ³     ³     ³     ³     ³     ³     ³     ³     ³"
PRINT #nnn, "ÀÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÙ"
RETURN
4003 REM 3W6
PRINT #nnn, "ÚÄÄÄÄÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄ¿"
PRINT #nnn, "³  3D6  ³ 3 ³ 4 ³ 5 ³ 6 ³ 7 ³ 8 ³ 9 ³10 ³11 ³12 ³13 ³14 ³15 ³16 ³17 ³18 ³"
PRINT #nnn, "ÃÄÄÄÄÄÄÄÅÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍ´"
'PRINT #nnn, "³       ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³"
PRINT #nnn, USING "³ #.##  "; kal;
'PRINT #nnn, "³      ";

FOR uj = 3 TO 18: value = INT(dmax / 18 * uj): IF uj = 18 THEN value = dmax
    IF uj < 19 THEN PRINT #nnn, USING "³## "; value;
NEXT: PRINT #nnn, "³"
'PRINT #nnn, "³       ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³   ³"
PRINT #nnn, "ÀÄÄÄÄÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÙ"
RETURN
dmod = d0mod
'IF dmt$ = "Exp" AND dax > -1 THEN GOTO 8000

RETURN






























500
WTX = INT(xeight * 10) / 10
IF xeight > 100 THEN WTX = INT(WTX / 10) * 10
IF xeight > 1000 THEN WTX = INT(WTX / 100) * 100
IF xeight > 10000 THEN WTX = INT(WTX / 1000) * 1000
RETURN

9000
PRINT #nnn, USING "    ##+    ³"; chit - tohit;
PRINT #nnn, USING "    ##+    ³"; mhit - tohit;
PRINT #nnn, USING "    ##+    ³"; lhit - tohit;
PRINT #nnn, USING "    ##+    ³"; xhit - tohit
RETURN
9100
PRINT #nnn, "           ³           ³           ³           ³"
RETURN


10000
'PRINT DamD; DamA; wurfel,
pdam = (wurfel / 3.5 - INT(wurfel / 3.5))
wurfel = wurfel / 3.5
wurfel = INT(wurfel)

pdam = CINT(pdam * 3.5)
IF wurfel >= 10 THEN PRINT #nnn, USING "##DD  "; wurfel / 10;: RETURN
100010
IF DamA <> 0 THEN PRINT #nnn, USING "##D+# "; DamD; DamA;: RETURN
IF pdam <> 0 THEN PRINT #nnn, USING "##D+# "; wurfel; pdam;: RETURN


PRINT #nnn, USING "##D   "; DamD;: RETURN

10100 REM momo
xu = 16: momo = 0
'FOR u = 1 TO 27: IF range(u) > d05 THEN xu = u - 1: u = 27
'NEXT
IF xu > zwa THEN momo = xu - zwa
IF momo < 0 THEN momo = 0
RETURN


10200 'IF value < 13 THEN value = 14 - value

IF value < 13 AND value > 2 THEN PRINT #nnn, USING "   ##+  ³"; value;: RETURN
PRINT #nnn, "    -   ³";: RETURN







19999 ' Druckausgabe
s782 = s78 - 2
'PRINT #nnn, "Ú";
'FOR I2 = 1 TO s78: PRINT #nnn, "Ä";: NEXT
'PRINT #nnn, "¿"

FOR I2 = 0 TO 10: text$(I2) = "Ä": NEXT

tabu0 = s782 + 1: tabu = tabu0: tx = 0:
text$(0) = text$: IF LEN(text$(0)) <= tabu THEN GOTO 10004

10001 IF tabu > 1 AND MID$(text$(tx), tabu, 1) <> " " THEN tabu = tabu - 1: GOTO 10001
leng = LEN(text$(tx)): l1 = leng - tabu
text$(tx + 1) = RIGHT$(text$(tx), l1)
text$(tx) = LEFT$(text$(tx), tabu)
tx = tx + 1
tabu = tabu0
IF LEN(text$(tx)) > tabu THEN GOTO 10001



10002 FOR I2 = 0 TO tx - 1: space0 = tabu0 - LEN(text$(I2)): work1$ = ""

    10003 work$ = text$(I2): work1$ = "":
    FOR zz = 1 TO LEN(work$): space0$ = MID$(work$, zz, 1)
        IF space0$ = " " AND space0 > 0 THEN space0$ = "  ": space0 = space0 - 1
        work1$ = work1$ + space0$
    NEXT
    text$(I2) = work1$
    IF space0 > 0 AND tx <> I2 THEN GOTO 10003

NEXT

10004 FOR I2 = 0 TO tx: 'IF I2 = 0 THEN PRINT #nnn, "³";
    IF nnn = 1 THEN PRINT #nnn, "³ ";
    text$(I2) = LEFT$(text$(I2), LEN(text$(I2)) - 1)
    IF I2 = tx THEN text$(I2) = text$(I2) + SPC(s782 - LEN(text$(I2)))
    IF nnn = 1 THEN PRINT #nnn, text$(I2); " ³":
    IF nnn = 0 THEN PRINT " "; text$(I2)
NEXT
RETURN
IF text$ = ammo$ THEN RETURN
PRINT #nnn, "À";
FOR I2 = 1 TO s78: PRINT #nnn, "Ä";: NEXT
PRINT #nnn, "Ù"


RETURN



10005
IF LEFT$(text$, 1) = " " THEN text$ = RIGHT$(text$, LEN(text$) - 1): GOTO 10005
RETURN

1000 a$ = INKEY$: IF a$ = "" GOTO 1000
a$ = UCASE$(a$)
RETURN

999

DATA "s","X","X","P","Antique Pistol",3,5,2,-3,1,100,1,5,1,"DM-1 to all attacks"
DATA "A Flintlock or other primitive projectile weapon. Unless the weapon is especially well made, it will suffer DM-1 to all attacks. Antique pistols also require a successful Gun Combat (slug) check to reload."

DATA "S","X","X","P","Assault Pistol",6,10,3,-3,1,250,15,10,1,"Auto-2"
DATA "An autopistol designed to fire bursts of fully-automatic fire, assault pistols are notoriously inaccurate and suffer DM-2 to all attack rolls when using burst or full auto modes."

DATA "S","X","X","P","Autopistol",6,10,3D,-3,1,200,15,10,0
DATA "Variants of this semi-automatic pistol are the standard sidearms for law enforcement officers and criminals across the Imperium."

DATA "S","X","X","P","Body Pistol",8,5,2,0,.2,500,6,10,0
DATA "Body pistols are manufactured from plastics and cultured bone, making them very diffcult to detect using conventional weapons scanners. Body pistols increase the diffculty of Electronics (sensors) checks to detect them to Very Hard (12+)."

DATA "S","X","X","P","Cartridge Pistol",7,20,4,0,1.5,300,6,10,2,"Bulky","Shot"
DATA "A large smoothbore revolver chambered for a non-standard 13 mm light shotgun cartridge, this weapon is often used to deal with vermin but has some combat applications."

DATA "s","X","X","P","Coach Pistol",3,5,4,-3,2,200,2,10,2,"Dangerous","Shot"
DATA "Essentially a sawed-off double-barrelled black powder shotgun, the coach pistol is deadly at close range but useless at any real distance. Both barrels can be discharged at once, in which case the damage is increased to 4D. Coach pistols require a successful Gun Combat (slug) check to reload."

DATA "s","X","X","P","Duck's Foot Pistol",3,5,3,-3,2,300,24,25,2,"Auto 4","Dangerous"
DATA "A good tool for intimidating an entire mob at once, the duck's foot pistol has several (normally between four and eight) splayed barrels which are all discharged at once. Its effects can be fairly random, and the energy expended has been known to wreck the pistol. The Duck's foot pistol can only ever be used on full auto and a target may only be attacked once - any extra shots are wasted."

DATA "S","X","X","P","Flechette Pistol",9,10,3,-2,1,275,20,10,1,"Silent"
DATA "This pistol is designed to be an effcient and silent weapon for use by those who do not wish to bring attention to themselves. It uses compressed air to launch a cluster of metal darts."

DATA "S","X","X","P","Gauss Pistol",13,20,3,0,1,500,35,20,3,"AP 3","Auto 2","Laser"
DATA "Gauss pistols use electromagnetic coils to accelerate metallic darts to hypersonic speeds. Gauss weapons are lightweight, effcient and deadly."

DATA "S","X","X","P","Heavy Revolver",6,10,4D,-3,1.5,400,6,15,1,"Bulky"
DATA "A more robust and solidly built version of the standard revolver, a heavy revolver fires a long (Magnum) 10 mm or even 12 mm cartridge."

DATA "s","X","X","P","Magrail Pistol",14,15,3,+3,1,750,20,60,1,"Auto 4"
DATA "Using similar technology to gauss weapons, magrail pistols throw ovoid projectiles (sometimes erroneously called discs or shuriken) which hit hard at short ranges but lack penetrative power."

DATA "S","X","X","P","Revolver",5,10,3,-3,1,150,6,5,0
DATA "A conventional six-shooter handgun."

DATA "S","X","X","P","Shot Pistol",5,2,3,0,0.5,60,1,5,1,"Shot"
DATA "This is a single shot, break-open smoothbore handgun designed to fire non-standard low-powered 14 mm cartridges, intended to deal with snakes and similar vermin in the wilderness. It is virtually useless beyond a few metres."

DATA "S","X","X","P","Snub Automatic",8,5,3,-3,.6,150,10,15,1,"Zero-G"
DATA "These lightweight, low-recoil weapons were designed for use aboard spacecraft and in zero gravity."

DATA "S","X","X","P","Snub Pistol",8,5,3,-3,.2,150,6,10,1,"Zero-G"
DATA "These lightweight, low-recoil weapons were designed for use aboard spacecraft and in zero gravity."

DATA "S","X","X","P","Universal Autopistol",8,10,3,-3,1,300,10,10,0
DATA "This is a smal-calibre semi-automatic handgun designed to be used by a variety of alien hands and appendages, enabling armed forces to issue a standard sidearm to non-human personnel. The weapon is also known as a staple gun because of its shape and modest effectiveness."

DATA "s","X","X","P","Zip Gun",3,5,2,-3,.2,50,1,5,2,"Dangerous","DM-1 to all attacks"
DATA "A Zip Gun is a one-shot weapon cobbled together from whatever materials are available. They are, by defnition, unique. Zip guns suffer DM-1 to their attack rolls."

DATA "S","X","X","R","Accelerator Rifle",9,25,3,0,2,900,15,30,1,"Zero-G"
DATA "Also known as gyrojet weapons, accelerator rifles are designed for zero-gravity combat. They fire tiny missiles that leave the rifle with minimal velocity and thus minimal recoil, then accelerate to high speed."

DATA "S","X","X","R","Advanced Combat Rifle",10,450,3,0,3,1000,40,15,2,"Auto 3","Scope"
DATA "The ultimate evolution of the conventional firearm, advanced combat rifles are the weapon of choice for many military units. Standard equipment includes an electronic battlefeld sight, incorporating both light amplifcation and passive IR, visual magnifcation, and a laser rangefinder which may also be used as a target painting device. The weapon is also gyroscopically stabilised during firing. A sling is provided, and the muzzle of the rifle includes an integral flash suppressor and adaptor for launching a 40mm RAM shoot-through grenade."

DATA "s","X","X","R","Air Rifle",3,50,2,0,4,225,1,1,1,"Silent"
DATA "These are rifles whose projectile are propelled by compressed air, charged by pumping an internal reservoir to the required pressure. One shot can be fired before the reservoir needs recharging (a process that takes 10 minor actions). These are not toys - weapons of this type are designed to kill, though they are generally more useful for hunting or for avoiding Law Level restrictions."

DATA "s","X","X","R","Air Rifle",4,75,3,-2,5,350,1,1,1,"Silent"
DATA "These are rifles whose projectile are propelled by compressed air, charged by pumping an internal reservoir to the required pressure. One shot can be fired before the reservoir needs recharging (a process that takes 10 minor actions). These are not toys - weapons of this type are designed to kill, though they are generally more useful for hunting or for avoiding Law Level restrictions. Air rifles come with a detachable air cylinder to allow multiple shots. These can be reflled for fire outside of combat by simply pumping air into them (this can be done manually but takes a few minutes)."

DATA "s","X","X","R","Antique Rifle",3,25,3,-3,6,150,1,10,1,"DM-1 to all attacks"
DATA "A musket or other primitive rifle. Unless the weapon is especially well made, it will have DM-1 to all attacks. Antique rifles require a successful Gun Combat (slug) check to reload."

DATA "S","X","X","R","Assault Rifle",7,200,3,0,4,500,30,15,1,"Auto 2"
DATA "Assault rifles fire lighter projectiles than rifles, but are capable of a higher rate of fire and are more suitable to short-range encounters."

DATA "S","X","X","R","Assault Shotgun",6,50,4,0,5,500,24,40,3,"Auto 2","Bulky","Shot"
DATA "A heavy shotgun fed from a bulky drum magazine, the assault shotgun is capable of automatic fire. It uses the same ammunition as other shotguns and can lay waste to a wide area."

DATA "S","X","X","R","Autorifle",6,300,3,0,5,750,20,10,1,"Auto 2"
DATA "Automatic rifles have a higher muzzle velocity and are capable of automatic fire. Sometimes called battle rifles."

DATA "S","X","X","R","Big Game Rifle",5,200,3,3,9,1250,5,50,1,"Very Bulky"
DATA "A bolt-action rifle firing heavy ammunition, this weapon is sometimes named after local wildlife (such as elephant gun). Its recoil is massive but the stopping power is impressive."

DATA "s","X","X","R","Flechette Submachine Gun",9,20,3,-2,3,500,40,20,2,"Auto 3","Silent"
DATA "This is a scaled-up version of the flechette pistol capable of full-automatic fire. A longer barrel, assault foregrip and folding stock make it more of a combat weapon than an assassination tool, and while it lacks stopping power, it sees use in some special operations units."

DATA "S","X","X","R","Gauss Rifle",12,600,4,0,4,1500,80,40,3,"AP 5","Auto-3","Scope"
DATA "Gauss rifles replace conventional rifles at TL13. Like the smaller gauss pistol, rifles fire high-velocity projectiles using electromagnetic rails."

DATA "S","X","X","R","Gauss Sniper Rifle",12,1000,5,0,4,2500,12,20,2,"AP 6","Scope"
DATA "Utilising gauss technology, this sniper rifle is the ultimate in long-ranged, surgical killing using projectiles. The scope includes light amplifcation and passive IR, visual magnifcation, and a laser rangefnder which may also be used as a target painting device."

DATA "S","X","X","R","Heavy ACR",10,450,4,0,5,2000,30,20,4,"Auto 2","Bulky","Holo","Laser"
DATA "Using larger calibre rounds, the heavy Advanced Combat Rifle is functionally similar to its smaller counterpart and hits harder, but has a lower rate of fire and requires a strong user to handle the recoil. Standard equipment includes an electronic battlefeld sight, incorporating both light amplifcation and passive IR, visual magnifcation, and a laser rangefinder which may also be used as a target painting device. The weapon is also gyroscopically stabilised during firing. A sling is provided, and the muzzle of the rifle includes an integral flash suppressor and adaptor for launching a 40mm RAM shoot-through grenade."

DATA "s","X","X","R","Magrail Rifle",14,150,4,3,4,2500,30,100,1,"Auto 6"
DATA "Magrail rifles follow the similar principles of electromagnetic induction to accelerate their projectiles as gauss weapons, but utilise an ovoid projectile (sometimes erroneously called a disc or shuriken) which hits hard at short ranges but lacks penetrative power."

DATA "S","X","X","R","Rifle",5,250,3,0,5,200,5,10,0
DATA "A long-range hunting rifle or light infantry weapon."

DATA "S","X","X","R","Shotgun",4,50,4,0,4,200,6,10,2,"Bulky","Shot"
DATA "Shotguns are smoothbore weapons that typically fire ammunition containing multiple small pellets. They are most effective at short range. A shotgun using pellet ammunition ignores Dodge dice modifers, but Armour gives double protection against pellet attacks."

DATA "S","X","X","R","Sawed-off Shotgun",5,10,4,0,2,200,1,5,2,"Bulky","Shot"
DATA "Popular more as a threat and (comparative) ease of concealment than a serious combat weapon, a sawed-off shotgun has had its barrels greatly shortened and the stock removed. It has a very short range but the wide spread of shot doubles the attack roll bonus at short range (DM+2)."

DATA "S","X","X","R","Sniper Rifle",8,500,3,0,5,700,4,10,3,"AP 5","Scope","Silent"
DATA "This is a high-tech, high-calibre rifle designed for maximum accuracy and penetration. With its integrated silencer and magnifcation scope, long-distance targets can be killed quietly and effciently."

DATA "s","X","X","R","Spear Gun",6,25,3,0,2,50,1,10,1,"Silent"
DATA "This is a weapon intended for use underwater. Utilising compressed air, it fires a harpoon or spear, which may be attached to the spear gun by a strong line. A Signifcant Action is required to reload a spear gun after it has been fired."

DATA "S","X","X","R","Submachine Gun",6,25,3,0,3,400,20,10,1,"Auto 3"
DATA "A short weapon capable of automatic fire, it puts the power of an assault rifle into a small package. However, it lacks a rifle's accuracy at range."




DATA "E","X","X","P","Gauntlet Laser",10,20,3,0,4,2500,100,1100,1,"Zero-G"
DATA "Effectively a laser pistol mounted to the back of a shielded gauntlet, this weapon is powered by a backpack-carried energy source fed to it by a cable usually tethered around the arm. Although very similar to a laser pistol, the gauntlet allows to retain an open hand while still armed with a potent weapon."

DATA "E","X","X","P","Hand Flamer",10,5,3,0,2,1500,5,25,2,"Fire","Blast 2"
DATA "Packing a powerful flamethrower safely into a pistol-sized frame, the hand flamer is useful in boarding actions and for other area clearance duties."

DATA "E","X","X","P","Laser Pistol",9,20,3,0,3,2000,100,1000,1,"Zero-G"
DATA "The TL9 pistol is bulky, but effective, with no recoil and a large magazine."

DATA "E","X","X","P","Laser Pistol",11,30,3,+3,2,3000,100,3000,1,"Zero-G"
DATA "At TL11, advances in battery technology and miniaturisation mean the pistol is no larger than a conventional firearm, but must still be connected to a battery pack for sustained use."

DATA "E","X","X","P","Maser Pistol",17,20,3,+3,3,25000,12,0,2,"AP 10","Zero-G"
DATA "Using maser (within the microwave area of the electromagnetic spectrum) technology, this pistol carries little physical punch but is superb at breaching armour. The power cell carries an indefnite charge so long as it remains undamaged and will recharge itself after an hour of not being fired."

DATA "E","X","X","P","Matter Disintegrator",18,5,10,0,1,2500000,0,50000,1,"Zero-G"
DATA "This highly advanced weapon causes atoms to release particles in rapid succession, effectively disintegrating its target."

DATA "E","X","X","P","Matter Disintegrator",19,10,20,0,1,4000000,0,0,1,"Zero-G"
DATA "This highly advanced weapon causes atoms to release particles in rapid succession, effectively disintegrating its target. It integrates an effectively unlimited power source."

DATA "E","X","X","P","Personal Defence Laser",13,25,3,+3,3,6000,25,100,2,"Auto 2","Zero-G"
DATA "A lightweight laser weapon fed by one-use cartridges rather than an external power pack, the personal defence laser (PDL) uses a 25-round magazine inserted in the handgrip. It is capable of fully-automatic fire and is used as a sidearm by some military offcers. It is somewhat bulkier than a laser pistol, but remains manageable."

DATA "E","X","X","P","Stunner",8,5,2,0,0.5,500,100,200,2,"Stun","Zero-G"
DATA "A non-lethal weapon designed to inflict a massive shock to the target, incapacitating it."

DATA "E","X","X","P","Stunner",10,5,2,+3,0.5,750,100,200,2,"Stun","Zero-G"
DATA "A non-lethal weapon designed to inflict a massive shock to the target, incapacitating it."

DATA "E","X","X","P","Stunner",12,10,3,0,0.5,1000,100,200,2,"Stun","Zero-G"
DATA "A non-lethal weapon designed to inflict a massive shock to the target, incapacitating it."




DATA "E","X","X","R","Cryo rifle",13,10,4,0,9,6000,12,150,1,"Blast 3"
DATA "Taking the technology of the cryojet and miniaturising it into the frame of a rifle, this weapon becomes the bane of even heavy infantry encased within battle dress. If a target wearing any kind of sealed armour is struck by a cryo rifle, it must make an Average (8+) STR check or be held in place for 1D rounds."

DATA "E","X","X","R","Flame Rifle",9,10,4,0,8,2500,10,50,2,"Fire","Blast 3"
DATA "An advanced flamethrower, the flame rifle packs everything a firestarter needs into one compact package."

DATA "E","X","X","R","Heavy Laser Rifle",12,1200,6,0,18,14000,12,500,2,"Scope","Zero-G"
DATA "A large and somewhat unwieldy weapon, the heavy laser rifle is intended for snipers who hunt heavily armoured targets, but it is equally well-suited to targeting light vehicles. The power pack is integrated into the weapon itself, removing the need for a heavy backpack."

DATA "E","X","X","R","Laser Carbine",9,150,4,0,4,2500,50,1000,1,"Zero-G"
DATA "Laser carbines are shorter and lighter than laser rifes, and have a correspondingly shorter range."

DATA "E","X","X","R","Laser Carbine",11,200,4,+3,3,4000,50,3000,1,"Zero-G"
DATA "Laser carbines are shorter and lighter than laser rifes, and have a correspondingly shorter range."

DATA "E","X","X","R","Laser Rifle",9,200,5,0,8,3500,100,1500,1,"Zero-G"
DATA "Laser rifles are highly accurate at long range and are powered by heavy backpacks."

DATA "E","X","X","R","Laser Rifle",11,400,5,+3,5,8000,100,3500,1,"Zero-G"
DATA "Laser rifles are highly accurate at long range and are powered by heavy backpacks."

DATA "E","X","X","R","Laser Sniper Rifle",12,600,6,+3,6,9000,6,250,2,"Scope","Zero-G"
DATA "A six-shot model designed to be used for mobile sniping. The power pack is integrated into the weapon itself, removing the need for a heavy backpack."

DATA "E","X","X","R","Maser Rifle",16,300,5,+3,8,30000,20,0,2,"AP-10","Zero-G"
DATA "A maser is a concentrated beam of microwave energy which boils a target from the inside. This makes it far more effective at destroying armoured targets and is far more potent than a laser rifle. The power cell carries an indefinite charge so long as it remains undamaged and will recharge itself after an hour of not being fired."

DATA "E","X","X","R","Plasma Rifle",16,300,10,0,6,100000,0,0,0
DATA "TL16 technology allows the bulky reactor and plasma chamber of the PGMP to be made small enough to fit into a rifle frame. The plasma rifle is a high-powered weapon designed to crack battle dress."

DATA "E","X","X","R","Solar Beam Rifle",17,500,10,0,4,200000,20,0,2,"AP-20","Zero-G"
DATA "Using an ambient solar radiation to create a short-ranged but powerful laser-like beam, this rifle is devastating against any man-sized target, capable of vaporising most targets it hits. The solar beam rifle has a very limited storage capacity, but automatically recharges if exposed to two hours of direct sunlight."

DATA "E","X","X","R","Stagger Laser Rifle",12,300,5,0,6,10000,50,5000,2,"Auto 2","Zero-G"
DATA "This weapon uses an industrial-grade beam splitter to create an automatic fire effect from a single powerful laser pulse. While reducing the energy of each individual shot, it allows a supporting role without massive amounts of energy, reducing the need for over-sized power packs."

DATA "E","X","X","R","Stagger Laser Rifle",14,350,5,+3,5,15000,100,6000,2,"Auto 3","Zero-G"
DATA "This weapon uses an industrial-grade beam splitter to create an automatic fire effect from a single powerful laser pulse. While reducing the energy of each individual shot, it allows a supporting role without massive amounts of energy, reducing the need for over-sized power packs."




DATA "A","X","X","R","Compound Cam Bow",5,100,3,-3,1,250,1,5,1,"AP 2"
DATA "This is a short bow made with advanced materials and incorporating a pulley device. The compound cam bow is as powerful as a traditional long bow but is much easier to handle."

DATA "A","X","X","R","Crossbow",2,100,3,-3,3,200,1,5,2,"AP 2","3 minor actions to re-load"
DATA "A heavy weapon, cocked with a stirrup or windlass device, the crossbow is powerful and simple to use. It is slow-firing, however, taking 3 minor actions to re-load."

DATA "A","X","X","R","Javelin",1,25,2,0,1,15,1,0,1,"One Shot"
DATA "A short spear designed for throwing, a javelin can be pressed into service as a footman's spear, but is not ideal outside of its intended role."

DATA "A","X","X","R","Long Bow",2,100,3,-3,1.5,150,1,5,2,"AP 2","Bulky"
DATA "A long symmetrical or asymmetric bow, this is a powerful lowtech weapon."

DATA "A","X","X","R","Repeating Crossbow",3,75,2,0,4,400,6,30,0
DATA "This is a weak but quick-firing crossbow, cocked by a lever and fed from a magazine of six bolts."

DATA "A","X","X","R","Short Bow",1,75,2,-3,1,50,1,5,0
DATA "A light bow with a weaker pull, the short bow is primarily a hunting weapon but sees use in combat from time to time. Short bows are sometimes used from the back of animals."

DATA "A","X","X","R","Sling",0,100,2,0,.1,10,1,1,0
DATA "A projectile weapon which propels small stones or metal bullets using rotational energy. Slings are powerful but require a certain amount of skill to use effectively."




DATA "H","X","X","R","Anti-Materiel Rifle",7,1000,5,0,15,3000,1,100,3,"AP 5","Scope","Very Bulky"
DATA "The anti-materiel rifle is a single-shot super-heavy rifle firing long cartridges at high velocity. It designed to destroy light vehicles and will make a real mess of armoured infantry."

DATA "h","X","X","R","Cryojet",11,10,4,0,14,4000,16,200,2,"Blast 5","Bulky"
DATA "In one way the opposite of a ?amethrower, the cryojet projects a stream of cryogenically chilled liquid which can do massive damage to living tissue. However, its primary use is to freeze the joints of sealed armour, temporarily incapacitating the target. If a target wearing any kind of sealed armour is struck by a cryojet, it must make an Average (8+) STR check or be held in place for 1D rounds."

DATA "h","X","X","R","Disposable Plasma Launcher",12,300,20,0,8,8000,1,0,2,"One Shot","Smart"
DATA "This is a self-contained, disposable weapon launching an 80 mm rocket-propelled directed plasma warhead. The plasma launcher is a deadly weapon able to destroy even hightechnology armoured vehicles. It is a favoured import with mid-tech forces that need a deterrent against higher-tech foes."

DATA "h","X","X","R","FGMP 14",14,450,20,0,12,100000,0,0,2,"Radiation","Very Bulky"
DATA "The ultimate personal firearm, the Fusion Gun, Man Portable is more like a piece of artillery. It includes a gravity suspension system to reduce its inertia, and fires what amounts to a directed nuclear explosion. Those without radiation protection who are nearby when a FGMP is fired will suffer a potentially lethal dose of radiation."

DATA "h","X","X","R","FGMP 15",15,450,20,0,12,400000,0,0,2,"Bulky","Radiation"
DATA "The ultimate personal firearm, the Fusion Gun, Man Portable is more like a piece of artillery. It includes a gravity suspension system to reduce its inertia, and fires what amounts to a directed nuclear explosion. Those without radiation protection who are nearby when a FGMP is fired will suffer a potentially lethal dose of radiation."

DATA "h","X","X","R","FGMP 16",16,450,20,0,15,500000,0,0,1,"Radiation"
DATA "The ultimate personal firearm, the Fusion Gun, Man Portable is more like a piece of artillery. It includes a gravity suspension system to reduce its inertia, and fires what amounts to a directed nuclear explosion. Those without radiation protection who are nearby when a FGMP is fired will suffer a potentially lethal dose of radiation."

DATA "h","X","X","R","Flamethrower",4,5,3,0,20,800,30,60,3,"Fire","Blast 3","Bulky"
DATA "A relatively crude device, the Flamethrower consists of a fuel tank, compressor and a nozzle that can project a torrent of fire some distance. Changing magazines (fuel tanks) takes 2D rounds, and if a target carrying a Flamethrower is hit by any attack with an Effect of 4 or greater, the weapon will explode,  destroying itself and immediately inflicting damage on the target as if he had been hit by it."

DATA "h","X","X","R","Flamethrower",6,5,4,0,15,1500,40,80,3,"Fire","Blast 5","Bulky"
DATA "A relatively crude device, the Flamethrower consists of a fuel tank, compressor and a nozzle that can project a torrent of fire some distance. Changing magazines (fuel tanks) takes 2D rounds, and if a target carrying a Flamethrower is hit by any attack with an Effect of 4 or greater, the weapon will explode,  destroying itself and immediately inflicting damage on the target as if it had been hit by it."

DATA "h","X","X","R","Flamethrower",8,10,4,0,10,2000,50,100,2,"Fire","Blast 5"
DATA "A relatively crude device, the Flamethrower consists of a fuel tank, compressor and a nozzle that can project a torrent of fire some distance. Changing magazines (fuel tanks) takes 2D rounds."

DATA "H","X","X","R","Machinegun",6,500,3,0,12,1500,60,100,1,"Auto 4"
DATA "A larger and less portable version of the autorifle, the machinegun may be relatively low tech but it is capable of sawing even armoured targets in half. The machinegun may use the variant ammunition types found in the Ammunition chapter."

DATA "h","X","X","R","PGMP 12",12,250,10,0,10,20000,0,0,1,"Very Bulky"
DATA "The Plasma Gun, Man Portable is the standard assault weapon of the marines. It is so heavy and bulky that it can only be used easily by a trooper in Battle Dress. It is powered by a built-in micro-fusion generator, and fires a high-energy plasma stream. More advanced plasma guns adjust the weapon's optimum range and plasma temperature."

DATA "h","X","X","R","PGMP 13",13,450,10,0,10,65000,0,0,1,"Bulky"
DATA "The Plasma Gun, Man Portable is the standard assault weapon of the marines. It is so heavy and bulky that it can only be used easily by a trooper in Battle Dress. It is powered by a built-in micro-fusion generator, and fires a high-energy plasma stream. More advanced plasma guns adjust the weapon's optimum range and plasma temperature."

DATA "h","X","X","R","PGMP 14",14,450,10,0,10,100000,0,0,0
DATA "The Plasma Gun, Man Portable is the standard assault weapon of the marines. It is so heavy and bulky that it can only be used easily by a trooper in Battle Dress. It is powered by a built-in micro-fusion generator, and fires a high-energy plasma stream. More advanced plasma guns adjust the weapon's optimum range and plasma temperature."

DATA "h","X","X","R","Plasma Jet",12,25,10,0,10,16000,0,0,2,"Blast 5","Very Bulky"
DATA "A crude use of plasma technology, the plasma jet is also the ultimate expression of primitive flamethrowers. Powered by a micro-fusion generator carried in a backpack, this weapon unleashes a short-ranged, barely controlled torrent of plasma capable of annihilating anything close by."

DATA "h","X","X","R","Plasma Jet",14,50,10,0,10,80000,0,0,2,"Blast 10","Bulky"
DATA "A crude use of plasma technology, the plasma jet is also the ultimate expression of primitive flamethrowers. Powered by a micro-fusion generator carried in a backpack, this weapon unleashes a short-ranged, barely controlled torrent of plasma capable of annihilating anything close by."

DATA "H","X","X","R","Rapid-Fire Machinegun",7,500,3,0,12,3000,60,100,1,"Auto 8"
DATA "This is a light machinegun tuned to develop an incredibly high rate of fire. The Auto score of this weapon may be doubled, but the weapon must be left to cool for 2 rounds after this has been done. The rapid-fire machinegun may use the variant ammunition types found in the Ammunition chapter."

DATA "H","X","X","R","Rocket Launcher",6,120,4,0,8,2000,1,300,1,"Blast 6"
DATA "The poor man's FGMP. Anyone standing behind a rocket launcher when it is fired will be caught in its back blast and suffer 3D damage from the burning gasses. It takes three minor actions to reload a rocket launcher."

DATA "H","X","X","R","Rocket Launcher",7,150,4,+3,8,2000,1,400,2,"Blast 6","Smart"
DATA "The poor man's FGMP. Anyone standing behind a rocket launcher when it is fired will be caught in its back blast and suffer 3D damage from the burning gasses. It takes three minor actions to reload a rocket launcher."

DATA "H","X","X","R","Rocket Launcher",8,200,5,0,8,2000,2,600,3,"Blast 6","Scope","Smart"
DATA "The poor man's FGMP. Anyone standing behind a rocket launcher when it is fired will be caught in its back blast and suffer 3D damage from the burning gasses. It takes three minor actions to reload a rocket launcher."

DATA "H","X","X","R","Rocket Launcher",9,250,5,+6,8,2000,2,800,3,"Blast 6","Scope","Smart"
DATA "The poor man's FGMP. Anyone standing behind a rocket launcher when it is fired will be caught in its back blast and suffer 3D damage from the burning gasses. It takes three minor actions to reload a rocket launcher."



DATA "S","X","X","R","Gauss Assault Gun",12,20,4,0,20,1200,36,35,2,"AP 5","Auto 2"
DATA "This short weapon uses gauss technology not on a single round but on many flechettes, creating a rapid-firing shotgun effect when fired. Its small size makes it convenient on board ships and among vehicle crews, yet it retains a powerful short-ranged punch."

DATA "S","X","X","R","Light Assault Gun",8,800,7,0,4,4000,5,100,1,"Very Bulky"
DATA "This is a heavy 20 mm rifle, fed by a 5-round magazine. It is intended to be truly man-portable, delivering extremely hard-hitting power at squad-level, though its low rate of fire and small magazine mean its user must be adequately supported in a fire fight."

DATA "H","X","X","R","Light Gatling Laser",9,180,3,0,18,4500,100,300,2,"Auto 4","Zero-G"
DATA "An attempt to put together a multiple barrel laser system in a small package, the light gatling laser is low-powered compared to similar support weaponry but is capable of delivering a hail of fire. This alone can defeat or at least scare off lower Tech Level enemies, but it quickly runs out of steam against heavily armoured targets. However there is little in its class that matches it for price vs. performance."

DATA "H","X","X","R","VRF GAUSS GUN",12,750,4,0,250,20000,400,1000,2,"AP 5","Auto 8"
DATA "The very rapid-firing gauss gun is a support weapon that uses electromagnetic technology to deliver withering bursts of fire. Often used as an anti-personnel weapon on vehicles, consumption of ammunition is prodigious, and large hoppers have to be used to ensure adequate supply in combat. The VRF gauss gun may use the variant ammunition types found in the Ammunition chapter of the Central Supply Catalogue."

DATA "H","X","X","R","Grenade Launcher FRAG",7,100,5,0,6,400,6,300,2,"Bulky","Blast 9"
DATA "Grenade launchers are used to fire grenades over long distances. They may be equipped with any type of grenade."

DATA "XXX"

DATA "H","X","X","X","XXX",0,0,0,0,0,0,0,000,1,""
DATA ""

REM ØÍÍÍ º Å
REM 1 cm Panzerstahl = Hardened Steel = DR 27.5 = Expensive TL6 = .1
REM                  = Hard Steel     = AV  2   = Toughness 2
REM                                AV = DR / 13.75
REM                                DR = AV x  0.072727
year = 1889
Hit$ = "³ ş ":
noh$ = "³ ¯ "
nox$ = "³ « "
hd$ = "«"
td$ = CHR$(172)
noh$ = "³ ù ":

zwa = 16
yard = 0.9144
pound = 0.45359237



