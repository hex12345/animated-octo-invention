return function(KEY)
    local http = request or syn.request
    local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
    local API_URL = "https://express-js-on-vercel-lilac-eight-15.vercel.app/api/payload"
    
    print("🔐 are you really real?")
    
    local res = http({
        Url = API_URL .. "?key=" .. KEY .. "&hwid=" .. HWID,
        Method = "GET",
        Headers = {
            ["X-Executor"] = "authorized",
            ["User-Agent"] = "RobloxExecutor/1.0"
        }
    })
    
    if res.StatusCode ~= 200 then
        error("Auth failed: " .. res.StatusCode .. " | " .. tostring(res.Body))
    end
    
    print("ahh ok fineeee")
    print("LA BUBU!!!!")
    
    loadstring(res.Body)()
end
