--------set Render for animals--------------
--------------------------------------------
createDialog unnamedRollout width:162 height:400
clearListener()
--hideByCategory.bones = true
rollout unnamedRollout "Render fr4..12" width:162 height:400
(	
	spinner b_width  "bmp  width:" pos:[9,330] width:142 height:34 range:[0,1000,100]
	spinner b_height "bmp height:" pos:[9,350] width:142 height:34 range:[0,1000,100]
	
	button get_size "get_size" pos:[26,280] width:110 height:42 
	on get_size pressed  do(
		b_width.value = renderWidth
		b_height.value = renderHeight
		)
	checkbox myCheckBox "Hide Bones " pos:[26,380] triState:0
		on myCheckBox changed theState do (
			
			if myCheckBox.checked  then (
				hideByCategory.bones =true )
			else(	hideByCategory.bones = false)
			
		)
		
	
	button btn1 "Walk_render-4..11" pos:[8,14] width:143 height:42
	on btn1 pressed  do
(	
-- b=bitmap 100 100 -- filename: fname --create a new bitmap
	b=bitmap b_width.value b_height.value

	---renderFrames=#{45,50,55,60,65,70}-- specify frames to render
	renderFrames=#{4..11}--bear walk

	--folder="1walk\\"
	folder=""
	walk = "\\walk_unit"
--rendTimeType = 4 
--renderFrames=rendTimeType.count-- specify frames to render
--print rendTimeType.count

for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b --progressbar: true-- render to bitmap frame
			b.filename = "f:\\test"+walk+"\\Cam_01\\" + folder + "cam01-.png"
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
			b.filename = "f:\\test"+walk+"\\Cam_02\\" + folder + "cam02-.png"
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
			b.filename = "f:\\test"+walk+"\\Cam_03\\" + folder + "cam03-.png"
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
			b.filename = "f:\\test"+walk+"\\Cam_04\\" + folder + "cam04-.png"
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
			b.filename = "f:\\test"+walk+"\\Cam_05\\" + folder + "cam05-.png"
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
			b.filename = "f:\\test"+walk+"\\Cam_06\\" + folder + "cam06-.png"
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
			b.filename = "f:\\test"+walk+"\\Cam_07\\" + folder + "cam07-.png"
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
			b.filename = "f:\\test"+walk+"\\Cam_08\\" + folder + "cam08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b-- close the output file - this will also get rid of
--the reference to the bitmap value and free its memory. 




	)
	button btn2 "hit_kaban15..17" pos:[8,64] width:144 height:42
	on btn2 pressed  do
	(
		
--b=bitmap 100 100 -- filename: fname --create a new bitmap
	b=bitmap b_width.value b_height.value


renderFrames=#{15..17}-- specify frames to render
--folder="2hit_sw\\"
		folder=""
hit_unit = "\\hit_unit"
--rendTimeType = 4 
--renderFrames=rendTimeType.count-- specify frames to render
--print rendTimeType.count

for i= 1 to renderFrames.count do--loop though renderFrames
(
	if renderFrames[i] then--if supposed to render frame...
		(
			at time i--set time context
			render  camera:$camera01 to:b -- render to bitmap frame
			b.filename = "f:\\test"+hit_unit+"\\Cam_01\\" + folder + "hit_sw_cam01-.png"
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
			b.filename = "f:\\test"+hit_unit+"\\Cam_02\\" + folder + "hit_sw_cam02-.png"
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
			b.filename = "f:\\test"+hit_unit+"\\Cam_03\\" + folder + "hit_sw_cam03-.png"
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
			b.filename = "f:\\test"+hit_unit+"\\Cam_04\\" + folder + "hit_sw_cam04-.png"
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
			b.filename = "f:\\test"+hit_unit+"\\Cam_05\\" + folder + "hit_sw_cam05-.png"
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
			b.filename = "f:\\test"+hit_unit+"\\Cam_06\\" + folder + "hit_sw_cam06-.png"
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
			b.filename = "f:\\test"+hit_unit+"\\Cam_07\\" + folder + "hit_sw_cam07-.png"
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
			b.filename = "f:\\test"+hit_unit+"\\Cam_08\\" + folder + "hit_sw_cam08-.png"
			save b frame:i-- save each frame as you advance
		)-- if you save AFTER the loop,
	-- just the last frame is saved.
)

close b
		)
		
	button btn3 "hit_luk" pos:[8,116] width:144 height:42
	on btn3 pressed  do
	(
		b=bitmap 100 100 -- filename: fname --create a new bitmap
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
	(b=bitmap 100 100 -- filename: fname --create a new bitmap
renderFrames=#{13}-- specify frames to render

--rendTimeType = 4 
--renderFrames=rendTimeType.count-- specify frames to render
--print rendTimeType.count
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
		b=bitmap 100 100 -- filename: fname --create a new bitmap
renderFrames=#{13}-- specify frames to render
folder="5mashine_gun\\"
--rendTimeType = 4 
--renderFrames=rendTimeType.count-- specify frames to render
--print rendTimeType.count

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
		
		
		
)
