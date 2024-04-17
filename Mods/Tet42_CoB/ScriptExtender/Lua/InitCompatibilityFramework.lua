modGuid = "31608458-e5e4-426c-bd3b-43ecbaba30d6"
subClassGuid = "7cf29d4a-3790-4cdb-9a3e-4136a4a0484b"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    Tet42_CoB = {
      modGuid = modGuid,
      subClassGuid = subClassGuid,
      class = "bard",
      subClassName = "Tet42_CoB"
    }
  }

  local function OnStatsLoaded()
    Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
  end

  Ext.Events.StatsLoaded:Subscribe(OnStatsLoaded)
end