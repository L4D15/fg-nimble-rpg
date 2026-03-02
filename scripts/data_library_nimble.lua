
function onInit()
    local aRecord = {
        bExport = true,
        sEditMode = "play",
        aDataMap = { "ancestry", "reference.ancestry" },
        sRecordDisplayClass = "reference_ancestry",
    }
    
    LibraryData.setRecordTypeInfo("ancestry", aRecord)
end