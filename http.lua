local httpService = game:GetService('HttpService')
local successful, result = pcall(httpService.GetAsync, httpService, 'https://google.com')
if successful then
    print(“HTTP Success”)
elseif result:lower():find('http requests are not enabled') then
    warn(“HTTP Fail - Try enabling them?”)
else
    warn(“Invalid HTTP request: ”.. result)
end
