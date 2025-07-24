-- ReplicatedStorage/Configuration/LocalizationConfig.luau
-- Text keys & supported languages

local LocalizationConfig = {
    DefaultLanguage = "en",
    SupportedLanguages = {"en", "es", "de", "fr"},
    TextKeys = {
        EnterPrompt   = "VEHICLE_ENTER",
        ExitPrompt    = "VEHICLE_EXIT",
        OutOfFuel     = "VEHICLE_NO_FUEL",
        Repaired      = "VEHICLE_REPAIRED",
    },
    LookupModule = "Localization",  -- your ModuleScript that returns translations
}

return LocalizationConfig
