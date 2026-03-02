function onInit()
    update()
end

function update()
    -- Preguntamos si el candado principal está cerrado
    local bReadOnly = WindowManager.getReadOnlyState(getDatabaseNode())
    
    -- Bloqueamos los campos de esta pestaña
    base_hp.setReadOnly(bReadOnly)
    description.setReadOnly(bReadOnly)
end