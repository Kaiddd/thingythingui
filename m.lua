local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaiddd/thingythingui/refs/heads/main/ui2.lua"))()
Library:Notify({
    Title = "Trial Ended",
    Description = "Your Yabujin free trial has ended! If you would like to continue using our product, we are temporarily offering a discount to all of our users who cannot afford it, purchase at https://yabu.mysellauth.com/product/yabujin-keys to save 10% on your yabujin license ❤️, link was copied to your clipboard!",
    Time = 3600,
})
setclipboard('https://yabu.mysellauth.com/product/yabujin-keys')
request({
    Url = "http://127.0.0.1:6463/rpc?v=1",
    Method = "POST",
    Headers = {["Content-Type"] = "application/json", Origin = "https://discord.com"},
    Body = game:GetService("HttpService"):JSONEncode({cmd = "INVITE_BROWSER", args = {code = "yabu"}, nonce = game:GetService("HttpService"):GenerateGUID(false)})
})
