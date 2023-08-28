

CreateThread(function()
    RSGCore = exports[Config.CoreFolderName]:GetCoreObject()

    for k, v in pairs(Config.Books) do
        RSGCore.Functions.CreateUseableItem(k, function(source, item)
            TriggerClientEvent("rms-books:client:OpenBook", source, k, item)
        end)
    end
end)
