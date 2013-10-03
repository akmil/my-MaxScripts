----Pavel Oleynyk----
---------------------
createDialog unnamedRollout --width:300 height:400
clearListener()
CSPATH ="D:\\3dmax2009\\scenes\\TT-2\\char\\hero\\"  -- path to *.BIP file
Main_path= "f:\\test\\"				                       -- path to save render picture
--backgroundColor = color 253 192 153;	
--theColor = backgroundColor 
	
rollout unnamedRollout "RenderTo_f:\test"  height:400 width:300
(	
	groupBox grp2 "info" width:230 height:80 pos:[2,220]
	label lab2 "Render picture saved to (Main_path) F:test\  " width:210 height:24 pos:[10,240]  --style_sunkenedge:true 
	label lab3 "All *BIP load from (CSPATH) D:\3dmax2009\scenes\TT-2\char\hero\ " width:210 height:24 pos:[10,264]
	
	groupBox grp1 "Render Size" pos:[2,320] width:230 height:70
	
	
	spinner b_width  "bmp  width:" range:[0,1000,116] pos:[22,340] width:142 height:34
	spinner b_height "bmp height:" range:[0,1000,106] pos:[22,360] width:142 height:34
	
	
	
	colorpicker theColor "Background Color:"  modal:false pos:[22,160] color:[253, 192, 153]
		on theColor changed new_col do (
	backgroundColor = new_col;
		--color 71 54 43--selection.wirecolor = new_col
	)
	button SetGray  "SetGray " pos:[160,160] width:44 height:20
	on SetGray pressed  do  (
		backgroundColor = color 40 40 40;
		--theColor =color 40 40 40;
		new_col	= color 40 40 40	
	)

 
	
	
/*		button dummyScale "dScl " pos:[158,14] width:30 height:80
	spinner xyz  "Scl:" range:[0,1000,10] pos:[210,14] width:50 height:34
	on dummyScale pressed  do
(	
	--scale $Dummy01  [1,1,1]
	x=1
	y=10
	z=1
	--scale $Dummy01  [x,y,z]
	
	$box01.scale =  [x,y,z]
	--btn1 = pressed 
)
*/
	groupBox grp3 "ButtonDo" pos:[2,60] width:230 height:70 
	label lab4 "Load and Render: 1.Stoyka   2.Walk   3.hit-Sword   4.hit-luk   5.hit-Pistol   6.hit-mGun . need to turn ON motion mode   " width:210 height:40 pos:[10,80]  --style_sunkenedge:true 
		
	button btn1 "All_render " pos:[8,14] width:143 height:42
	on btn1 pressed  do
(	

--b=bitmap 100 100 -- filename: fname --create a new bitmap
b=bitmap b_width.value b_height.value 

bipObj = $'Bip01 Pelvis'
bip = bipObj.controller
--bipObj.figureMode  = false
--bipObj.motionMode  = true
--select $'Bip01 Pelvis'
max motion mode   
biped.LoadBipFile bip (CSPATH+"woman_walk.bip") 
renderFrames=#{40,45,50,55,60,65}-- specify frames to render
	
	--renderFrames=#{14,16,18,20}--monkey walk
	folder="1walk\\"
print( "------rendering-------" )	
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
	at time i --set time context
			render  camera:$camera01 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_01\\" + folder + "cam01-.png"
			save b frame:i	-- save each frame as you advance
	at time i 
			render  camera:$camera02_frR to:b 
			b.filename = Main_path + "Cam_02\\" + folder + "cam02-.png"
			save b frame:i
	at time i 
			render  camera:$camera03_right to:b 
			b.filename = Main_path + "Cam_03\\" + folder + "cam03-.png"
			save b frame:i
	at time i 
			render  camera:$camera04 to:b 
			b.filename = Main_path + "Cam_04\\" + folder + "cam04-.png"
			save b frame:i-- save each frame as you advance
	at time i 
			render  camera:$camera05_back to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_05\\" + folder + "cam05-.png"
			save b frame:i-- save each frame as you advance
	at time i 
			render  camera:$camera06 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_06\\" + folder + "cam06-.png"
			save b frame:i-- save each frame as you advance
	at time i 
			render  camera:$camera07_left to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_07\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
	at time i 
			render  camera:$camera08 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
	
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
/*
	)
	button btn2 "hit_sword" pos:[168,4] width:144 height:42
	on btn2 pressed  do
	(
*/		
--b=bitmap 100 100 -- filename: fname --create a new bitmap
b=bitmap b_width.value b_height.value 
		
bipObj = $'Bip01 Pelvis'
bip = bipObj.controller
max motion mode   
biped.LoadBipFile bip (CSPATH+"w_hit_swordLuk.bip") 

renderFrames=#{2,4,6}-- specify frames to render
folder="2hit_sw\\"
 print( "+------rendering-------+" )	
--rendTimeType = 4 
--renderFrames=rendTimeType.count-- specify frames to render
--print rendTimeType.count

for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b -- render to bitmap frame
			b.filename = Main_path + "Cam_01\\" + folder + "hit_sw_cam01-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera02_frR to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_02\\" + folder + "hit_sw_cam02-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera03_right to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_03\\" + folder + "hit_sw_cam03-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera04 to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_04\\" + folder + "hit_sw_cam04-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera05_back to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_05\\" + folder + "hit_sw_cam05-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera06 to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_06\\" + folder + "hit_sw_cam06-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera07_left to:b-- render to bitmap frame
			b.filename = "f:\\test\\Cam_07\\" + folder + "hit_sw_cam07-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera08 to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "hit_sw_cam08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b
/*		)
		
	button btn3 "hit_luk" pos:[8,116] width:144 height:42
	on btn3 pressed  do
	(

	--b=bitmap 100 100 -- filename: fname --create a new bitmap
	b=bitmap b_width.value b_height.value 
			
	bipObj = $'Bip01 Pelvis'
	bip = bipObj.controller
	max motion mode   
	biped.LoadBipFile bip (CSPATH+"hero_hit_luk.bip") 
*/	
	renderFrames=#{12,13,14,15}-- specify frames to render

	folder="3hit_luk\\"
 print( "=--------rendering---------=" )	
 --$sword.renderable = off
 
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_01\\" + folder + "cam01-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera02_frR to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_02\\" + folder + "cam02-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera03_right to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_03\\" + folder + "cam03-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera04 to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_04\\" + folder + "cam04-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera05_back to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_05\\" + folder + "cam05-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera06 to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_06\\" + folder + "cam06-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera07_left to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_07\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera08 to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "cam08-.png"
			save b frame:i-- save each frame as you advance
		)
)
close b

/*		)	
	button btn4 "hit_pistol" pos:[8,168] width:144 height:42
	on btn4 pressed  do
(
*/		
	--b=bitmap 100 100 -- filename: fname --create a new bitmap
	b=bitmap b_width.value b_height.value 
			
	bipObj = $'Bip01 Pelvis'
	bip = bipObj.controller
	max motion mode   
	--biped.LoadBipFile bip (CSPATH+"hero_hit_pistol.bip") 

	renderFrames=#{9}-- specify frames to render
	folder="4_gun\\"
print( "+---------rendering----------+" )	
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b -- render to bitmap frame
			b.filename = Main_path + "Cam_01\\" + folder + "pistol_cam01-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera02_frR to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_02\\" + folder + "pistol_cam02-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera03_right to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_03\\" + folder + "pistol_cam03-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera04 to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_04\\" + folder + "pistol_cam04-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera05_back to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_05\\" + folder + "pistol_cam05-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera06 to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_06\\" + folder + "pistol_cam06-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera07_left to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_07\\" + folder + "pistol_cam07-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera08 to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "pistol_cam08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b-- close the output file - this will also get rid of
--the reference to the bitmap value and free its memory. 

		
	/*		)
	
	button btn5 "hit_mGun" pos:[8,220] width:144 height:42
	on btn5 pressed  do
	(
		
	--b=bitmap 100 100 -- filename: fname --create a new bitmap
	b=bitmap b_width.value b_height.value 
			
	bipObj = $'Bip01 Pelvis'
	bip = bipObj.controller
	max motion mode   
	--biped.LoadBipFile bip (CSPATH+"hero_hit_mash_gun.bip") 
	*/		
	renderFrames=#{11}-- specify frames to render
	folder="5mashine_gun\\"
print( "=----------rendering-----------=" )	
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b -- render to bitmap frame
			b.filename = Main_path + "Cam_01\\" + folder + "HitmashGun01-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera02_frR to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_02\\" + folder + "HitmashGun02-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera03_right to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_03\\" + folder + "HitmashGun03-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera04 to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_04\\" + folder + "HitmashGun04-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera05_back to:b-- render to bitmap frame
			b.filename = "f:\\test\\Cam_05\\" + folder + "HitmashGun05-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera06 to:b-- render to bitmap frame
			b.filename = "f:\\test\\Cam_06\\" + folder + "HitmashGun06-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera07_left to:b-- render to bitmap frame
			b.filename = Main_path +"Cam_07\\" + folder + "HitmashGun07-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera08 to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "HitmashGun08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b-- close the output file - this will also get rid of
--the reference to the bitmap value and free its memory. 

/*			)
		
	--========================================	
	--========================================
	--========================================
	--========================================
		
	button btn6 "stoyka" pos:[8,270] width:144 height:42
	on btn6 pressed  do
	(
*/		
	sliderTime = 11f ---just to make sure that its runs OK
	--b=bitmap b_width.value b_height.value 
			
	bipObj = $'Bip01 Pelvis'
	bip = bipObj.controller
	max motion mode   
	biped.LoadBipFile bip (CSPATH+"w_stoyka_in11fr.bip") --good for woman too
		
	renderFrames=#{11}-- specify frames to render
	folder="0stoyka\\"
	
	--$sword.renderable = on
	print( "-----------rendering------------" )	
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b -- render to bitmap frame
			b.filename = Main_path + "Cam_01\\" + folder + "stoyka01-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera02_frR to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_02\\" + folder + "stoyka02-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera03_right to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_03\\" + folder + "stoyka03-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera04 to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_04\\" + folder + "stoyka04-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera05_back to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_05\\" + folder + "stoyka05-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera06 to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_06\\" + folder + "stoyka06-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera07_left to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_07\\" + folder + "stoyka07-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render camera:$camera08 to:b-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "stoyka08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b-- close the output file - this will also get rid of
--the reference to the bitmap value and free its memory. 
print( "------------fin render-------------" )	
		)
		
)
