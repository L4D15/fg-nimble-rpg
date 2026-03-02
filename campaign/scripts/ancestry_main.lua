
function onInit()
    -- Refresh as soon as the window is opened
    update();
end

function update()
    -- Check if the record is editable or not
    local bReadOnly = WindowManager.getReadOnlyState(getDatabaseNode());
    
    -- Apply the same editable state to all fields
    size.setReadOnly(bReadOnly);
    description.setReadOnly(bReadOnly);
end