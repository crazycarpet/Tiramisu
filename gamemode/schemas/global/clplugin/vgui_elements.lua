CLPLUGIN.Name = "VGUI Elements"
CLPLUGIN.Author = "FNox, Garry, Overv, et al"

--Credits for Overv, who posted this on the WAYWO thread. I just added the pretentious line crap

function CLPLUGIN.Init()
	
end

local PANEL = {} 
   
local matBlurScreen = Material( "pp/blurscreen" ) 
   
AccessorFunc( PANEL, "m_bDraggable",            "Draggable",            FORCE_BOOL )
AccessorFunc( PANEL, "m_bSizable",                      "Sizable",                      FORCE_BOOL )
AccessorFunc( PANEL, "m_bScreenLock",           "ScreenLock",           FORCE_BOOL )
AccessorFunc( PANEL, "m_bDeleteOnClose",        "DeleteOnClose",        FORCE_BOOL )
 
AccessorFunc( PANEL, "m_bBackgroundBlur",       "BackgroundBlur",       FORCE_BOOL )
 
 
/*---------------------------------------------------------
 
---------------------------------------------------------*/
function PANEL:Init()
 
        self:SetFocusTopLevel( true )
        
        self.btnClose = vgui.Create( "DSysButton", self )
        self.btnClose:SetType( "close" )
        self.btnClose.DoClick = function ( button ) self:Close() end
        self.btnClose:SetDrawBorder( false )
        self.btnClose:SetDrawBackground( false )
        self.Color = CAKE.BaseColor
        
        self.lblTitle = vgui.Create( "DLabel", self )
        
        self:SetDraggable( true )
        self:SetSizable( false )
        self:SetScreenLock( true )
        self:SetDeleteOnClose( true )
        self:SetTitle( "#Untitled DFrame" )
        
        // This turns off the engine drawing
        self:SetPaintBackgroundEnabled( false )
        self:SetPaintBorderEnabled( false )
        
        self.m_fCreateTime = SysTime()
 
end

function PANEL:SetColor( color )

    self.Color = color

end
 
/*---------------------------------------------------------
 
---------------------------------------------------------*/
function PANEL:ShowCloseButton( bShow )
 
        self.btnClose:SetVisible( bShow )
 
end
 
/*---------------------------------------------------------
 
---------------------------------------------------------*/
function PANEL:SetTitle( strTitle )
 
        self.lblTitle:SetText( strTitle )
 
end
 
 
/*---------------------------------------------------------
 
---------------------------------------------------------*/
function PANEL:Close()
 
        self:SetVisible( false )
 
        if ( self:GetDeleteOnClose() ) then
                self:Remove()
        end
 
end
 
 
/*---------------------------------------------------------
 
---------------------------------------------------------*/
function PANEL:Center()
 
        self:InvalidateLayout( true )
        self:SetPos( ScrW()/2 - self:GetWide()/2, ScrH()/2 - self:GetTall()/2 )
 
end
 
 
/*---------------------------------------------------------
 
---------------------------------------------------------*/
function PANEL:Think()
 
        if (self.Dragging) then
        
                local x = gui.MouseX() - self.Dragging[1]
                local y = gui.MouseY() - self.Dragging[2]
 
                // Lock to screen bounds if screenlock is enabled
                if ( self:GetScreenLock() ) then
                
                        x = math.Clamp( x, 0, ScrW() - self:GetWide() )
                        y = math.Clamp( y, 0, ScrH() - self:GetTall() )
                
                end
                
                self:SetPos( x, y )
        
        end
        
        
        if ( self.Sizing ) then
        
                local x = gui.MouseX() - self.Sizing[1]
                local y = gui.MouseY() - self.Sizing[2] 
        
                self:SetSize( x, y )
                self:SetCursor( "sizenwse" )
                return
        
        end
        
        if ( self.Hovered &&
         self.m_bSizable &&
             gui.MouseX() > (self.x + self:GetWide() - 20) &&
             gui.MouseY() > (self.y + self:GetTall() - 20) ) then       
 
                self:SetCursor( "sizenwse" )
                return
                
        end
        
        if ( self.Hovered && self:GetDraggable() ) then
                self:SetCursor( "sizeall" )
        end
        
end
 
local x, y
local lastpos
local color

function PANEL:Paint()  

    x, y = self:ScreenToLocal( 0, 0 ) 
    lastpos = 0
    color = self.Color or CAKE.BaseColor or Color( 100, 100, 115, 150 )
       
    // Background 
    surface.SetMaterial( matBlurScreen ) 
    surface.SetDrawColor( 255, 255, 255, 255 ) 
       
    matBlurScreen:SetMaterialFloat( "$blur", 5 ) 
    render.UpdateScreenEffectTexture() 
       
    surface.DrawTexturedRect( x, y, ScrW(), ScrH() ) 

    if ( self.m_bBackgroundBlur ) then
        Derma_DrawBackgroundBlur( self, self.m_fCreateTime )
    end
       
    surface.SetDrawColor( color.r, color.g, color.b, 150 ) 
    surface.DrawRect( x, y, ScrW(), ScrH() ) 

    // Pretentious line bullshit :P
    x = math.floor( self:GetWide() / 5 )
    y = math.floor( self:GetTall() / 5 )

    surface.SetDrawColor( 50, 50, 50, 80 ) 

    for i = 1, y + 5 do
        surface.DrawLine( 0, ( i * 5 ) + 23, (y * 5) - (i * 5), self:GetTall() + 23 )
    end

    for i = 0, x + 5 do
        surface.DrawLine( i * 5 , 23, self:GetWide(), ( x * 5 ) - ( i * 5 ) + 23 )
    end

    // and some gradient shit for additional overkill

    for i = 1, ( y + 5 ) do
        surface.SetDrawColor( math.Clamp( color.r - 50, 0, 255 ), math.Clamp( color.g - 50,0, 255 ), math.Clamp( color.b - 50, 0, 255 ), Lerp( i / ( ( y + 5 ) ), 0 , 245 ) ) 
        surface.DrawRect( 0, ( i * 5 ) , self:GetWide(), 5 )
    end

    // Border 
    surface.SetDrawColor( math.Clamp( color.r - 50, 0, 255 ), math.Clamp( color.g - 50,0, 255 ), math.Clamp( color.b - 50, 0, 255 ), 255 ) 
    surface.DrawOutlinedRect( 0, 0, self:GetWide(), self:GetTall() )
    surface.DrawLine( 0, 23, self:GetWide(), 23 )
       
    return true 
end

 
/*---------------------------------------------------------
 
---------------------------------------------------------*/
function PANEL:OnMousePressed()
 
        if ( self.m_bSizable ) then
        
                if ( gui.MouseX() > (self.x + self:GetWide() - 20) &&
                        gui.MouseY() > (self.y + self:GetTall() - 20) ) then                    
        
                        self.Sizing = { gui.MouseX() - self:GetWide(), gui.MouseY() - self:GetTall() }
                        self:MouseCapture( true )
                        return
                end
                
        end
        
        if ( self:GetDraggable() ) then
                self.Dragging = { gui.MouseX() - self.x, gui.MouseY() - self.y }
                self:MouseCapture( true )
                return
        end
        
 
 
end
 
 
/*---------------------------------------------------------
 
---------------------------------------------------------*/
function PANEL:OnMouseReleased()
 
        self.Dragging = nil
        self.Sizing = nil
        self:MouseCapture( false )
 
end
 
 
/*---------------------------------------------------------
 
---------------------------------------------------------*/
function PANEL:PerformLayout()
 
        derma.SkinHook( "Layout", "Frame", self )
 
end
 
 
/*---------------------------------------------------------
 
---------------------------------------------------------*/
function PANEL:IsActive()
 
        if ( self:HasFocus() ) then return true end
        if ( vgui.FocusedHasParent( self ) ) then return true end
        
        return false
 
end

derma.DefineControl( "DFrameTransparent", "Cool transparent DFrame", PANEL, "EditablePanel" )

PANEL = {}
 
AccessorFunc( PANEL, "m_fAnimSpeed",    "AnimSpeed" )
AccessorFunc( PANEL, "Entity",                  "Entity" )
AccessorFunc( PANEL, "vCamPos",                 "CamPos" )
AccessorFunc( PANEL, "fFOV",                    "FOV" )
AccessorFunc( PANEL, "vLookatPos",              "LookAt" )
AccessorFunc( PANEL, "colAmbientLight", "AmbientLight" )
AccessorFunc( PANEL, "colColor",                "Color" )
AccessorFunc( PANEL, "bAnimated",               "Animated" )
 
 
/*---------------------------------------------------------
   Name: Init
---------------------------------------------------------*/
function PANEL:Init()

        self.LastPaint = 0
        self.DirectionalLight = {}
        
        self:SetCamPos( LocalPlayer():GetForward() * 80 + Vector( 0, 0, 40 ) )
        local plyangle = LocalPlayer():GetAngles()
        plyangle:RotateAroundAxis(plyangle:Up(), 180) 
        self:SetCamAngle(  plyangle )
        self:SetFOV( 70 )
        
        self:SetText( "" )
        self:SetAnimSpeed( 0.5 )
        self:SetAnimated( false )
        
        self:SetAmbientLight( Color( 50, 50, 50 ) )
        
        self:SetDirectionalLight( BOX_TOP, Color( 255, 255, 255 ) )
        self:SetDirectionalLight( BOX_FRONT, Color( 255, 255, 255 ) )
        
        self:SetColor( Color( 255, 255, 255, 255 ) )
 
end
 
/*---------------------------------------------------------
   Name: SetDirectionalLight
---------------------------------------------------------*/
function PANEL:SetDirectionalLight( iDirection, color )
        self.DirectionalLight[iDirection] = color
end

function PANEL:SetCamAngle( angle )
        self.CamAngle = angle
end

function PANEL:GetCamAngle()
        return self.CamAngle or Angle( 0, 0, 0 )
end
 
function PANEL:StartDraw()

        CAKE.ForceDraw = true
        
        // Note: Not in menu dll
        if ( !ClientsideModel ) then return end
        
        LocalPlayer():SetNoDraw( true )

        if CAKE.ClothingTbl then
            for k, v in pairs( CAKE.ClothingTbl ) do
                if ValidEntity( v ) then
                    v:SetNoDraw( true )
                    v.ForceDraw = true
                end
            end
        end

        if CAKE.Gear then
            for _, bone in pairs( CAKE.Gear ) do
                if bone then
                    for k, v in pairs( bone ) do
                        if ValidEntity( v.entity ) then
                            v.entity:SetNoDraw( true )
                        end
                    end
                end
            end
        end
        
end

function PANEL:EndDraw()
        
        // Note: Not in menu dll
        if ( !ClientsideModel ) then return end
        
        LocalPlayer():SetNoDraw( false )

        if CAKE.ClothingTbl then
            for k, v in pairs( CAKE.ClothingTbl ) do
                if ValidEntity( v ) then
                    v:SetNoDraw( false )
                end
            end
        end

        if CAKE.Gear then
            for _, bone in pairs( CAKE.Gear ) do
                if bone then
                    for k, v in pairs( bone ) do
                        if ValidEntity( v.entity ) then
                            v.entity:SetNoDraw( false )
                        end
                    end
                end
            end
        end
        
end
 
/*---------------------------------------------------------
   Name: OnMousePressed
---------------------------------------------------------*/
function PANEL:Paint()
        
        self:StartDraw()

        if ( !IsValid( LocalPlayer() ) ) then return end
        
        local x, y = self:LocalToScreen( 0, 0 )
        
        cam.Start3D( LocalPlayer():GetPos() + self.vCamPos, self.CamAngle, 70, x, y, self:GetWide(), self:GetTall() )
            cam.IgnoreZ( true )
            
            render.SuppressEngineLighting( true )
            render.SetLightingOrigin( LocalPlayer():GetPos() )
            render.ResetModelLighting( self.colAmbientLight.r/255, self.colAmbientLight.g/255, self.colAmbientLight.b/255 )
            render.SetColorModulation( self.colColor.r/255, self.colColor.g/255, self.colColor.b/255 )
            render.SetBlend( self.colColor.a/255 )
            
            for i=0, 6 do
                    local col = self.DirectionalLight[ i ]
                    if ( col ) then
                            render.SetModelLighting( i, col.r/255, col.g/255, col.b/255 )
                    end
            end
                    
            LocalPlayer():DrawModel()


            if CAKE.ClothingTbl then
                for k, v in pairs( CAKE.ClothingTbl ) do
                    if ValidEntity( v ) then
                        v:DrawModel()
                    end
                end
            end

            if CAKE.Gear then
                for _, bone in pairs( CAKE.Gear ) do
                    if bone then
                        for k, v in pairs( bone ) do
                            if ValidEntity( v.entity ) then
                                v.entity:DrawModel()
                            end
                        end
                    end
                end
            end

            render.SuppressEngineLighting( false )
            cam.IgnoreZ( false )
        cam.End3D()
        
        self.LastPaint = RealTime()

        self:EndDraw()
        
end

local angle
local distance = -80
function PANEL:OnCursorMoved(x, y)
    if input.IsMouseDown( MOUSE_LEFT ) then
        angle = LocalPlayer():GetAngles()
        angle:RotateAroundAxis(angle:Up(), math.NormalizeAngle( 180 - ( x - self:GetWide()/ 2 ) / 2 ) )
        angle:RotateAroundAxis(angle:Right(), math.NormalizeAngle( 0 - ( y - self:GetTall()/ 2 ) / 2 ) )
        self:SetCamPos( angle:Forward() * distance + Vector( 0, 0, 40))
        self:SetCamAngle( angle )
    elseif input.IsMouseDown( MOUSE_RIGHT ) then
        distance =  ( y - self:GetTall()/ 2 ) + -80
        self:SetCamPos( Vector( 0, 0, 40) + self.CamAngle:Forward() * distance )
    end
end

derma.DefineControl( "PlayerPanel", "A panel containing the player's model", PANEL, "DButton" )

PANEL = {}
 
AccessorFunc( PANEL, "m_bPaintBackground",              "PaintBackground" )
AccessorFunc( PANEL, "m_bDisabled",                     "Disabled" )
AccessorFunc( PANEL, "m_bgColor",               "BackgroundColor" )
 
Derma_Hook( PANEL, "Paint", "Paint", "Panel" )
Derma_Hook( PANEL, "ApplySchemeSettings", "Scheme", "Panel" )
Derma_Hook( PANEL, "PerformLayout", "Layout", "Panel" )
 
/*---------------------------------------------------------
        
---------------------------------------------------------*/
function PANEL:Init()
 
        self:SetPaintBackground( true )
        
        // This turns off the engine drawing
        self:SetPaintBackgroundEnabled( false )
        self:SetPaintBorderEnabled( false )
 
end

function PANEL:SetColor( color )
    self.Color = color
end

function PANEL:GetColor()
    return self.Color or CAKE.BaseColor or Color( 100, 100, 115, 150 )
end

function PANEL:Paint()

        if ( !IsValid( LocalPlayer() ) ) then return end
        
        local color = self:GetColor()
        local x, y = self:LocalToScreen( 0, 0 )

        // Pretentious line bullshit :P
        x = math.floor( self:GetWide() / 5 )
        y = math.floor( self:GetTall() / 5 )

        surface.SetDrawColor( 50, 50, 50, 80 ) 

        for i = 1, y + 5 do
            surface.DrawLine( 0, ( i * 5 ) + 23, (y * 5) - (i * 5), self:GetTall() + 23 )
        end

        for i = 0, x + 5 do
            surface.DrawLine( i * 5 , 23, self:GetWide(), ( x * 5 ) - ( i * 5 ) + 23 )
        end

        // and some gradient shit for additional overkill

        for i = 0, ( y + 5 ) do
            surface.SetDrawColor( math.Clamp( color.r - 50, 0, 255 ), math.Clamp( color.g - 50,0, 255 ), math.Clamp( color.b - 50, 0, 255 ), Lerp( i / ( ( y + 5 ) ), color.a , 255 ) ) 
            surface.DrawRect( 0, ( i * 5 ) , self:GetWide(), 5 )
        end

        // Border 
        surface.SetDrawColor( math.Clamp( color.r - 50, 0, 255 ), math.Clamp( color.g - 50,0, 255 ), math.Clamp( color.b - 50, 0, 255 ), 255 ) 
        surface.DrawOutlinedRect( 0, 0, self:GetWide(), self:GetTall() )

end
 
/*---------------------------------------------------------
        
---------------------------------------------------------*/
function PANEL:SetDisabled( bDisabled )
 
        self.m_bDisabled = bDisabled
        
        if ( bDisabled ) then
                self:SetAlpha( 75 )
                self:SetMouseInputEnabled( false )
        else
                self:SetAlpha( 255 )
                self:SetMouseInputEnabled( true )
        end
 
end
 
 
derma.DefineControl( "DPanelTransparent", "", PANEL, "Panel" )

--Taken from derma_utils, meant to be used with the cute little frames
/*
        Display a simple message box.
        
        CAKE.Message( "Hey Some Text Here!!!", "Message Title (Optional)", "Button Text (Optional)" )
        
*/
function CAKE.Message( strText, strTitle, strButtonText, color )
 
        local Window = vgui.Create( "DFrameTransparent" )
                Window:SetTitle( strTitle or "Message" )
                Window:SetDraggable( false )
                Window:ShowCloseButton( false )
                if color then
                    Window:SetColor( color )
                else
                    Window:SetColor( CAKE.BaseColor )
                end
                
        local InnerPanel = vgui.Create( "DPanel", Window )
        
        local Text = vgui.Create( "DLabel", InnerPanel )
                Text:SetText( strText or "Message Text" )
                Text:SizeToContents()
                Text:SetContentAlignment( 5 )
                Text:SetTextColor( color_white )
                
        local ButtonPanel = vgui.Create( "DPanel", Window )
        ButtonPanel:SetTall( 30 )
                
        local Button = vgui.Create( "DButton", ButtonPanel )
                Button:SetText( strButtonText or "OK" )
                Button:SizeToContents()
                Button:SetTall( 20 )
                Button:SetWide( Button:GetWide() + 20 )
                Button:SetPos( 5, 5 )
                Button.DoClick = function() Window:Close() end
                
        ButtonPanel:SetWide( Button:GetWide() + 10 )
        
        local w, h = Text:GetSize()
        
        Window:SetSize( w + 50, h + 25 + 45 + 10 )
        Window:Center()
        
        InnerPanel:StretchToParent( 5, 25, 5, 45 )
        
        Text:StretchToParent( 5, 5, 5, 5 )      
        
        ButtonPanel:CenterHorizontal()
        ButtonPanel:AlignBottom( 8 )
        
        Window:MakePopup()
 
end

/*
        Ask a question with multiple answers..
        
        CAKE.Query( "Would you like me to punch you right in the face?", "Question!",
                                                "Yesss",        function() MsgN( "Pressed YES!") end, 
                                                "Nope!",        function() MsgN( "Pressed Nope!") end, 
                                                "Cancel",       function() MsgN( "Cancelled!") end )
                
*/
function CAKE.Query( strText, strTitle, ... )
 
        local Window = vgui.Create( "DFrameTransparent" )
                Window:SetTitle( strTitle or "Message Title (First Parameter)" )
                Window:SetDraggable( false )
                Window:ShowCloseButton( false )
                Window:SetColor( Color( 140, 100, 100) )
                
        local InnerPanel = vgui.Create( "DPanel", Window )
        
        local Text = vgui.Create( "DLabel", InnerPanel )
                Text:SetText( strText or "Message Text (Second Parameter)" )
                Text:SizeToContents()
                Text:SetContentAlignment( 5 )
                Text:SetTextColor( color_white )
 
        local ButtonPanel = vgui.Create( "DPanel", Window )
        ButtonPanel:SetTall( 30 )
 
        // Loop through all the options and create buttons for them.
        local NumOptions = 0
        local x = 5
        for k=1, 8, 2 do
                
                if ( arg[k] == nil ) then break end
                
                local Text = arg[k]
                local Func = arg[k+1] or function() end
        
                local Button = vgui.Create( "DButton", ButtonPanel )
                        Button:SetText( Text )
                        Button:SizeToContents()
                        Button:SetTall( 20 )
                        Button:SetWide( Button:GetWide() + 20 )
                        Button.DoClick = function() Window:Close(); Func() end
                        Button:SetPos( x, 5 )
                        
                x = x + Button:GetWide() + 5
                        
                ButtonPanel:SetWide( x ) 
                NumOptions = NumOptions + 1
        
        end
 
        
        local w, h = Text:GetSize()
        
        w = math.max( w, ButtonPanel:GetWide() )
        
        Window:SetSize( w + 50, h + 25 + 45 + 10 )
        Window:Center()
        
        InnerPanel:StretchToParent( 5, 25, 5, 45 )
        
        Text:StretchToParent( 5, 5, 5, 5 )      
        
        ButtonPanel:CenterHorizontal()
        ButtonPanel:AlignBottom( 8 )
        
        Window:MakePopup()
        
        if ( NumOptions == 0 ) then
        
                Window:Close()
                Error( "CAKE.Query: Created Query with no Options!?" )
        
        end
 
end
 
 
/*
        Request a string from the user
        
        CAKE.StringRequest( "Question", 
                                        "What Is Your Favourite Color?", 
                                        "Type your answer here!", 
                                        function( strTextOut ) CAKE.Message( "Your Favourite Color Is: " .. strTextOut ) end,
                                        function( strTextOut ) CAKE.Message( "You pressed Cancel!" ) end,
                                        "Okey Dokey", 
                                        "Cancel" )
        
*/
function CAKE.StringRequest( strTitle, strText, strDefaultText, fnEnter, fnCancel, strButtonText, strButtonCancelText, color )
 
        local Window = vgui.Create( "DFrameTransparent" )
                Window:SetTitle( strTitle or "Message Title (First Parameter)" )
                Window:SetDraggable( false )
                Window:ShowCloseButton( false )
                if color then
                    Window:SetColor( color )
                else
                    Window:SetColor( CAKE.BaseColor )
                end
                
        local InnerPanel = vgui.Create( "DPanel", Window )
        
        local Text = vgui.Create( "DLabel", InnerPanel )
                Text:SetText( strText or "Message Text (Second Parameter)" )
                Text:SizeToContents()
                Text:SetContentAlignment( 5 )
                Text:SetTextColor( color_white )
                
        local TextEntry = vgui.Create( "DTextEntry", InnerPanel )
                TextEntry:SetText( strDefaultText or "" )
                TextEntry.OnEnter = function() Window:Close() fnEnter( TextEntry:GetValue() ) end
                
        local ButtonPanel = vgui.Create( "DPanel", Window )
        ButtonPanel:SetTall( 30 )
                
        local Button = vgui.Create( "DButton", ButtonPanel )
                Button:SetText( strButtonText or "OK" )
                Button:SizeToContents()
                Button:SetTall( 20 )
                Button:SetWide( Button:GetWide() + 20 )
                Button:SetPos( 5, 5 )
                Button.DoClick = function() Window:Close() fnEnter( TextEntry:GetValue() ) end
                
        local ButtonCancel = vgui.Create( "DButton", ButtonPanel )
                ButtonCancel:SetText( strButtonCancelText or "Cancel" )
                ButtonCancel:SizeToContents()
                ButtonCancel:SetTall( 20 )
                ButtonCancel:SetWide( Button:GetWide() + 20 )
                ButtonCancel:SetPos( 5, 5 )
                ButtonCancel.DoClick = function() Window:Close() if ( fnCancel ) then fnCancel( TextEntry:GetValue() ) end end
                ButtonCancel:MoveRightOf( Button, 5 )
                
        ButtonPanel:SetWide( Button:GetWide() + 5 + ButtonCancel:GetWide() + 10 )
        
        local w, h = Text:GetSize()
        w = math.max( w, 400 ) 
        
        Window:SetSize( w + 50, h + 25 + 75 + 10 )
        Window:Center()
        
        InnerPanel:StretchToParent( 5, 25, 5, 45 )
        
        Text:StretchToParent( 5, 5, 5, 35 )     
        
        TextEntry:StretchToParent( 5, nil, 5, nil )
        TextEntry:AlignBottom( 5 )
        
        TextEntry:RequestFocus()
        TextEntry:SelectAllText( true )
        
        ButtonPanel:CenterHorizontal()
        ButtonPanel:AlignBottom( 8 )
        
        Window:MakePopup()
 
end