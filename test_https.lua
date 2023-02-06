local ltn12 = require 'ltn12'
local https = require 'ssl.https'

local resp = {}
local r, c, h, s = https.request {
    url = "https://www.google.com",
    sink = ltn12.sink.table(resp)
}

print(r, c, h, s)
print(table.concat(resp))

-- for k, v in pairs(h) do
--     print(k, v)
-- end
