ITEM.Name = "Casual Clothes (6)";
ITEM.Class = "clothing_casual6";
ITEM.Description = "Cool clothes for cool people";
ITEM.Model = "models/Humans/Group02/tale_04.mdl";
ITEM.Purchaseable = true;
ITEM.Price = 100;
ITEM.ItemGroup = 1;
ITEM.Flags = {
	"nogloves"
}
function ITEM:Drop(ply)

end

function ITEM:Pickup(ply)

	self:Remove();

end

function ITEM:UseItem(ply)
	self:Remove();
end
