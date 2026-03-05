
function onInit()
    -- Check if textLabel child xml element is defined
    if textlabel and textlabel[1] then
        label_name.setValue(textlabel[1]);
    end
end