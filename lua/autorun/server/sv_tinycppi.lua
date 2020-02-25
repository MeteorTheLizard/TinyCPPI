--Made by MrRangerLP

if SERVER then
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

	hook.Add("PlayerSpawnedEffect","TinyCPPI_Effect",function(ply,_,ent)
		ent:SetNWEntity("my_owner",ply)
	end)

	hook.Add("PlayerSpawnedNPC","TinyCPPI_NPC",function(ply,ent)
		ent:SetNWEntity("my_owner",ply)
	end)

	hook.Add("PlayerSpawnedProp","TinyCPPI_Prop",function(ply,_,ent)
		ent:SetNWEntity("my_owner",ply)
	end)

	hook.Add("PlayerSpawnedRagdoll","TinyCPPI_Ragdoll",function(ply,model,ent)
		ent:SetNWEntity("my_owner",ply)
	end)

	hook.Add("PlayerSpawnedSENT","TinyCPPI_SENT",function(ply,ent)
		ent:SetNWEntity("my_owner",ply)
	end)

	hook.Add("PlayerSpawnedSWEP","TinyCPPI_SWEP",function(ply,ent)
		ent:SetNWEntity("my_owner",ply)
	end)

	hook.Add("PlayerSpawnedVehicle","TinyCPPI_Vehicle",function(ply,ent)
		ent:SetNWEntity("my_owner",ply)
	end)
end
