--WARNING, WARNING, ANDREW MCWATTERS IS THE OWNER OF THIS LUA FILE, PLEASE CLOSE IT IMMEDIATLY IF YOU ARE NOT ANDREW MCWATTERS
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( 'shared.lua' )
/*THIS WORK IS DERIVATIVE OF ANDREW MCWATTERS CODE IN THE PLAYER CLOTHES ADDON. THE FOLLOWING LINES ARE ABSOLUTELY AND IN EVERY WAY OWNED BY ANDREW MCWATTERS, ASSOCIATED:
-LINE #13

USING SAID LINES OUTSIDE OF IT'S ORIGINAL CONTEXT IS A FEDERAL OFFENSE, AND YOU WILL BE PROSECUTED BY ALL THE MIGHT OF THE LAW. THE FBI HAS WARNED YOU!!!
*/

function ENT:Initialize()
	--THE FOLLOWING IS CONFIDENTIAL INFORMATION AND TRADEMARKED TO ANDREW MCWATTERS, DUE TO THE SENSITIVITY OF THIS HIGHLY SOFISTICATED ALGORITHM, IT HAS BEEN OBFUSCATED FOR YOUR VIEWING PLEASURE
	self.Entity:AddEffects( math.ceil( math.log( 2.71828 ) ) | ( math.floor( math.log10( math.pow( 2, 7 ) ) ) * 8 ^ 2 ) * 2 | math.floor( math.log10( math.pow( 2, 7 ) ) ) * ( math.pow( 2, 5 ) * math.pow( 13 + 3, 0.5 ) ) )
	--print( tostring( math.ceil( math.log( 2.71828 ) ) ) .. " " .. tostring( math.floor( math.log10( math.pow( 2, 7 ) ) ) * 8 ^ 2 ) .. " " .. tostring( math.floor( math.log10( math.pow( 2, 7 ) ) ) * ( math.pow( 2, 5 ) * math.pow( 13 + 3, 0.5 ) ) ) * 2 )
	self.Entity:SetRenderMode( RENDERMODE_NORMAL )
end

