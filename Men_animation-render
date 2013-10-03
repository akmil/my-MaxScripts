---------Pavel Oleynyk 2013----------------
---------Script allow to rander from 8cameras in "Main_path" folder-------------

createDialog unnamedRollout width:300 height:400
clearListener()
CSPATH ="D:\\3dmax2009\\scenes\\TT-2\\char\\"
Main_path= "f:\\test\\"
--hairpath= "all_hair(men)\\h_blond-sphera\\"

rollout unnamedRollout "RenderTo_f:\test" width:200 height:500
(	
	groupBox grp1 "Render Size" pos:[2,320] width:188 height:70
	
	spinner b_width  "bmp  width:" range:[0,1000,100] pos:[22,340] width:142 height:34
	spinner b_height "bmp height:" range:[0,1000,100] pos:[22,360] width:142 height:34
	
	
	button btn1 "Walk_render " pos:[8,14] width:143 height:42
	on btn1 pressed  do
(	
	--b=bitmap 100 100 -- filename: fname --create a new bitmap

b=bitmap b_width.value b_height.value 

bipObj = $'Bip01 Pelvis'
bip = bipObj.controller
max motion mode   
biped.LoadBipFile bip (CSPATH+"hero_walk-new-stoyka.bip") 
renderFrames=#{45,50,55,60,65,70}-- specify frames to render
	
	--renderFrames=#{14,16,18,20}--monkey walk

	folder="1walk\\"
--rendTimeType = 4 
--renderFrames=rendTimeType.count-- specify frames to render
--print rendTimeType.count

for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b --progressbar: true-- render to bitmap frame
			b.filename = "f:\\test\\Cam_01\\" + folder + "cam01-.png"
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
			b.filename = "f:\\test\\Cam_02\\" + folder + "cam02-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)
----------------------------
for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			$hider.renderable = on
			at time i--set time context
			render camera:$camera03_right to:b-- render to bitmap frame
			b.filename = "f:\\test\\Cam_03\\" + folder + "cam03-.png"
			save b frame:i-- save each frame as you advance
			$hider.renderable = off
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
			b.filename = "f:\\test\\Cam_04\\" + folder + "cam04-.png"
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
			b.filename = "f:\\test\\Cam_05\\" + folder + "cam05-.png"
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
			b.filename = "f:\\test\\Cam_06\\" + folder + "cam06-.png"
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
			b.filename = "f:\\test\\Cam_07\\" + folder + "cam07-.png"
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
			b.filename = "f:\\test\\Cam_08\\" + folder + "cam08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b-- close the output file - this will also get rid of
--the reference to the bitmap value and free its memory. 


)
	button btn2 "hit_sword" pos:[8,64] width:144 height:42
	on btn2 pressed  do
	(
		
--b=bitmap 100 100 -- filename: fname --create a new bitmap
b=bitmap b_width.value b_height.value 
		
bipObj = $'Bip01 Pelvis'
bip = bipObj.controller
max motion mode   
biped.LoadBipFile bip (CSPATH+"hero_hit.bip") 

renderFrames=#{1,2,4}-- specify frames to render
folder="2hit_sw\\"

--rendTimeType = 4 
--renderFrames=rendTimeType.count-- specify frames to render
--print rendTimeType.count

for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b -- render to bitmap frame
			b.filename = "f:\\test\\Cam_01\\" + folder + "hit_sw_cam01-.png"
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
			b.filename = "f:\\test\\Cam_02\\" + folder + "hit_sw_cam02-.png"
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
			b.filename = "f:\\test\\Cam_03\\" + folder + "hit_sw_cam03-.png"
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
			b.filename = "f:\\test\\Cam_04\\" + folder + "hit_sw_cam04-.png"
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
			b.filename = "f:\\test\\Cam_05\\" + folder + "hit_sw_cam05-.png"
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
			b.filename = "f:\\test\\Cam_06\\" + folder + "hit_sw_cam06-.png"
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
			b.filename = "f:\\test\\Cam_08\\" + folder + "hit_sw_cam08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b
		)
		
	button btn3 "hit_luk" pos:[8,116] width:144 height:42
	on btn3 pressed  do
	(

	--b=bitmap 100 100 -- filename: fname --create a new bitmap
	b=bitmap b_width.value b_height.value 
			
	bipObj = $'Bip01 Pelvis'
	bip = bipObj.controller
	max motion mode   
	biped.LoadBipFile bip (CSPATH+"hero_hit_luk.bip") 
		
	renderFrames=#{12,13,14,15}-- specify frames to render

	folder="3hit_luk\\"

for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b progressbar: true-- render to bitmap frame
			b.filename = "f:\\test\\Cam_01\\" + folder + "cam01-.png"
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
			b.filename = "f:\\test\\Cam_02\\" + folder + "cam02-.png"
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
			b.filename = "f:\\test\\Cam_03\\" + folder + "cam03-.png"
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
			b.filename = "f:\\test\\Cam_04\\" + folder + "cam04-.png"
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
			b.filename = "f:\\test\\Cam_05\\" + folder + "cam05-.png"
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
			b.filename = "f:\\test\\Cam_06\\" + folder + "cam06-.png"
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
			b.filename = "f:\\test\\Cam_07\\" + folder + "cam07-.png"
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
			b.filename = "f:\\test\\Cam_08\\" + folder + "cam08-.png"
			save b frame:i-- save each frame as you advance
		)
)
close b

		)	
	button btn4 "hit_pistol" pos:[8,168] width:144 height:42
	on btn4 pressed  do
	(
	
	--b=bitmap 100 100 -- filename: fname --create a new bitmap
	b=bitmap b_width.value b_height.value 
			
	bipObj = $'Bip01 Pelvis'
	bip = bipObj.controller
	max motion mode   
	biped.LoadBipFile bip (CSPATH+"hero_hit_pistol.bip") 

	renderFrames=#{13}-- specify frames to render
	folder="4_gun\\"

for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b -- render to bitmap frame
			b.filename = "f:\\test\\Cam_01\\" + folder + "pistol_cam01-.png"
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
			b.filename = "f:\\test\\Cam_02\\" + folder + "pistol_cam02-.png"
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
			b.filename = "f:\\test\\Cam_03\\" + folder + "pistol_cam03-.png"
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
			b.filename = "f:\\test\\Cam_04\\" + folder + "pistol_cam04-.png"
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
			b.filename = "f:\\test\\Cam_05\\" + folder + "pistol_cam05-.png"
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
			b.filename = "f:\\test\\Cam_06\\" + folder + "pistol_cam06-.png"
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
			b.filename = "f:\\test\\Cam_07\\" + folder + "pistol_cam07-.png"
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
			b.filename = "f:\\test\\Cam_08\\" + folder + "pistol_cam08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b-- close the output file - this will also get rid of
--the reference to the bitmap value and free its memory. 

		
		)
	
	button btn5 "hit_mGun" pos:[8,220] width:144 height:42
	on btn5 pressed  do
	(
	--b=bitmap 100 100 -- filename: fname --create a new bitmap
	b=bitmap b_width.value b_height.value 
			
	bipObj = $'Bip01 Pelvis'
	bip = bipObj.controller
	max motion mode   
	biped.LoadBipFile bip (CSPATH+"hero_hit_mash_gun.bip") 
		
	renderFrames=#{13}-- specify frames to render
	folder="5mashine_gun\\"

for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b -- render to bitmap frame
			b.filename = "f:\\test\\Cam_01\\" + folder + "HitmashGun01-.png"
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
			b.filename = "f:\\test\\Cam_02\\" + folder + "HitmashGun02-.png"
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
			b.filename = "f:\\test\\Cam_03\\" + folder + "HitmashGun03-.png"
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
			b.filename = "f:\\test\\Cam_04\\" + folder + "HitmashGun04-.png"
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
			b.filename = "f:\\test\\Cam_07\\" + folder + "HitmashGun07-.png"
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
			b.filename = "f:\\test\\Cam_08\\" + folder + "HitmashGun08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b-- close the output file - this will also get rid of
--the reference to the bitmap value and free its memory. 

		)
		
	--========================================	
	--========================================
	--========================================
	--========================================
		
	button btn6 "stoyka" pos:[8,270] width:144 height:42
	on btn6 pressed  do
	(
	
	sliderTime = 11f ---just to make sure that its runs OK
	--b=bitmap 100 100 -- filename: fname --create a new bitmap
	b=bitmap b_width.value b_height.value 
			
	bipObj = $'Bip01 Pelvis'
	bip = bipObj.controller
	max motion mode   
	biped.LoadBipFile bip (CSPATH+"hero_walk-new-stoyka.bip") 
		
	renderFrames=#{11}-- specify frames to render
	folder="0stoyka\\"

for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b -- render to bitmap frame
			b.filename = "f:\\test\\Cam_01\\" + folder + "stoyka01-.png"
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
			b.filename = "f:\\test\\Cam_02\\" + folder + "stoyka02-.png"
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
			b.filename = "f:\\test\\Cam_03\\" + folder + "stoyka03-.png"
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
			b.filename = "f:\\test\\Cam_04\\" + folder + "stoyka04-.png"
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
			b.filename = "f:\\test\\Cam_05\\" + folder + "stoyka05-.png"
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
			b.filename = "f:\\test\\Cam_06\\" + folder + "stoyka06-.png"
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
			b.filename = "f:\\test\\Cam_07\\" + folder + "stoyka07-.png"
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
			b.filename = "f:\\test\\Cam_08\\" + folder + "stoyka08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b-- close the output file - this will also get rid of
--the reference to the bitmap value and free its memory. 

		)
		------------------------------------------------------------------
		------------------------------------------------------------------
		------------------------------------------------------------------
		------------------------------------------------------------------
		------------------------------------------------------------------
	button btn7 "All-render" pos:[200,326] width:90 height:62
	on btn7 pressed  do
	(
print ("start render")	
$hider.renderable = off		
bipObj = $'Bip01 Pelvis'
bip = bipObj.controller
max motion mode   
	b=bitmap b_width.value b_height.value 
	biped.LoadBipFile bip (CSPATH+"hero_walk-new-stoyka.bip") 
	renderFrames=#{45,50,55,60,65,70}
	folder="1walk\\"

for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
	at time i --set time context
			render  camera:$camera01 to:b 
			b.filename = Main_path + "Cam_01\\" + folder + "cam01-.png"
			save b frame:i	-- save each frame as you advance
	at time i 
			render  camera:$camera02_frR to:b 
			b.filename = Main_path + "Cam_02\\" + folder + "cam02-.png"
			save b frame:i
	at time i 
		--$hider.renderable = on
			render  camera:$camera03_right to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_03\\" + folder + "cam03-.png"
			save b frame:i-- save each frame as you advance
	--$hider.renderable = off
	at time i 
			render  camera:$camera04 to:b --progressbar: true-- render to bitmap frame
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
		--$hider.renderable = on
			render  camera:$camera07_left to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_07\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
	--$hider.renderable = off
	at time i 
			render  camera:$camera08 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
		)	
	)
bipObj = $'Bip01 Pelvis'
bip = bipObj.controller
max motion mode   
b=bitmap b_width.value b_height.value 
biped.LoadBipFile bip (CSPATH+"hero_hit.bip")
renderFrames=#{1,2,4}
folder="2hit_sw\\"
	for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
	at time i --set time context
			render  camera:$camera01 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_01\\" + folder + "hit_sw_cam01-.png"
			save b frame:i	-- save each frame as you advance
	at time i 
			render  camera:$camera02_frR to:b 
			b.filename = Main_path + "Cam_02\\" + folder + "hit_sw_cam02-.png"
			save b frame:i
	at time i 
		$hider.renderable = on
			render  camera:$camera03_right to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_03\\" + folder + "hit_sw_cam03-.png"
			save b frame:i-- save each frame as you advance
		$hider.renderable = off
	at time i 
			render  camera:$camera04 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_04\\" + folder + "hit_sw_cam04-.png"
			save b frame:i-- save each frame as you advance
	at time i 
			render  camera:$camera05_back to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_05\\" + folder + "hit_sw_cam05-.png"
			save b frame:i-- save each frame as you advance
	at time i 
			render  camera:$camera06 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_06\\" + folder + "hit_sw_cam06-.png"
			save b frame:i-- save each frame as you advance
	at time i 
		$hider.renderable = on
			render  camera:$camera07_left to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_07\\" + folder + "hit_sw_cam07-.png"
			save b frame:i-- save each frame as you advance
	$hider.renderable = off
	at time i 
			render  camera:$camera08 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "hit_sw_cam08-.png"
			save b frame:i-- save each frame as you advance
		)	
	)

biped.LoadBipFile bip (CSPATH+"hero_hit_luk.bip") 
renderFrames=#{12,13,14,15}
folder="3hit_luk\\"
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
		$hider.renderable = on
			render  camera:$camera03_right to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_03\\" + folder + "cam03-.png"
			save b frame:i-- save each frame as you advance
		$hider.renderable = off
	at time i 
			render  camera:$camera04 to:b --progressbar: true-- render to bitmap frame
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
		$hider.renderable = on
			render  camera:$camera07_left to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_07\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
	$hider.renderable = off
	at time i 
			render  camera:$camera08 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
		)	
	)
	biped.LoadBipFile bip (CSPATH+"hero_hit_pistol.bip") 
	renderFrames=#{13}
	folder="4_gun\\"
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
		$hider.renderable = on
			render  camera:$camera03_right to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_03\\" + folder + "cam03-.png"
			save b frame:i-- save each frame as you advance
		$hider.renderable = off
	at time i 
			render  camera:$camera04 to:b --progressbar: true-- render to bitmap frame
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
		$hider.renderable = on
			render  camera:$camera07_left to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_07\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
	$hider.renderable = off
	at time i 
			render  camera:$camera08 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
		)	
	)	
	biped.LoadBipFile bip (CSPATH+"hero_hit_mash_gun.bip") 
	renderFrames=#{13}
	folder="5mashine_gun\\"
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
		$hider.renderable = on
			render  camera:$camera03_right to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_03\\" + folder + "cam03-.png"
			save b frame:i-- save each frame as you advance
	$hider.renderable = off
	at time i 
			render  camera:$camera04 to:b --progressbar: true-- render to bitmap frame
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
		$hider.renderable = on
			render  camera:$camera07_left to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_07\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
	$hider.renderable = off
	at time i 
			render  camera:$camera08 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
		)	
	)
	bipObj = $'Bip01 Pelvis'
	bip = bipObj.controller
	--max motion mode   
	biped.LoadBipFile bip (CSPATH+"hero_walk-new-stoyka.bip") 
	renderFrames=#{11}
	folder="0stoyka\\"
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
		$hider.renderable = on
			render  camera:$camera03_right to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_03\\" + folder + "cam03-.png"
			save b frame:i-- save each frame as you advance
		$hider.renderable = off
	at time i 
			render  camera:$camera04 to:b --progressbar: true-- render to bitmap frame
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
		$hider.renderable = on
			render  camera:$camera07_left to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_07\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
		$hider.renderable = off
	at time i 
			render  camera:$camera08 to:b --progressbar: true-- render to bitmap frame
			b.filename = Main_path + "Cam_08\\" + folder + "cam07-.png"
			save b frame:i-- save each frame as you advance
		)	
	)
	close b
	print ("fin")	
	)
	
	
)

