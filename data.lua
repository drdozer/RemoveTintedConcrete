local suffix = '-refined-concrete'

local to_remove = {}
local to_remove_count = 0
for name, _ in pairs(data.raw.tile) do 
    if name:find(suffix, 1, true) ~= nil then
        table.insert(to_remove, name)
        to_remove_count = to_remove_count + 1
    end
end

log("Removing " .. to_remove_count .. " tiles")

for _, t in pairs(to_remove) do
    data.raw.tile[t] = nil
end
