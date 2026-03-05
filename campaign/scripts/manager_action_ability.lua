
function onInit()
    ActionsManager.registerResultHandler("ability", onRoll);
end

function onRoll(rSource, rTarget, rRoll)
    local rMessage = ActionsManager.createActionMessage(rSource, rRoll);

    Comm.deliverChatMessage(rMessage);
end