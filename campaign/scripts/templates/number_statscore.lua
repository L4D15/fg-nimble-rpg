
function onInit()
    if super and super.onInit then super.onInit(); end
end

function onDoubleClick(x, y)
    return performRoll();
end

function onDragStart(button, x, y, draginfo)
    return performRoll(draginfo);
end

function performRoll(draginfo)
    local nMod = getValue();
    local sStatName = "Stat";
    
    local sMyName = getName(); 
    local sBaseName = string.gsub(sMyName, "_score", ""); 
    local sLabelName = sBaseName .. "_label";

    -- Search a brother element with the given name
    if window[sLabelName] then
        sStatName = window[sLabelName].getValue();
    end

    local rRoll = {
        sType = "ability",
        sDesc = "[ABILITY] " .. sStatName,
        aDice = { "d20" },
        nMod = nMod
    };

    ActionsManager.performAction(draginfo, nil, rRoll);
    
    return true;
end