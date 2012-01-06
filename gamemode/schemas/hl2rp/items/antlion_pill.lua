ITEM.Name = "Antlion Pill"
ITEM.Class = "antlion_pill"
ITEM.Description = "Use this to become an antlion"
ITEM.Model = "models/props_lab/jar01b.mdl"
ITEM.Purchaseable = false
ITEM.Price = 3
ITEM.ItemGroup = 1

function ITEM:Drop(ply)

end

function ITEM:Pickup(ply)

	self:Remove()

end

function ITEM:UseItem(ply)

	ply:RemoveClothing()
	CAKE.RemoveAllGear( ply )
	ply:SetSpecialModel( "models/AntLion.mdl" )
	ply:GiveItem( "antlion_pill" )
	self:Remove()

end
