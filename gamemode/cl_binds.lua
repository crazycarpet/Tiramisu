usermessage.Hook( "togglethirdperson", function(um)
	if CAKE.Thirdperson:GetBool() then
		RunConsoleCommand( "rp_thirdperson", "0" )
	else
		RunConsoleCommand( "rp_thirdperson", "1" )
		RunConsoleCommand( "rp_thirdpersondistance", "50" )
	end
end)

usermessage.Hook( "toggleinventory", function(um)
	CAKE.SetActiveTab( "Inventory" )
end)

function CAKE.DrawQuickMenu()
	if QuickMenu then
		QuickMenu:Remove()
		Quickmenu = nil
	end

	QuickMenu = vgui.Create("DFrame")
	QuickMenu:SetSize( ScrW()/4, ScrH() )
	QuickMenu:SetPos( 0, 0 )
	QuickMenu:SetTitle( "" )
	QuickMenu:SetDraggable( false ) -- Draggable by mouse?
	QuickMenu:ShowCloseButton( false ) -- Show the close button?
	QuickMenu.Paint = function()
		derma.SkinHook( "Paint", "QuickMenu", QuickMenu )
	end

	local titlelabel = Label( CAKE.ConVars["MenuTitle"], QuickMenu )
	titlelabel:SetSize( QuickMenu:GetWide() - 25, 40 )
	titlelabel:SetFont( "Tiramisu48Font" )
	titlelabel:SetTextColor(Color(255, 255, 255, 0))
	titlelabel:SetPos( 25, QuickMenu:GetTall() / 6)
	titlelabel.PaintOver = function()
		titlelabel:SetTextColor(Color(255, 255, 255, QuickMenu.FadeAlpha or 255))
	end

	local startpos = QuickMenu:GetTall() / 4 - #CAKE.MenuTabs * 40
	local lastpos = startpos
	for k, v in pairs( CAKE.MenuTabs ) do
		lastpos = lastpos + 40
		local label = vgui.Create( "DButton", QuickMenu )
		label:SetDrawBorder( false )
		label:SetText("")
		label.LabelText = k
		label:SetDrawBackground( false )
		label.DoClick = function()
			CAKE.SetActiveTab(k)
 		end
 		label:SetSize( QuickMenu:GetWide()-10, 28 )
		local normalColor = Color( 255, 255, 255, 0 )
 		label:SetTextColor(Color(255, 255, 255, 0))
		-- label:SetTextColorHovered(CAKE.BaseColor)
 		label:SetPos( 10, lastpos)
 		label.SpecialColor = label:GetTextColor()
 		label.OnCursorEntered = function()
			-- label.SpecialColor = label:GetTextColorHovered()
			label:SetTextColor( normalColor )
 		end
 		label.OnCursorExited = function()
			label.SpecialColor = label:GetTextColor()
			label:SetTextColor( normalColor )
 		end
 		label.Paint = function()
 			derma.SkinHook( "Paint", "QuickMenuLabel", label )
		end
		label.PaintOver = function() end
	end

end

function CAKE.HideQuickMenu()
	if QuickMenu then
		QuickMenu.FadeOut = true
	end
end

function CAKE.EntityIsItem(targ)
	if target and target:GetClass() == "item_prop" then
		return CAKE.ItemData[target:GetNWString("Class")]
	end
end

function GM:ScoreboardShow( )

	CAKE.ContextEnabled = true
	CAKE.MenuOpen = true
	gui.EnableScreenClicker( true )

	CAKE.DrawQuickMenu()

end

function GM:ScoreboardHide( )

	CAKE.MenuOpen = false
	CAKE.ContextEnabled = false
	gui.EnableScreenClicker( false )

	CAKE.HideQuickMenu()
	
end

--Right click trace code.
function GM:GUIMousePressed(mc)
	if mc == MOUSE_RIGHT then
		local distance = 500
		if LocalPlayer():GetNWInt( "TiramisuAdminLevel", 0 ) > 0 then
			distance = 5000
		end
		local ang = gui.ScreenToVector(gui.MouseX(), gui.MouseY())
		local tracedata = {}
		tracedata.start = CAKE.CameraPos
		tracedata.endpos = CAKE.CameraPos+(ang*2000)
		if !CAKE.Thirdperson:GetBool() then
			tracedata.filter = LocalPlayer()
		end
		local trace = util.TraceLine(tracedata)
		
		if game.SinglePlayer() and CAKE.Thirdperson:GetBool() then
			if trace.StartPos:Distance( LocalPlayer():EyePos() ) <= distance then
				local target = trace.Entity
				local submenus = {}
				local ContextMenu = DermaMenu()
				if IsValid( target ) or target:IsWorld() then
					if IsValid( target ) and target:GetClass() == "item_prop" then
						item = CAKE.ItemData[target:GetNWString("Class")]
						for k,v in pairs(item.RightClick or {}) do
							ContextMenu:AddOption(k, function()  LocalPlayer():ConCommand("rp_useitem " ..target:EntIndex().. " " .. v) end)
						end
					end

					for k,v in pairs (RclickTable) do
						if v.Condition and v.Condition(target) then 
							if v.SubMenu then
								if !submenus[ v.SubMenu ] then
									submenus[ v.SubMenu ] = ContextMenu:AddSubMenu( v.SubMenu )
								end
								submenus[ v.SubMenu ]:AddOption(v.Name, function()  v.Click(target, LocalPlayer()) end)
							else
								ContextMenu:AddOption(v.Name, function()  v.Click(target, LocalPlayer()) end)
							end
						end
					end
					
					ContextMenu:Open()
				end
			end
		else
			--This is a quick override I have to do in order to allow selecting yourself in multiplayer, considering traces don't collide with the player.
			local ContextMenu = DermaMenu()
			if trace.StartPos:Distance( LocalPlayer():EyePos() ) <= distance then
				local submenus = {}
				local target = trace.Entity
				if IsValid( target ) or target:IsWorld() then
					if IsValid( target ) and target:GetClass() == "item_prop" then
						item = CAKE.ItemData[target:GetNWString("Class")]
						for k,v in pairs(item.RightClick or {}) do
							ContextMenu:AddOption(k, function()  LocalPlayer():ConCommand("rp_useitem " ..target:EntIndex().. " " .. v) end)
						end
					end

					for k,v in pairs (RclickTable) do
						if v.Condition and v.Condition(target) then 
							if v.SubMenu then
								if !submenus[ v.SubMenu ] then
									submenus[ v.SubMenu ] = ContextMenu:AddSubMenu( v.SubMenu )
								end
								submenus[ v.SubMenu ]:AddOption(v.Name, function() v.Click(target, LocalPlayer()) end)
							else
								ContextMenu:AddOption(v.Name, function() v.Click(target, LocalPlayer()) end)
							end
						end
					end
				end
			end
			ContextMenu:AddSpacer()
			ContextMenu:AddOption("Self:", function()end)
			local submenus = {}
			for k,v in pairs (RclickTable) do
				if v.Condition and v.Condition(LocalPlayer()) then 
					if v.SubMenu then
						if !submenus[ v.SubMenu ] then
							submenus[ v.SubMenu ] = ContextMenu:AddSubMenu( v.SubMenu )
						end
						submenus[ v.SubMenu ]:AddOption(v.Name, function() v.Click(LocalPlayer(), LocalPlayer()) end)
					else
						ContextMenu:AddOption(v.Name, function() v.Click(LocalPlayer(), LocalPlayer()) end)
					end
				end
			end

			ContextMenu:Open()
		end
	elseif mc == MOUSE_LEFT then
		local ang = gui.ScreenToVector(gui.MouseX(), gui.MouseY())
		local tracedata = {}
		tracedata.start = CAKE.CameraPos
		tracedata.endpos = CAKE.CameraPos+(ang*2000)
		tracedata.filter = LocalPlayer()
		local trace = util.TraceLine(tracedata)
		if trace.StartPos:Distance( LocalPlayer():EyePos() ) <= 200 and IsValid(trace.Entity) then
			RunConsoleCommand("rp_pickup", trace.Entity:EntIndex())
		end
	end
end

local CrouchToggle = false
local StayCrouch = false
function GM:PlayerBindPress( ply, bind, pressed )

	if( LocalPlayer( ):GetNWInt( "charactercreate" ) == 1 ) then
	
		if( bind == "+forward" or bind == "+back" or bind == "+moveleft" or bind == "+moveright" or bind == "+jump" or bind == "+duck" ) then return true end -- Disable ALL movement keys.
	
	end

	if bind == "+duck" and CAKE.StayCrouched:GetBool() and !ply:InVehicle() then

		if StayCrouch then StayCrouch = !StayCrouch return true end

		if CrouchToggle then
			RunConsoleCommand( "-duck" )
		else
			RunConsoleCommand( "+duck" )
		end

		CrouchToggle = !CrouchToggle
		StayCrouch = true
		return true
		
	end


end
	
--Disables default HUD elements
function GM:HUDShouldDraw( name )

	if name == "CHudHealth" or name == "CHudSuitPower" or name == "CHudBattery" or name == "CHudCrosshair" or name == "CHudAmmo" or name == "CHudSecondaryAmmo" or name == "CHudChat" or name == "CHudDeathNotice" or name == "CHudWeaponSelection" or name == "CHudDamageIndicator" or name == "CHudZoom" or name == "CHudPoisonDamageIndicator" then
		return false
	end

	return true

end

--Disables dead notices
function GM:DrawDeathNotice()
	return
end

function GM:HUDDrawTargetID()
     return false
end

function GM:HUDDrawScoreBoard()
	return false
end