for temp, connection in pairs(data.raw["space-connection"]) do
    -- aquilo routes
    if connection.to == "aquilo" then
        connection.length = math.floor(
            connection.length
            * settings.startup["planet-distances-outer-multiplier"].value
        )
    elseif connection.to == "solar-system-edge" then
        -- aquilo to edge
        connection.length = math.floor(
            connection.length
            * settings.startup["planet-distances-edge-multiplier"].value
        )
    elseif connection.to ~= "shattered-planet" then
        -- inner planets
        connection.length = math.floor(
            connection.length
            * settings.startup["planet-distances-inner-multiplier"].value
        )
    end
end

