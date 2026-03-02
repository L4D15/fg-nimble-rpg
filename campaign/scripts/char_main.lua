
function onInit()

end


-- Listen for anything dropped into the window
function onDrop(x, y, draginfo)
    if draginfo.isType("shortcut") then
        local sClass, sRecord = draginfo.getShortcutData()
        
        if sClass == "reference_ancestry" then
            onAncestryDropped(sClass, sRecord)
            -- Return true so FG know we have processed this event
            return true
        end
    end
end

function onAncestryDropped(sClass, sRecord)
    local sAncestryName = DB.getValue(DB.getPath(sRecord, "name"), "")

    ancestry.setValue(sAncestryName)
    ancestrylink.setValue(sClass, sRecord)
end