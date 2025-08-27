local addonName = "PrismaticTurtle"

-- Color patterns
local colorPatterns = {
    black = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for black pattern")
            return ""
        end
        local colorHex = string.format("|cff%02x%02x%02x", 0.2 * 255, 0.2 * 255, 0.2 * 255)
        return colorHex .. msg .. "|r"
    end,
    blue = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for blue pattern")
            return ""
        end
        local colorHex = string.format("|cff%02x%02x%02x", 0.3 * 255, 0.3 * 255, 1 * 255)
        return colorHex .. msg .. "|r"
    end,
    red = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for red pattern")
            return ""
        end
        local colorHex = string.format("|cff%02x%02x%02x", 1 * 255, 0 * 255, 0 * 255)
        return colorHex .. msg .. "|r"
    end,
    green = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for green pattern")
            return ""
        end
        local colorHex = string.format("|cff%02x%02x%02x", 0 * 255, 1 * 255, 0 * 255)
        return colorHex .. msg .. "|r"
    end,
    purple = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for purple pattern")
            return ""
        end
        local colorHex = string.format("|cff%02x%02x%02x", 0.5 * 255, 0 * 255, 1 * 255)
        return colorHex .. msg .. "|r"
    end,
    orange = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for orange pattern")
            return ""
        end
        local colorHex = string.format("|cff%02x%02x%02x", 1 * 255, 0.5 * 255, 0 * 255)
        return colorHex .. msg .. "|r"
    end,
    yellow = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for yellow pattern")
            return ""
        end
        local colorHex = string.format("|cff%02x%02x%02x", 1 * 255, 1 * 255, 0 * 255)
        return colorHex .. msg .. "|r"
    end,
    nature = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for nature pattern")
            return ""
        end
        local earthyTones = {
            {0.13, 0.55, 0.13}, -- Forest Green
            {0.33, 0.42, 0.18}, -- Olive Green
            {0.36, 0.25, 0.20}, -- Dark Brown
            {0.82, 0.71, 0.55}, -- Tan
            {0.80, 0.52, 0.25}  -- Muted Ochre
        }
        local words = {}
        local start = 1
        while start <= string.len(msg) do
            local s, e = string.find(msg, "%S+", start)
            if not s then break end
            table.insert(words, string.sub(msg, s, e))
            start = e + 1
        end
        local coloredWords = {}
        local colorIndex = 1
        for _, word in ipairs(words) do
            local color = earthyTones[colorIndex]
            local colorHex = string.format("|cff%02x%02x%02x", color[1] * 255, color[2] * 255, color[3] * 255)
            table.insert(coloredWords, colorHex .. word .. "|r")
            if colorIndex >= 5 then
                colorIndex = 1
            else
                colorIndex = colorIndex + 1
            end
        end
        return table.concat(coloredWords, " ")
    end,
    fire = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for fire pattern")
            return ""
        end
        local fireTones = {
            {1.0, 0.0, 0.0}, -- Red
            {1.0, 0.5, 0.0}, -- Orange
            {1.0, 0.7, 0.0}, -- Light Orange
            {0.8, 0.2, 0.0}, -- Dark Red
            {1.0, 0.3, 0.1}  -- Crimson
        }
        local words = {}
        local start = 1
        while start <= string.len(msg) do
            local s, e = string.find(msg, "%S+", start)
            if not s then break end
            table.insert(words, string.sub(msg, s, e))
            start = e + 1
        end
        local coloredWords = {}
        local colorIndex = 1
        for _, word in ipairs(words) do
            local color = fireTones[colorIndex]
            local colorHex = string.format("|cff%02x%02x%02x", color[1] * 255, color[2] * 255, color[3] * 255)
            table.insert(coloredWords, colorHex .. word .. "|r")
            if colorIndex >= 5 then
                colorIndex = 1
            else
                colorIndex = colorIndex + 1
            end
        end
        return table.concat(coloredWords, " ")
    end,
    ice = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for ice pattern")
            return ""
        end
        local iceTones = {
            {0.0, 0.5, 1.0}, -- Light Blue
            {0.0, 0.8, 1.0}, -- Cyan
            {0.6, 0.8, 1.0}, -- Pale Blue
            {0.0, 0.0, 0.8}, -- Deep Blue
            {1.0, 1.0, 1.0}  -- White
        }
        local words = {}
        local start = 1
        while start <= string.len(msg) do
            local s, e = string.find(msg, "%S+", start)
            if not s then break end
            table.insert(words, string.sub(msg, s, e))
            start = e + 1
        end
        local coloredWords = {}
        local colorIndex = 1
        for _, word in ipairs(words) do
            local color = iceTones[colorIndex]
            local colorHex = string.format("|cff%02x%02x%02x", color[1] * 255, color[2] * 255, color[3] * 255)
            table.insert(coloredWords, colorHex .. word .. "|r")
            if colorIndex >= 5 then
                colorIndex = 1
            else
                colorIndex = colorIndex + 1
            end
        end
        return table.concat(coloredWords, " ")
    end,
    shadow = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for shadow pattern")
            return ""
        end
        local shadowTones = {
            {0.5, 0.0, 0.5}, -- Purple
            {0.2, 0.0, 0.2}, -- Dark Purple
            {0.0, 0.0, 0.0}, -- Black
            {0.3, 0.3, 0.3}, -- Dark Gray
            {0.4, 0.0, 0.6}  -- Violet
        }
        local words = {}
        local start = 1
        while start <= string.len(msg) do
            local s, e = string.find(msg, "%S+", start)
            if not s then break end
            table.insert(words, string.sub(msg, s, e))
            start = e + 1
        end
        local coloredWords = {}
        local colorIndex = 1
        for _, word in ipairs(words) do
            local color = shadowTones[colorIndex]
            local colorHex = string.format("|cff%02x%02x%02x", color[1] * 255, color[2] * 255, color[3] * 255)
            table.insert(coloredWords, colorHex .. word .. "|r")
            if colorIndex >= 5 then
                colorIndex = 1
            else
                colorIndex = colorIndex + 1
            end
        end
        return table.concat(coloredWords, " ")
    end,
    rainbow = function(msg)
        if not msg or type(msg) ~= "string" then
            print("PrismaticTurtle: Error: Invalid message for rainbow pattern")
            return ""
        end
        local colored = ""
        local len = string.len(msg)
        local i = 1
        while i <= len do
            local char = string.sub(msg, i, i)
            local hue = ((i - 1) / len) * 360
            local r, g, b = HSVtoRGB(hue, 1, 1)
            local colorHex = string.format("|cff%02x%02x%02x", r * 255, g * 255, b * 255)
            colored = colored .. colorHex .. char .. "|r"
            i = i + 1
        end
        return colored
    end
}

-- HSV to RGB conversion for rainbow effect
function HSVtoRGB(h, s, v)
    local r, g, b
    local i = math.floor(h / 60)
    local f = (h / 60) - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)
    if i == 0 then return v, t, p
    elseif i == 1 then return q, v, p
    elseif i == 2 then return p, v, t
    elseif i == 3 then return p, q, v
    elseif i == 4 then return t, p, v
    elseif i == 5 then return v, p, q
    end
end

-- Check if message contains item links
local function HasItemLink(msg)
    local hasLink = string.find(msg, "|", 1, true) ~= nil
    if hasLink then
        print("PrismaticTurtle: I can't color text and send an item link at same time. Text will be sent uncolored.")
    end
    return hasLink
end

-- Valid chat types for validation
local validChatTypes = {
    ["say"] = "SAY",
    ["yell"] = "YELL",
    ["party"] = "PARTY",
    ["raid"] = "RAID",
    ["guild"] = "GUILD",
    ["whisper"] = "WHISPER",
    ["channel"] = "CHANNEL",
    ["emote"] = "EMOTE"
}

-- Common handler for all slash commands
local function HandleChatCommand(input, pattern)
    -- Check for nil or empty input
    if not input or input == "" then
        print("PrismaticTurtle: Usage: /" .. pattern .. " <channel> <target> <message> for whisper, or /" .. pattern .. " <channel> <message> (e.g., /" .. pattern .. " whisper Friendname message, /" .. pattern .. " say message)")
        return
    end

    -- Ensure input is a string
    if type(input) ~= "string" then
        print("PrismaticTurtle: Error: Input is not a string, got " .. type(input))
        return
    end

    -- Parse input for channel and message
    local channel, message = string.match(input, "^(%S+)%s+(.+)$")
    if not channel or not message then
        print("PrismaticTurtle: Error: Invalid format. Use /" .. pattern .. " <channel> <target> <message> for whisper, or /" .. pattern .. " <channel> <message>")
        return
    end

    -- Convert channel to lowercase for consistency
    channel = string.lower(channel)

    -- Determine chat type and channel number (if applicable)
    local chatType, channelNum
    if validChatTypes[channel] then
        chatType = validChatTypes[channel]
    elseif tonumber(channel) then
        chatType = "CHANNEL"
        channelNum = tonumber(channel)
    else
        print("PrismaticTurtle: Error: Invalid channel. Use say, yell, party, raid, guild, whisper, emote, or a channel number (e.g., 6).")
        return
    end

    if not message or message == "" then
        print("PrismaticTurtle: Error: No message provided")
        return
    end

    -- Handle whisper separately
    local target, finalMessage
    if chatType == "WHISPER" then
        target, finalMessage = string.match(message, "^(%S+)%s+(.+)$")
        if not target or not finalMessage then
            print("PrismaticTurtle: Error: Invalid whisper format. Use /" .. pattern .. " whisper <target> <message>")
            return
        end
    else
        finalMessage = message
    end

    -- Color the message or send uncolored if item link is present
    local coloredMsg
    if HasItemLink(finalMessage) then
        coloredMsg = finalMessage
    else
        coloredMsg = colorPatterns[pattern](finalMessage)
        if coloredMsg == "" then
            print("PrismaticTurtle: Error: Failed to color message for pattern " .. pattern)
            return
        end
    end

    -- Send the message with error handling
    local success, errorMsg = pcall(function()
        if chatType == "CHANNEL" and channelNum then
            ChatThrottleLib:SendChatMessage("NORMAL", "PrismaticTurtle", coloredMsg, chatType, nil, channelNum)
        elseif chatType == "WHISPER" then
            ChatThrottleLib:SendChatMessage("NORMAL", "PrismaticTurtle", coloredMsg, chatType, nil, target)
        else
            ChatThrottleLib:SendChatMessage("NORMAL", "PrismaticTurtle", coloredMsg, chatType)
        end
    end)

    if not success then
        print("PrismaticTurtle: Warning: Failed to send message: " .. tostring(errorMsg))
    end
end

-- Register slash commands
SLASH_RAINBOW1 = "/rainbow"
SlashCmdList["RAINBOW"] = function(input) HandleChatCommand(input, "rainbow") end

SLASH_BLACK1 = "/black"
SlashCmdList["BLACK"] = function(input) HandleChatCommand(input, "black") end

SLASH_BLUE1 = "/blue"
SlashCmdList["BLUE"] = function(input) HandleChatCommand(input, "blue") end

SLASH_RED1 = "/red"
SlashCmdList["RED"] = function(input) HandleChatCommand(input, "red") end

SLASH_GREEN1 = "/green"
SlashCmdList["GREEN"] = function(input) HandleChatCommand(input, "green") end

SLASH_PURPLE1 = "/purple"
SlashCmdList["PURPLE"] = function(input) HandleChatCommand(input, "purple") end

SLASH_ORANGE1 = "/orange"
SlashCmdList["ORANGE"] = function(input) HandleChatCommand(input, "orange") end

SLASH_YELLOW1 = "/yellow"
SlashCmdList["YELLOW"] = function(input) HandleChatCommand(input, "yellow") end

SLASH_NATURE1 = "/nature"
SlashCmdList["NATURE"] = function(input) HandleChatCommand(input, "nature") end

SLASH_FIRE1 = "/fire"
SlashCmdList["FIRE"] = function(input) HandleChatCommand(input, "fire") end

SLASH_ICE1 = "/ice"
SlashCmdList["ICE"] = function(input) HandleChatCommand(input, "ice") end

SLASH_SHADOW1 = "/shadow"
SlashCmdList["SHADOW"] = function(input) HandleChatCommand(input, "shadow") end

-- Confirm addon loading
DEFAULT_CHAT_FRAME:AddMessage("|cffFF0000P|cffFF7F00r|cffFFFF00i|cff00FF00s|cff0033CCm|cff6B33a2a|cff8B00FFt|cffFF00FFi|cffFF0000c|cffFF7F00 |cffFFFF00T|cff00FF00u|cff0033CCr|cff4B2282t|cff8B00FFl|cffFF00FFe|r loaded.")
DEFAULT_CHAT_FRAME:AddMessage("Commands: /rainbow, /black, /blue, /red, /green, /purple, /orange, /yellow, /nature, /fire, /ice, /shadow <channel> <target> <message> for whisper, or <channel number> <message>.  E.g.  /rainbow say hello")