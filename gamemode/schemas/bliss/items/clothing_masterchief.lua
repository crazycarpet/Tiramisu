ITEM.Name = "HL-32 'SPARTA' Exosuit";
ITEM.Class = "clothing_masterchief";
ITEM.Description = "An all around exosuit, good looking, but nothing spectacular. Painted sage green.";
ITEM.Model = "models/masterchief_pack/slow_masterchief.mdl";
ITEM.Purchaseable = true;
ITEM.Price = 1300;
ITEM.ItemGroup = 2;
ITEM.Flags = {
	"armor;130",
	"shieldratio;0.7",
	"bulletarmor;0.5",
	"explosivearmor;1.5",
	"kineticarmor;0.8",
	"rigweight;heavy"
}
function ITEM:Drop(ply)
	
end

function ITEM:Pickup(ply)

	self:Remove();

end

function ITEM:UseItem(ply)

end
