ESX = exports["es_extended"]:getSharedObject()

local xPlayer = ESX.GetPlayerFromId(source)
Target = exports.ox_target

local function ErrorNotify()
    lib.notify({
        title = 'MOONLIGHT - SIGNS ROBBERY',
        description = 'Something went wrong!',
        type = 'error'
    end
})

RegisterNetEvent('ml-signs:stealing')
    if lib.progressBar({
        duration = 7500,
        label = 'Stealing road sign...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 'amb@prop_human_bum_bin@base',
            clip = 'base'
        },
        prop = {
            model = `gr_prop_gr_drill_01a`,
            pos = vec3(0.03, 0.03, 0.02),
            rot = vec3(0.0, 0.0, -1.5)
        },
    }) then 
        TriggerServerEvent('ml-signs:stealed')
    else
        ErrorNotify()
    end

RegisterCommand("mltest", function(source, args, rawCommand))
   if TriggerServerEvent('ml-signs:melted') then print("working")
else
    ErrorNotify()
end, false

Target:addBoxZone({
    coords = vec3(386.0554, -1569.5293, 30.9231),
    size = vec3(2,2,2),
    rotation = 90,
    options = {
        {
            name = 'steal_sign',
            icon = 'fas fa-wrench',
            label = 'Steal sign',
            distance = 5.25,
            event = 'ml-signs:stealing'
        }
    }
})

Target:addModel(Config.Signs, {
    {
        name = 'steal_sign',
        icon = 'fas fa-wrench',
        label = 'Steal sign',
        distance = 5.25,
        items = 'drill',
        event = 'ml-signs:stealing'
    }
})