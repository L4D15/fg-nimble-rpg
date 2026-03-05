local wLabel = nil;

function onInit()
    if super and super.onInit then super.onInit(); end

    wLabel = addTextWidget("reference-b", "");

    wLabel.setPosition("bottom", 0, -5);

    wLabel.setColor("555555");
    
    if labelres and labelres[1] then
        wLabel.setText(Interface.getString(labelres[1]));
    elseif label then
        wLabel.setText(label[1]);
    end
end

function onDoubleClick(x, y)
    return performRoll();
end

function onDragStart(button, x, y, draginfo)
    return performRoll(draginfo);
end

function performRoll(draginfo)
    local nMod = getValue();
    local sStatName = "";
    
    if labelres and labelres[1] then
        sStatName = Interface.getString(labelres[1]);
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