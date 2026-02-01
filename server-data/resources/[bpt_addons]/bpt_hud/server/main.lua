---@diagnostic disable: lowercase-global, undefined-global
---@diagnostic disable: need-check-nil
if Config.vRP then
    vRP = Proxy.getInterface("vRP")
    vRPclient = Tunnel.getInterface("vRP", "vRP")

    RegisterNetEvent("vrp_version:bpt_hud:GetStatus")
    AddEventHandler("vrp_version:bpt_hud:GetStatus", function()
        local user_id = vRP.getUserId({ source })
        TriggerClientEvent("vrp_version:bpt_hud:GetStatus:return", source, {
            thirst = vRP.getThirst({ user_id }),
            hunger = vRP.getHunger({ user_id }),
            money = vRP.getMoney({ user_id }),
            bank = vRP.getBankMoney({ user_id }),
            job = vRP.getUserGroupByType({ user_id, "job" }),
        })
    end)
end
