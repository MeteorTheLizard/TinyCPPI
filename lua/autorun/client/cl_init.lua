AddCSLuaFile()

if CLIENT then
  	local meta = FindMetaTable("Entity")
	if not meta.CPPIGetOwner then
		function meta:CPPIGetOwner()
			local Owner = self:GetNWEntity("my_owner")
			if Owner then
				return Owner
			end

			return
		end
	end
 end
