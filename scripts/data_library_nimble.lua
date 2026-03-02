
function onInit()
    local aRecord = {
        bExport = true,
        sEditMode = "play",
        aDataMap = { "ancestry", "reference.ancestry" },
        sRecordDisplayClass = "reference_ancestry",
    }

    local classRecord = {
        bExport = true,
        sEditMode = "play",
        aDataMap = { "class", "reference.class" },
        sRecordDisplayClass = "reference_class",
    }
    
    LibraryData.setRecordTypeInfo("ancestry", aRecord)
    LibraryData.setRecordTypeInfo("class", classRecord)
end